<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>Welcome to ProfitEase</title>
  <link rel="stylesheet" href="asset/landingstyle.css">
</head>
<body>

  <!-- Background & Overlay -->
  <div class="background">
    <div class="overlay"></div>

    <!-- Navigation -->
    <nav>
      <div class="nav-logo">ProfitEase</div>
      <div class="nav-links">
        <a href="#">Home</a>
        <a href="#about">About Us</a>
      </div>
    </nav>

    <!-- Landing Content -->
    <div class="landing-content">
      <h1>Welcome to <strong>ProfitEase</strong></h1>
      <p>Track your finances, plan your expenses, and take control of your financial future — all in one place.</p>
      <div class="button-group">
        <a href="../Login-Register/Login.php"><button>Log In</button></a>
        <a href="../Login-Register/signup.php"><button>Get Started</button></a>
      </div>
      <div class="branding">&copy; <?php echo date('Y'); ?> ProfitEase. All rights reserved.</div>
    </div>
  </div>

  <!-- About Us Section -->
  <section class="about-section" id="about">
    <h2>About Us</h2>
    <p>
      ProfitEase is your trusted partner in personal and small business financial management.
      With user-friendly tools and powerful analytics, we help you monitor spending, save smarter, and reach your financial goals.
      Join thousands of users who have taken control of their money with ProfitEase.
    </p>
  </section>

</body>
</html>
