<?php
require_once '../../../../db.php';

function processLogin($conn) {
    if ($_SERVER["REQUEST_METHOD"] == "POST") {
        $email = $_POST['email'];
        $password = $_POST['password'];

        $sql = "SELECT * FROM users WHERE email=?";
        $stmt = $conn->prepare($sql);
        $stmt->bind_param("s", $email);
        $stmt->execute();
        $result = $stmt->get_result();

        if ($result->num_rows > 0) {
            $user = $result->fetch_assoc();

            if (password_verify($password, $user['password'])) {
                header("Location: dashboard.html");
                exit;
            } else {
                return '<div class="alert alert-danger">Invalid password.</div>';
            }
        } else {
            return '<div class="alert alert-danger">No account found with this email.</div>';
        }

        $stmt->close();
    }
}
?>