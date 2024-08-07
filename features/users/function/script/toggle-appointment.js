document.getElementById("toggleViewBtn").addEventListener("click", function () {
    var appointmentSection = document.getElementById("appointmentSection");
    var bookedHistorySection = document.getElementById("bookedHistorySection");
    var toggleViewBtn = document.getElementById("toggleViewBtn");

    if (appointmentSection.style.display === "none") {
        appointmentSection.style.display = "block";
        bookedHistorySection.style.display = "none";
        toggleViewBtn.textContent = "My Appointment";
    } else {
        appointmentSection.style.display = "none";
        bookedHistorySection.style.display = "block";
        toggleViewBtn.textContent = "Show Calendar";
    }
});
