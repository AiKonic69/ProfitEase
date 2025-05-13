<?php
session_start();
$conn = new mysqli("localhost", "root", "", "profitease");
$documents = $conn->query("SELECT * FROM documents ORDER BY created_at DESC");

?>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <title>Dashboard - ProfitEase</title>
  <link rel="stylesheet" href="../Login-Register/asset/dashboardstyle.css">
</head>
<body>
<?php if (isset($_GET['msg']) && $_GET['msg'] == 'deleted'): ?>
  <div style="background-color: #27ae60; color: white; padding: 10px; text-align: center;">
    ✅ Document deleted successfully.
  </div>
<?php endif; ?>
<div class="background">
    <nav>
      <div class="nav-logo">ProfitEase</div>
      <div class="nav-links">
        <a href="../Login-Register/login.php">Logout</a>
      </div>
    </nav>
        <div class="overlay"></div>
         <div class="landing-content">

            <h1>Welcome to Dashboard</h1>
            <h2>Your Documents</h2>
        </div>

  <!-- Formula Section -->
  <section class="about-section">
    

      <div class="tiles">
    <div class="tile" onclick="window.location.href='../com/transaction.php'" style="cursor:pointer;">
      <img src="https://img.icons8.com/ios-filled/50/document.png" alt="createnew.php">
      <h3>Transaction</h3>
    </div>

    <div class="tiles">
    <div class="tile" onclick="window.location.href='formula.php'" style="cursor:pointer;">
      <img src="https://img.icons8.com/ios-filled/50/calculator.png" alt="fomula.php">
      <h3>Formula</h3>
    </div>
    </div>

  </section>

    <footer style="text-align:center; padding:20px; color:white;">
    &copy; <?php echo date("Y"); ?> ProfitEase. All rights reserved.
  </footer>
</body>
</html>
