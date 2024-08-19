<?php
                        require_once '../../../../db.php';

                        if ($_SERVER["REQUEST_METHOD"] == "POST") {
                            $name = $_POST['name'];
                            $email = $_POST['email'];
                            $password = $_POST['password'];

                            $sql = "SELECT * FROM users WHERE email=?";
                            $stmt = $conn->prepare($sql);
                            $stmt->bind_param("s", $email);
                            $stmt->execute();
                            $result = $stmt->get_result();

                            if ($result->num_rows > 0) {

                            } else {
                                $hashed_password = password_hash($password, PASSWORD_BCRYPT);

                                $sql = "INSERT INTO users (name, email, password) VALUES (?, ?, ?)";
                                $stmt = $conn->prepare($sql);
                                $stmt->bind_param("sss", $name, $email, $hashed_password);

                                if ($stmt->execute()) {
                                } else {
                                }
                            }
                            $stmt->close();
                        }
                        $conn->close();
                        ?>