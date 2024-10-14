<?php
include '../../../../db.php';

$sql = "SELECT owner_name, service_category, contact_num, email, barangay, pet_type, breed, age, service, payment, appointment_time, appointment_date, latitude, longitude FROM appointment";
$result = $conn->query($sql);

if (!$result) {
    echo "Error: " . $conn->error;
} else {
    if ($result->num_rows > 0) {
        $count = 1;
        while ($row = $result->fetch_assoc()) {
            $id = $count++;
            echo "<tr>";
            echo "<td>$id</td>";
            echo "<td>" . htmlspecialchars($row['owner_name']) . "</td>";
            echo "<td>" . htmlspecialchars($row['service_category']) . "</td>";
            echo "<td><button class='btn btn-info btn-sm' data-toggle='modal' data-target='#detailsModal' data-id='$id' data-owner='" . htmlspecialchars($row['owner_name']) . "' data-contact='" . htmlspecialchars($row['contact_num']) . "' data-email='" . htmlspecialchars($row['email']) . "' data-barangay='" . htmlspecialchars($row['barangay']) . "' data-pettype='" . htmlspecialchars($row['pet_type']) . "' data-breed='" . htmlspecialchars($row['breed']) . "' data-age='" . htmlspecialchars($row['age']) . "' data-service='" . htmlspecialchars($row['service']) . "' data-totalpayment='" . htmlspecialchars($row['payment']) . "' data-appointmenttime='" . htmlspecialchars($row['appointment_time']) . "' data-appointmentdate='" . htmlspecialchars($row['appointment_date']) . "' data-lat='" . htmlspecialchars($row['latitude']) . "' data-lng='" . htmlspecialchars($row['longitude']) . "'>View Details</button></td>";
            echo "</tr>";
        }
    } else {
        echo "<tr><td colspan='5'>No appointments found</td></tr>"; // Adjust colspan to 5 for the new column
    }
    $result->free();
}
?>
