

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>User Account | Admin</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="../../css/app-req.css">
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.bundle.min.js"></script>

</head>

<body>
    <!--Navigation Links-->
    <div class="navbar flex-column bg-white shadow-sm p-3 collapse d-md-flex" id="navbar">
        <div class="navbar-links">
            <a class="navbar-brand d-none d-md-block logo-container" href="#">
                <img src="../../../../assets/img/logo.png">
            </a>
            <a href="admin.html">
                <i class="fa-solid fa-gauge"></i>
                <span>Dashboard</span>
            </a>
            <a href="#appointment" class="navbar-highlight">
                <i class="fa-regular fa-calendar-check"></i>
                <span>User Accounts</span>
            </a>
            <a href="app-records.html">
                <i class="fa-regular fa-calendar-check"></i>
                <span>Patients Records</span>
            </a>
            <a href="app-records-list.html">
                <i class="fa-regular fa-calendar-check"></i>
                <span>Record Lists</span>
            </a>
            <a href="pos.html">
                <i class="fas fa-cash-register"></i>
                <span>Point of Sales</span>
            </a>
            <a href="transaction.html">
                <i class="fas fa-exchange-alt"></i>
                <span>Transaction</span>
            </a>
            
            <div class="maintenance">
                <p class="maintenance-text">Maintenance</p>
                <a href="category-list.html">
                    <i class="fa-solid fa-list"></i>
                    <span>Category List</span>
                </a>
                <a href="service-list.html">
                    <i class="fa-solid fa-layer-group"></i>
                    <span>Service List</span>
                </a>
                <a href="admin-user.html">
                    <i class="fa-solid fa-user-tie"></i>
                    <span>Admin User List</span>
                </a>
                <a href="settings.html">
                    <i class="fas fa-cog"></i>
                    <span>Settings</span>
                </a>
            </div>
        </div>
    </div>
        <!--Navigation Links End-->
    <div class="content flex-grow-1">
        <div class="header">
            <button class="navbar-toggler d-block d-md-none" type="button" onclick="toggleMenu()">
                <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24"
                    style="stroke: black; fill: none;">
                    <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M4 6h16M4 12h16m-7 6h7">
                    </path>
                </svg>
            </button>
            <!--Notification and Profile Admin-->
            <div class="profile-admin">
                <div class="dropdown">
                    <button class="" type="button" id="notificationDropdown" data-bs-toggle="dropdown" aria-expanded="false">
                        <i class="fas fa-bell"></i>
                    </button>
                    <ul class="dropdown-menu dropdown-menu-end" aria-labelledby="notificationDropdown">
                        <li class="dropdown-header">
                            <h5 class=" mb-0">Notification</h5>
                        </li>
                        <li class="dropdown-item">
                            <div class="alert alert-primary mb-0">
                                <strong>Successfully Booked!</strong>
                                <p>Rachel booked an appointment! <a href="#" class="alert-link">Check it now!</a></p>                               
                            </div>
                        </li>
                        <li class="dropdown-item">
                            <div class="alert alert-danger mb-0">
                                <strong>Decline</strong>
                                <p>Admin Kim declined Jana's appointment.<a href="#" class="alert-link">See here.</a></p> 
                            </div>
                        </li>
                        <li class="dropdown-item">
                            <div class="alert alert-success mb-0">
                                <strong>Paid!</strong>
                                <p>James paid the bill.</p> 
                            </div>
                        </li>
                        <li class="dropdown-item">
                            <div class="alert alert-primary mb-0">
                                <strong>Successfully Booked!</strong>
                                <p>Rachel booked an appointment! <a href="#" class="alert-link">Check it now!</a></p>                               
                            </div>
                        </li>
                       
                    </ul>
                </div>
                <div class="dropdown">
                    <button class="" type="button" data-bs-toggle="dropdown" aria-expanded="false">
                        <img src="../../../../assets/img/vet logo.jpg" style="width: 40px; height: 40px; object-fit: cover;">
                    </button>
                    <ul class="dropdown-menu" style="background-color: transparent;">
                        <li><a class="dropdown-item" href="../../../users/web/api/login.html">Logout</a></li>
                    </ul>
                </div>
            </div>
        </div>
        <!--Notification and Profile Admin-->
        <div class="app-req">
            <h3>User Accounts</h3>
            <div class="walk-in px-lg-5">
                <div class="mb-3 x d-flex">
                    <div class="search">
                        <div class="search-bars">
                            <i class="fa fa-magnifying-glass"></i>
                            <input type="text" class="form-control" placeholder="Search...">
                        </div>
                    </div>
                  
                </div>
            </div>
            <div class="table-wrapper px-lg-5">
                <table class="table table-hover table-remove-borders">
                    <thead class="thead-light">
                    <tr>
                        <th>#</th>
                        <th>Name</th>
                        <th>Service Category</th>
                        <th>Details</th>
                    </tr>
                    </thead>
                    <tbody id="tableBody">
                        
                        <?php 
                        include '../../../../db.php';
                        include '../../function/php/apt-req.php'
                          ?>
                                     
                    </tbody>
                </table>
            <!--Appointment Request Table End-->

            
            <div class="modal fade" id="detailsModal" tabindex="-1" role="dialog" aria-labelledby="detailsModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="detailsModalLabel">Appointment Details</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <p><strong>Name:</strong> <span id="modalOwnerName"></span></p>
                <p><strong>Contact Number:</strong> <span id="modalContactNum"></span></p>
                <p><strong>Email:</strong> <span id="modalEmail"></span></p>
                <p><strong>Barangay:</strong> <span id="modalBarangay"></span></p>
                <p><strong>Pet Type:</strong> <span id="modalPetType"></span></p>
                <p><strong>Breed:</strong> <span id="modalBreed"></span></p>
                <p><strong>Age:</strong> <span id="modalAge"></span></p>
                <p><strong>Service:</strong> <span id="modalService"></span></p>
                <p><strong>Total Payment:</strong> <span id="modalTotalPayment"></span></p>
                <p><strong>Appointment Time:</strong> <span id="modalAppointmentTime"></span></p>
                <p><strong>Appointment Date:</strong> <span id="modalAppointmentDate"></span></p>
                <!-- Google Map -->
                <div id="modalMap" style="height: 400px; width: 100%;"></div>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
            </div>
        </div>
    </div>
