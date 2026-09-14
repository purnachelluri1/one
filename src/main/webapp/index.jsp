```html
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />

  <title>VasuMart | Modern Online Shopping</title>

  <link rel="preconnect" href="https://fonts.googleapis.com">
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>

  <link
    href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600;700;800&family=Playfair+Display:wght@700&display=swap"
    rel="stylesheet"
  >

  <style>
    * {
      margin: 0;
      padding: 0;
      box-sizing: border-box;
    }

    :root {
      --primary: #111827;
      --accent: #f97316;
      --accent-dark: #ea580c;
      --cream: #fff7ed;
      --light: #f8fafc;
      --border: #e5e7eb;
      --text: #1f2937;
      --muted: #6b7280;
      --white: #ffffff;
      --success: #16a34a;
    }

    html {
      scroll-behavior: smooth;
    }

    body {
      font-family: "Inter", sans-serif;
      background: #ffffff;
      color: var(--text);
      line-height: 1.5;
    }

    a {
      text-decoration: none;
      color: inherit;
    }

    button {
      font-family: inherit;
      cursor: pointer;
    }

    /* =========================
       TOP BAR
    ========================== */

    .top-bar {
      background: var(--primary);
      color: white;
      text-align: center;
      padding: 9px 15px;
      font-size: 13px;
      font-weight: 500;
      letter-spacing: 0.2px;
    }

    /* =========================
       NAVBAR
    ========================== */

    .navbar {
      height: 76px;
      display: flex;
      align-items: center;
      justify-content: space-between;
      padding: 0 6%;
      background: white;
      border-bottom: 1px solid var(--border);
      position: sticky;
      top: 0;
      z-index: 1000;
    }

    .brand {
      display: flex;
      align-items: center;
      gap: 10px;
    }

    .brand-icon {
      width: 42px;
      height: 42px;
      border-radius: 12px;
      background: var(--accent);
      color: white;
      display: flex;
      align-items: center;
      justify-content: center;
      font-size: 21px;
      font-weight: 800;
      box-shadow: 0 7px 18px rgba(249, 115, 22, 0.25);
    }

    .brand-name {
      font-size: 23px;
      font-weight: 800;
      letter-spacing: -0.7px;
    }

    .brand-name span {
      color: var(--accent);
    }

    .nav-links {
      display: flex;
      gap: 28px;
      align-items: center;
    }

    .nav-links a {
      font-size: 14px;
      font-weight: 600;
      color: #4b5563;
      transition: 0.2s;
    }

    .nav-links a:hover {
      color: var(--accent);
    }

    .nav-actions {
      display: flex;
      align-items: center;
      gap: 10px;
    }

    .nav-btn {
      width: 42px;
      height: 42px;
      border: 1px solid var(--border);
      background: white;
      border-radius: 50%;
      display: flex;
      align-items: center;
      justify-content: center;
      font-size: 18px;
      transition: 0.2s;
      position: relative;
    }

    .nav-btn:hover {
      border-color: var(--accent);
      color: var(--accent);
      transform: translateY(-2px);
    }

    .cart-count {
      position: absolute;
      right: -2px;
      top: -3px;
      background: var(--accent);
      color: white;
      width: 18px;
      height: 18px;
      border-radius: 50%;
      font-size: 10px;
      display: flex;
      align-items: center;
      justify-content: center;
      font-weight: 700;
    }

    /* =========================
       HERO
    ========================== */

    .hero {
      background:
        radial-gradient(circle at 80% 20%, rgba(249,115,22,0.13), transparent 30%),
        linear-gradient(135deg, #fff7ed 0%, #ffffff 60%);
      min-height: 570px;
      display: grid;
      grid-template-columns: 1.05fr 0.95fr;
      align-items: center;
      padding: 65px 7%;
      overflow: hidden;
    }

    .hero-content {
      max-width: 620px;
    }

    .eyebrow {
      display: inline-flex;
      align-items: center;
      gap: 7px;
      background: white;
      border: 1px solid #fed7aa;
      color: var(--accent-dark);
      padding: 8px 14px;
      border-radius: 30px;
      font-size: 12px;
      font-weight: 700;
      margin-bottom: 22px;
    }

    .hero h1 {
      font-size: clamp(44px, 5vw, 72px);
      line-height: 1.03;
      letter-spacing: -3px;
      color: #111827;
      margin-bottom: 22px;
    }

    .hero h1 span {
      color: var(--accent);
      font-family: "Playfair Display", serif;
    }

    .hero p {
      max-width: 520px;
      color: var(--muted);
      font-size: 17px;
      margin-bottom: 30px;
    }

    .hero-buttons {
      display: flex;
      gap: 12px;
      flex-wrap: wrap;
    }

    .primary-btn {
      border: none;
      background: var(--accent);
      color: white;
      padding: 14px 23px;
      border-radius: 10px;
      font-size: 14px;
      font-weight: 700;
      transition: 0.2s;
    }

    .primary-btn:hover {
      background: var(--accent-dark);
      transform: translateY(-2px);
      box-shadow: 0 9px 20px rgba(249, 115, 22, 0.2);
    }

    .secondary-btn {
      border: 1px solid var(--border);
      background: white;
      color: var(--primary);
      padding: 14px 23px;
      border-radius: 10px;
      font-size: 14px;
      font-weight: 700;
      transition: 0.2s;
    }

    .secondary-btn:hover {
      border-color: var(--primary);
    }

    .hero-visual {
      position: relative;
      min-height: 410px;
      display: flex;
      align-items: center;
      justify-content: center;
    }

    .hero-card {
      width: 330px;
      height: 390px;
      background: white;
      border-radius: 28px;
      box-shadow: 0 25px 70px rgba(17, 24, 39, 0.13);
      padding: 20px;
      transform: rotate(3deg);
      position: relative;
      z-index: 2;
    }

    .hero-product-image {
      height: 245px;
      border-radius: 20px;
      background: linear-gradient(135deg, #ffedd5, #fed7aa);
      display: flex;
      align-items: center;
      justify-content: center;
      font-size: 105px;
    }

    .hero-product-info {
      padding: 18px 5px;
    }

    .hero-product-info small {
      color: var(--muted);
      font-size: 12px;
    }

    .hero-product-info h3 {
      font-size: 19px;
      margin: 5px 0;
    }

    .hero-price {
      display: flex;
      align-items: center;
      justify-content: space-between;
      margin-top: 10px;
    }

    .hero-price strong {
      font-size: 21px;
    }

    .floating-card {
      position: absolute;
      z-index: 3;
      background: white;
      border: 1px solid var(--border);
      box-shadow: 0 15px 40px rgba(17,24,39,0.1);
      border-radius: 15px;
      padding: 14px 17px;
    }

    .floating-card.one {
      top: 35px;
      right: 10px;
    }

    .floating-card.two {
      bottom: 30px;
      left: 5px;
    }

    .floating-number {
      font-size: 20px;
      font-weight: 800;
      color: var(--accent);
    }

    .floating-text {
      font-size: 11px;
      color: var(--muted);
    }

    /* =========================
       FEATURES
    ========================== */

    .features {
      display: grid;
      grid-template-columns: repeat(4, 1fr);
      border-bottom: 1px solid var(--border);
      border-top: 1px solid var(--border);
    }

    .feature {
      padding: 25px 20px;
      display: flex;
      gap: 13px;
      align-items: center;
      justify-content: center;
      border-right: 1px solid var(--border);
    }

    .feature:last-child {
      border-right: none;
    }

    .feature-icon {
      width: 43px;
      height: 43px;
      background: var(--cream);
      border-radius: 11px;
      display: flex;
      align-items: center;
      justify-content: center;
      font-size: 20px;
    }

    .feature strong {
      font-size: 13px;
      display: block;
    }

    .feature span {
      font-size: 11px;
      color: var(--muted);
    }

    /* =========================
       SECTION
    ========================== */

    .section {
      padding: 75px 7%;
    }

    .section-header {
      display: flex;
      justify-content: space-between;
      align-items: end;
      margin-bottom: 30px;
    }

    .section-title small {
      color: var(--accent);
      text-transform: uppercase;
      font-weight: 800;
      font-size: 11px;
      letter-spacing: 1.5px;
    }

    .section-title h2 {
      font-size: 34px;
      letter-spacing: -1.2px;
      margin-top: 4px;
    }

    .view-all {
      font-size: 13px;
      font-weight: 700;
      color: var(--accent);
    }

    /* =========================
       CATEGORIES
    ========================== */

    .categories {
      display: grid;
      grid-template-columns: repeat(6, 1fr);
      gap: 15px;
    }

    .category {
      background: var(--light);
      border: 1px solid var(--border);
      border-radius: 18px;
      min-height: 150px;
      padding: 20px 10px;
      display: flex;
      flex-direction: column;
      align-items: center;
      justify-content: center;
      transition: 0.25s;
    }

    .category:hover {
      transform: translateY(-5px);
      border-color: #fdba74;
      box-shadow: 0 12px 25px rgba(0,0,0,0.05);
    }

    .category-icon {
      font-size: 42px;
      margin-bottom: 11px;
    }

    .category h4 {
      font-size: 13px;
    }

    .category span {
      color: var(--muted);
      font-size: 10px;
      margin-top: 3px;
    }

    /* =========================
       PRODUCTS
    ========================== */

    .product-grid {
      display: grid;
      grid-template-columns: repeat(4, 1fr);
      gap: 20px;
    }

    .product-card {
      border: 1px solid var(--border);
      border-radius: 18px;
      overflow: hidden;
      background: white;
      transition: 0.25s;
    }

    .product-card:hover {
      transform: translateY(-6px);
      box-shadow: 0 18px 35px rgba(0,0,0,0.08);
    }

    .product-image {
      height: 230px;
      background: #f8fafc;
      display: flex;
      align-items: center;
      justify-content: center;
      font-size: 78px;
      position: relative;
    }

    .discount {
      position: absolute;
      top: 12px;
      left: 12px;
      background: #dcfce7;
      color: #15803d;
      padding: 5px 8px;
      border-radius: 6px;
      font-size: 10px;
      font-weight: 800;
    }

    .wishlist {
      position: absolute;
      right: 12px;
      top: 12px;
      width: 32px;
      height: 32px;
      border-radius: 50%;
      border: none;
      background: white;
      font-size: 15px;
      box-shadow: 0 4px 10px rgba(0,0,0,0.07);
    }

    .product-info {
      padding: 17px;
    }

    .product-category {
      color: var(--muted);
      text-transform: uppercase;
      font-size: 9px;
      font-weight: 700;
      letter-spacing: 1px;
    }

    .product-info h3 {
      font-size: 15px;
      margin: 5px 0 7px;
    }

    .rating {
      font-size: 11px;
      margin-bottom: 13px;
    }

    .rating span {
      color: var(--muted);
      margin-left: 4px;
    }

    .product-bottom {
      display: flex;
      align-items: center;
      justify-content: space-between;
    }

    .price strong {
      font-size: 18px;
    }

    .old-price {
      font-size: 11px;
      color: #9ca3af;
      text-decoration: line-through;
      margin-left: 5px;
    }

    .add-btn {
      border: none;
      background: var(--primary);
      color: white;
      width: 38px;
      height: 38px;
      border-radius: 9px;
      font-size: 19px;
      transition: 0.2s;
    }

    .add-btn:hover {
      background: var(--accent);
      transform: scale(1.05);
    }

    /* =========================
       PROMO
    ========================== */

    .promo {
      margin: 10px 7% 75px;
      border-radius: 25px;
      background: var(--primary);
      color: white;
      padding: 50px 60px;
      display: flex;
      align-items: center;
      justify-content: space-between;
      overflow: hidden;
      position: relative;
    }

    .promo::after {
      content: "";
      position: absolute;
      width: 300px;
      height: 300px;
      border-radius: 50%;
      background: rgba(249,115,22,0.2);
      right: 60px;
      top: -130px;
    }

    .promo small {
      color: #fdba74;
      text-transform: uppercase;
      font-weight: 800;
      letter-spacing: 1.5px;
    }

    .promo h2 {
      font-size: 35px;
      margin: 7px 0;
      position: relative;
      z-index: 2;
    }

    .promo p {
      color: #d1d5db;
      font-size: 14px;
    }

    .promo .primary-btn {
      position: relative;
      z-index: 4;
      white-space: nowrap;
    }

    /* =========================
       NEWSLETTER
    ========================== */

    .newsletter {
      background: var(--cream);
      padding: 70px 7%;
      text-align: center;
    }

    .newsletter h2 {
      font-size: 31px;
      margin-bottom: 9px;
    }

    .newsletter p {
      color: var(--muted);
      font-size: 14px;
      margin-bottom: 22px;
    }

    .newsletter-form {
      max-width: 500px;
      margin: auto;
      display: flex;
      gap: 8px;
      background: white;
      padding: 6px;
      border: 1px solid #fed7aa;
      border-radius: 12px;
    }

    .newsletter-form input {
      flex: 1;
      border: none;
      outline: none;
      padding: 10px 13px;
      font-size: 13px;
    }

    .newsletter-form button {
      border: none;
      background: var(--accent);
      color: white;
      padding: 11px 19px;
      border-radius: 8px;
      font-weight: 700;
      font-size: 12px;
    }

    /* =========================
       FOOTER
    ========================== */

    footer {
      background: #111827;
      color: white;
      padding: 55px 7% 25px;
    }

    .footer-grid {
      display: grid;
      grid-template-columns: 2fr 1fr 1fr 1.4fr;
      gap: 45px;
      padding-bottom: 40px;
      border-bottom: 1px solid #374151;
    }

    .footer-brand p {
      color: #9ca3af;
      max-width: 330px;
      font-size: 13px;
      margin-top: 15px;
    }

    .footer-title {
      font-size: 13px;
      margin-bottom: 15px;
    }

    .footer-links {
      display: flex;
      flex-direction: column;
      gap: 9px;
    }

    .footer-links a {
      color: #9ca3af;
      font-size: 12px;
    }

    .footer-links a:hover {
      color: white;
    }

    .contact-item {
      color: #9ca3af;
      font-size: 12px;
      margin-bottom: 9px;
    }

    .footer-bottom {
      padding-top: 22px;
      display: flex;
      justify-content: space-between;
      color: #9ca3af;
      font-size: 11px;
    }

    /* =========================
       TOAST
    ========================== */

    .toast {
      position: fixed;
      right: 25px;
      bottom: 25px;
      background: #111827;
      color: white;
      padding: 13px 17px;
      border-radius: 10px;
      font-size: 13px;
      box-shadow: 0 10px 30px rgba(0,0,0,0.2);
      transform: translateY(100px);
      opacity: 0;
      transition: 0.3s;
      z-index: 9999;
    }

    .toast.show {
      transform: translateY(0);
      opacity: 1;
    }

    /* =========================
       RESPONSIVE
    ========================== */

    @media (max-width: 1000px) {
      .nav-links {
        display: none;
      }

      .hero {
        grid-template-columns: 1fr;
        text-align: center;
      }

      .hero-content {
        margin: auto;
      }

      .hero p {
        margin-left: auto;
        margin-right: auto;
      }

      .hero-buttons {
        justify-content: center;
      }

      .features {
        grid-template-columns: repeat(2, 1fr);
      }

      .feature:nth-child(2) {
        border-right: none;
      }

      .categories {
        grid-template-columns: repeat(3, 1fr);
      }

      .product-grid {
        grid-template-columns: repeat(2, 1fr);
      }

      .footer-grid {
        grid-template-columns: repeat(2, 1fr);
      }
    }

    @media (max-width: 600px) {
      .navbar {
        padding: 0 20px;
      }

      .brand-name {
        font-size: 19px;
      }

      .hero {
        padding: 50px 20px;
      }

      .hero h1 {
        font-size: 45px;
      }

      .hero-visual {
        min-height: 380px;
      }

      .hero-card {
        width: 290px;
      }

      .floating-card.one {
        right: 0;
      }

      .floating-card.two {
        left: 0;
      }

      .section {
        padding: 55px 20px;
      }

      .section-header {
        align-items: start;
      }

      .section-title h2 {
        font-size: 27px;
      }

      .categories {
        grid-template-columns: repeat(2, 1fr);
      }

      .product-grid {
        grid-template-columns: 1fr;
      }

      .promo {
        margin: 10px 20px 55px;
        padding: 35px 25px;
        display: block;
      }

      .promo h2 {
        font-size: 28px;
        margin-bottom: 8px;
      }

      .promo .primary-btn {
        margin-top: 20px;
      }

      .newsletter {
        padding: 55px 20px;
      }

      .newsletter-form {
        flex-direction: column;
        background: transparent;
        border: none;
      }

      .newsletter-form input {
        border: 1px solid #fed7aa;
        border-radius: 8px;
        padding: 14px;
      }

      .newsletter-form button {
        padding: 14px;
      }

      .footer-grid {
        grid-template-columns: 1fr;
        gap: 30px;
      }

      .footer-bottom {
        flex-direction: column;
        gap: 8px;
      }

      .features {
        grid-template-columns: 1fr;
      }

      .feature {
        border-right: none;
        border-bottom: 1px solid var(--border);
      }
    }
  </style>
</head>

<body>

  <!-- TOP BAR -->
  <div class="top-bar">
    🚚 Free delivery on orders above ₹999 &nbsp; • &nbsp; Easy 7-day returns
  </div>

  <!-- NAVBAR -->
  <nav class="navbar">

    <a href="#" class="brand">
      <div class="brand-icon">V</div>
      <div class="brand-name">Vasu<span>Mart</span></div>
    </a>

    <div class="nav-links">
      <a href="#home">Home</a>
      <a href="#categories">Categories</a>
      <a href="#products">Products</a>
      <a href="#offers">Offers</a>
      <a href="#contact">Contact</a>
    </div>

    <div class="nav-actions">
      <button class="nav-btn" title="Search">⌕</button>
      <button class="nav-btn" title="Account">♙</button>
      <button class="nav-btn" title="Cart">
        🛒
        <span class="cart-count" id="cartCount">0</span>
      </button>
    </div>

  </nav>

  <!-- HERO -->
  <section class="hero" id="home">

    <div class="hero-content">

      <div class="eyebrow">
        ✦ NEW SEASON COLLECTION
      </div>

      <h1>
        Shop smarter.<br>
        Live <span>better.</span>
      </h1>

      <p>
        Discover everyday essentials, trending products and great deals
        — all in one simple shopping experience built for you.
      </p>

      <div class="hero-buttons">
        <a href="#products" class="primary-btn">Shop Collection →</a>
        <a href="#categories" class="secondary-btn">Explore Categories</a>
      </div>

    </div>

    <div class="hero-visual">

      <div class="floating-card one">
        <div class="floating-number">4.9 ★</div>
        <div class="floating-text">Customer rating</div>
      </div>

      <div class="hero-card">

        <div class="hero-product-image">
          🎧
        </div>

        <div class="hero-product-info">
          <small>FEATURED PRODUCT</small>
          <h3>Wireless Pro Headphones</h3>

          <div class="hero-price">
            <strong>₹2,499</strong>
            <span class="rating">★★★★★</span>
          </div>
        </div>

      </div>

      <div class="floating-card two">
        <div class="floating-number">50K+</div>
        <div class="floating-text">Happy shoppers</div>
      </div>

    </div>

  </section>

  <!-- FEATURES -->
  <section class="features">

    <div class="feature">
      <div class="feature-icon">🚚</div>
      <div>
        <strong>Fast Delivery</strong>
        <span>Quick doorstep delivery</span>
      </div>
    </div>

    <div class="feature">
      <div class="feature-icon">🔒</div>
      <div>
        <strong>Secure Payment</strong>
        <span>100% secure checkout</span>
      </div>
    </div>

    <div class="feature">
      <div class="feature-icon">↩️</div>
      <div>
        <strong>Easy Returns</strong>
        <span>Simple return process</span>
      </div>
    </div>

    <div class="feature">
      <div class="feature-icon">💬</div>
      <div>
        <strong>24/7 Support</strong>
        <span>We're here to help</span>
      </div>
    </div>

  </section>

  <!-- CATEGORIES -->
  <section class="section" id="categories">

    <div class="section-header">

      <div class="section-title">
        <small>Browse</small>
        <h2>Shop by category</h2>
      </div>

      <a href="#" class="view-all">View all →</a>

    </div>

    <div class="categories">

      <a href="#" class="category">
        <div class="category-icon">📱</div>
        <h4>Electronics</h4>
        <span>120+ items</span>
      </a>

      <a href="#" class="category">
        <div class="category-icon">👕</div>
        <h4>Fashion</h4>
        <span>250+ items</span>
      </a>

      <a href="#" class="category">
        <div class="category-icon">🏠</div>
        <h4>Home</h4>
        <span>180+ items</span>
      </a>

      <a href="#" class="category">
        <div class="category-icon">💄</div>
        <h4>Beauty</h4>
        <span>90+ items</span>
      </a>

      <a href="#" class="category">
        <div class="category-icon">🎮</div>
        <h4>Gaming</h4>
        <span>70+ items</span>
      </a>

      <a href="#" class="category">
        <div class="category-icon">🎒</div>
        <h4>Accessories</h4>
        <span>140+ items</span>
      </a>

    </div>

  </section>

  <!-- PRODUCTS -->
  <section class="section" id="products">

    <div class="section-header">

      <div class="section-title">
        <small>Trending now</small>
        <h2>Popular picks</h2>
      </div>

      <a href="#" class="view-all">See all products →</a>

    </div>

    <div class="product-grid">

      <!-- PRODUCT 1 -->
      <article class="product-card">

        <div class="product-image">
          <span class="discount">-20%</span>
          <button class="wishlist">♡</button>
          📱
        </div>

        <div class="product-info">

          <div class="product-category">Electronics</div>

          <h3>Smartphone X Pro</h3>

          <div class="rating">
            ⭐⭐⭐⭐⭐ <span>(124)</span>
          </div>

          <div class="product-bottom">
            <div class="price">
              <strong>₹39,999</strong>
              <span class="old-price">₹49,999</span>
            </div>

            <button class="add-btn" onclick="addToCart('Smartphone X Pro')">
              +
            </button>
          </div>

        </div>

      </article>

      <!-- PRODUCT 2 -->
      <article class="product-card">

        <div class="product-image">
          <span class="discount">-15%</span>
          <button class="wishlist">♡</button>
          👟
        </div>

        <div class="product-info">

          <div class="product-category">Fashion</div>

          <h3>Urban Runner Shoes</h3>

          <div class="rating">
            ⭐⭐⭐⭐⭐ <span>(98)</span>
          </div>

          <div class="product-bottom">
            <div class="price">
              <strong>₹2,199</strong>
              <span class="old-price">₹2,599</span>
            </div>

            <button class="add-btn" onclick="addToCart('Urban Runner Shoes')">
              +
            </button>
          </div>

        </div>

      </article>

      <!-- PRODUCT 3 -->
      <article class="product-card">

        <div class="product-image">
          <span class="discount">-30%</span>
          <button class="wishlist">♡</button>
          ⌚
        </div>

        <div class="product-info">

          <div class="product-category">Wearables</div>

          <h3>Smart Watch Active</h3>

          <div class="rating">
            ⭐⭐⭐⭐☆ <span>(76)</span>
          </div>

          <div class="product-bottom">
            <div class="price">
              <strong>₹3,499</strong>
              <span class="old-price">₹4,999</span>
            </div>

            <button class="add-btn" onclick="addToCart('Smart Watch Active')">
              +
            </button>
          </div>

        </div>

      </article>

      <!-- PRODUCT 4 -->
      <article class="product-card">

        <div class="product-image">
          <span class="discount">-10%</span>
          <button class="wishlist">♡</button>
          🎒
        </div>

        <div class="product-info">

          <div class="product-category">Accessories</div>

          <h3>Premium Travel Backpack</h3>

          <div class="rating">
            ⭐⭐⭐⭐⭐ <span>(143)</span>
          </div>

          <div class="product-bottom">
            <div class="price">
              <strong>₹1,799</strong>
              <span class="old-price">₹1,999</span>
            </div>

            <button class="add-btn" onclick="addToCart('Premium Travel Backpack')">
              +
            </button>
          </div>

        </div>

      </article>

    </div>

  </section>

  <!-- OFFER -->
  <section class="promo" id="offers">

    <div>

      <small>Limited time offer</small>

      <h2>Save up to 50% today.</h2>

      <p>
        Grab selected products before the offer ends.
      </p>

    </div>

    <button
      class="primary-btn"
      onclick="document.getElementById('products').scrollIntoView()"
    >
      Shop the sale →
    </button>

  </section>

  <!-- NEWSLETTER -->
  <section class="newsletter">

    <h2>Stay in the loop.</h2>

    <p>
      Get new arrivals, exclusive offers and shopping inspiration directly
      in your inbox.
    </p>

    <form class="newsletter-form" onsubmit="subscribe(event)">

      <input
        type="email"
        placeholder="Enter your email address"
        required
      >

      <button type="submit">
        Subscribe
      </button>

    </form>

  </section>

  <!-- FOOTER -->
  <footer id="contact">

    <div class="footer-grid">

      <div class="footer-brand">

        <div class="brand">
          <div class="brand-icon">V</div>
          <div class="brand-name">
            Vasu<span>Mart</span>
          </div>
        </div>

        <p>
          A modern shopping destination for everyday products,
          great prices and a better online shopping experience.
        </p>

      </div>

      <div>

        <h4 class="footer-title">Shop</h4>

        <div class="footer-links">
          <a href="#products">New Arrivals</a>
          <a href="#products">Best Sellers</a>
          <a href="#offers">Deals</a>
          <a href="#categories">Categories</a>
        </div>

      </div>

      <div>

        <h4 class="footer-title">Company</h4>

        <div class="footer-links">
          <a href="#">About VasuMart</a>
          <a href="#">Careers</a>
          <a href="#">Privacy Policy</a>
          <a href="#">Terms</a>
        </div>

      </div>

      <div>

        <h4 class="footer-title">Contact</h4>

        <div class="contact-item">
          📧 support@vasumart.com
        </div>

        <div class="contact-item">
          📞 +91 98765 43210
        </div>

        <div class="contact-item">
          📍 India
        </div>

      </div>

    </div>

    <div class="footer-bottom">

      <span>
        © 2026 VasuMart. All rights reserved.
      </span>

      <span>
        Built for a better shopping experience.
      </span>

    </div>

  </footer>

  <!-- TOAST -->
  <div class="toast" id="toast">
    Product added to cart ✓
  </div>

  <script>

    let cart = 0;

    function addToCart(productName) {

      cart++;

      document.getElementById("cartCount").textContent = cart;

      showToast(productName + " added to cart ✓");

    }

    function showToast(message) {

      const toast = document.getElementById("toast");

      toast.textContent = message;

      toast.classList.add("show");

      setTimeout(() => {
        toast.classList.remove("show");
      }, 2200);

    }

    function subscribe(event) {

      event.preventDefault();

      showToast("Thanks for subscribing to VasuMart!");

      event.target.reset();

    }

    document.querySelectorAll(".wishlist").forEach(button => {

      button.addEventListener("click", function () {

        if (this.textContent === "♡") {

          this.textContent = "♥";
          showToast("Added to wishlist");

        } else {

          this.textContent = "♡";
          showToast("Removed from wishlist");

        }

      });

    });

  </script>

</body>
</html>
```
