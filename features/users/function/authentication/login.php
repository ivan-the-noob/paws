<?php
session_start(); 

include '../../../../db.php'; 

if ($_SERVER['REQUEST_METHOD'] == 'POST') {
    $email = $_POST['email'];
    $password = $_POST['password'];

    // Prepare and execute the SQL query
    $sql = "SELECT * FROM users WHERE email = ?";
    $stmt = $conn->prepare($sql);
    $stmt->bind_param("s", $email);
    $stmt->execute();
    $result = $stmt->get_result();

    if ($result->num_rows === 1) {
        $user = $result->fetch_assoc();
        
        // Verify the password
        if (password_verify($password, $user['password'])) {
            // Password is correct, check the role
            $_SESSION['email'] = $email;
            if ($user['role'] === 'user') {
                header("Location: ../../../../index.php");
            } else {
                header("Location: ../../../../features/admin/web/api/admin.php");
            }
            exit();
        } else {
            $_SESSION['error'] = "Invalid credentials.";
        }
    } else {
        $_SESSION['error'] = "Invalid credentials.";
    }

    // Close statement and connection
    $stmt->close();
}

$conn->close();
?>