</div>
                
            </div>
            <ul class="pagination justify-content-end mt-3 px-lg-5" id="paginationControls">
                <li class="page-item">
                    <a class="page-link" href="#" data-page="prev"><</a>
                </li>
                <li class="page-item" id="pageNumbers"></li>
                <li class="page-item">
                    <a class="page-link" href="#" data-page="next">></a>
                </li>
            </ul>
        </div>
             </div>
</body>

<script>
$(document).ready(function() {
    $('#detailsModal').on('show.bs.modal', function (event) {
        var button = $(event.relatedTarget);
        var ownerName = button.data('owner');
        var contactNum = button.data('contact');
        var email = button.data('email');
        var barangay = button.data('barangay');
        var petType = button.data('pettype');
        var breed = button.data('breed');
        var age = button.data('age');
        var service = button.data('service'); // Ensure this line is present
        var totalPayment = button.data('totalpayment');
        var appointmentTime = button.data('appointmenttime');
        var appointmentDate = button.data('appointmentdate');
        var lat = parseFloat(button.data('lat')); // Latitude
        var lng = parseFloat(button.data('lng')); // Longitude

        var modal = $(this);
        modal.find('#modalOwnerName').text(ownerName);
        modal.find('#modalContactNum').text(contactNum);
        modal.find('#modalEmail').text(email);
        modal.find('#modalBarangay').text(barangay);
        modal.find('#modalPetType').text(petType);
        modal.find('#modalBreed').text(breed);
        modal.find('#modalAge').text(age);
        modal.find('#modalService').text(service); // Ensure this line is present
        modal.find('#modalTotalPayment').text(totalPayment);
        modal.find('#modalAppointmentTime').text(appointmentTime);
        modal.find('#modalAppointmentDate').text(appointmentDate);

        // Initialize and display Google Map
        var mapOptions = {
            center: new google.maps.LatLng(lat, lng),
            zoom: 20,
            mapTypeId: google.maps.MapTypeId.ROADMAP
        };
        var map = new google.maps.Map(document.getElementById('modalMap'), mapOptions);
        var marker = new google.maps.Marker({
            position: new google.maps.LatLng(lat, lng),
            map: map,
            title: ownerName
        });
    });
});
</script>

<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyDmgygVeipMUsrtGeZPZ9UzXRmcVdheIqw&libraries=places"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.3/dist/umd/popper.min.js" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.min.js" crossorigin="anonymous"></script>
<script src="../../function/script/toggle-menu.js"></script>
<script src="../../function/script/pagination.js"></script>
<script src="../../function/script/drop-down.js"></script>
<script src="https://cdn.jsdelivr.net/npm/chart.js"></script>

</html>