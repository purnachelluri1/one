<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1" />

<title>Vasu Mart — Modern Shopping</title>

<link rel="preconnect" href="https://fonts.googleapis.com" />
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />

<link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;600&family=Poppins:wght@700&display=swap" rel="stylesheet" />

<link
  href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css"
  rel="stylesheet"
/>

<style>
  /* Root colors and basics */
  :root {
    --primary: #111827;
    --secondary: #6b7280;
    --accent: #635bff;
    --accent-dark: #5148e8;
    --light-accent: #eeedff;
    --bg: #f8fafc;
    --white: #fff;
    --border: #e5e7eb;
    --success: #16a34a;
    --danger: #ef4444;
    --shadow: 0 8px 20px rgba(99, 91, 255, 0.15);
    --radius: 14px;
    --container: 1200px;
  }

  * {
    box-sizing: border-box;
  }

  body {
    margin: 0;
    font-family: 'Inter', sans-serif;
    background: var(--bg);
    color: var(--primary);
    line-height: 1.5;
  }

  /* Offer bar */
  .offer-bar {
    background: var(--primary);
    color: white;
    font-size: 13px;
    font-weight: 600;
    text-align: center;
    padding: 8px;
    user-select: none;
  }

  .offer-bar span {
    color: #a5b4fc;
  }

  /* Container */
  .container {
    max-width: var(--container);
    margin: auto;
    padding: 0 15px;
  }

  /* Header */
  header {
    position: sticky;
    top: 0;
    background: rgba(255 255 255 / 0.95);
    border-bottom: 1px solid var(--border);
    z-index: 99;
  }

  .header-main {
    display: flex;
    align-items: center;
    gap: 20px;
    height: 70px;
  }

  .logo {
    display: flex;
    align-items: center;
    font-family: 'Poppins', sans-serif;
    font-weight: 700;
    font-size: 22px;
    color: var(--accent);
    gap: 8px;
    user-select: none;
  }

  .logo-icon {
    background: var(--accent);
    color: white;
    width: 38px;
    height: 38px;
    border-radius: 12px;
    display: grid;
    place-items: center;
    box-shadow: var(--shadow);
  }

  /* Search box */
  .search-box {
    flex: 1;
    max-width: 480px;
    height: 42px;
    display: flex;
    align-items: center;
    background: #f3f4f6;
    border-radius: 12px;
    padding: 0 15px;
    border: 1px solid transparent;
    transition: border-color 0.3s ease;
  }

  .search-box:focus-within {
    background: white;
    border-color: var(--accent);
    box-shadow: 0 0 10px var(--accent);
  }

  .search-box input {
    flex: 1;
    border: none;
    outline: none;
    font-size: 14px;
    background: transparent;
  }

  .search-box button {
    background: none;
    border: none;
    color: var(--secondary);
    cursor: pointer;
    font-size: 14px;
  }

  /* Header actions */
  .header-actions {
    display: flex;
    align-items: center;
    gap: 10px;
  }

  .header-btn {
    position: relative;
    width: 42px;
    height: 42px;
    border-radius: 12px;
    border: none;
    background: transparent;
    color: var(--primary);
    cursor: pointer;
    font-size: 18px;
    transition: background 0.2s ease, color 0.2s ease;
  }

  .header-btn:hover,
  .header-btn:focus {
    background: var(--light-accent);
    color: var(--accent);
    outline: none;
  }

  .badge-count {
    position: absolute;
    top: 4px;
    right: 6px;
    background: var(--danger);
    color: white;
    border-radius: 9999px;
    padding: 2px 6px;
    font-size: 10px;
    font-weight: 600;
    user-select: none;
  }

  /* Account display */
  .account {
    display: flex;
    align-items: center;
    gap: 9px;
    border-left: 1px solid var(--border);
    padding-left: 12px;
  }

  .avatar {
    width: 36px;
    height: 36px;
    background: #e0e7ff;
    color: var(--accent);
    border-radius: 50%;
    display: grid;
    place-items: center;
    font-weight: 700;
    font-size: 18px;
  }

  .account-text strong {
    font-size: 13px;
  }

  .account-text span {
    font-size: 11px;
    color: var(--secondary);
  }

  /* Navigation */
  .nav-row {
    border-top: 1px solid var(--border);
    background: white;
  }

  .nav-inner {
    max-width: var(--container);
    margin: auto;
    height: 48px;
    display: flex;
    align-items: center;
    gap: 30px;
  }

  .nav-inner a {
    font-size: 14px;
    font-weight: 600;
    color: var(--secondary);
    text-decoration: none;
    transition: color 0.2s ease;
    user-select: none;
  }

  .nav-inner a.active,
  .nav-inner a:hover {
    color: var(--accent);
  }

  .category-link {
    display: flex;
    align-items: center;
    gap: 8px;
    color: var(--primary);
  }

  /* Hero section */
  .hero-section {
    padding: 30px 0 40px;
    max-width: var(--container);
    margin: auto;
  }

  .hero {
    position: relative;
    border-radius: 26px;
    overflow: hidden;
    min-height: 440px;
    display: flex;
    align-items: center;
    background:
      linear-gradient(
        90deg,
        rgba(15, 23, 42, 0.93) 0%,
        rgba(15, 23, 42, 0.75) 50%,
        rgba(15, 23, 42, 0.15) 100%
      ),
      url("https://images.unsplash.com/photo-1441986300917-64674bd600d8?auto=format&fit=crop&w=1600&q=85")
        center/cover no-repeat;
  }

  .hero-content {
    color: white;
    max-width: 600px;
    padding: 55px 40px;
  }

  .hero-label {
    font-weight: 700;
    font-size: 13px;
    margin-bottom: 15px;
    background: rgba(255 255 255 / 0.15);
    border-radius: 50px;
    padding: 8px 14px;
    display: inline-flex;
    align-items: center;
    gap: 8px;
  }

  .hero-label i {
    color: #fbbf24;
  }

  .hero h1 {
    font-family: 'Poppins', sans-serif;
    font-size: clamp(36px, 5vw, 54px);
    line-height: 1.1;
    margin-bottom: 20px;
    user-select: none;
  }

  .hero h1 span {
    color: #a5b4fc;
  }

  .hero p {
    font-size: 16px;
    max-width: 480px;
    margin-bottom: 28px;
    color: #d1d5db;
    user-select: none;
  }

  .hero-buttons {
    display: flex;
    gap: 15px;
    flex-wrap: wrap;
  }

  .btn {
    font-weight: 700;
    border-radius: 12px;
    padding: 14px 25px;
    font-size: 15px;
    cursor: pointer;
    border: none;
    display: inline-flex;
    align-items: center;
    gap: 10px;
    transition: background-color 0.2s ease, transform 0.2s ease;
    user-select: none;
  }

  .btn-primary {
    background: var(--accent);
    color: white;
  }

  .btn-primary:hover,
  .btn-primary:focus {
    background: var(--accent-dark);
    transform: translateY(-2px);
    outline: none;
  }

  .btn-white {
    background: white;
    color: var(--primary);
  }

  .btn-white:hover,
  .btn-white:focus {
    background: #f3f4f6;
    outline: none;
  }

  /* Smooth fade for list changes */
  .products,
  .categories,
  .reviews-grid {
    display: grid;
    gap: 20px;
  }

  /* Categories grid adaptive */
  .categories {
    grid-template-columns: repeat(auto-fit, minmax(120px, 1fr));
    margin-top: 10px;
  }

  .category-card {
    background: white;
    border-radius: 16px;
    padding: 30px 15px 20px;
    text-align: center;
    cursor: pointer;
    border: 1px solid var(--border);
    transition: box-shadow 0.3s ease, transform 0.3s ease;
  }

  .category-card:hover,
  .category-card:focus-visible {
    outline: none;
    box-shadow: var(--shadow);
    transform: translateY(-6px);
    border-color: #d8d5ff;
  }

  .category-icon {
    font-size: 25px;
    color: var(--accent);
    margin-bottom: 10px;
    background: var(--light-accent);
    border-radius: 14px;
    width: 58px;
    height: 58px;
    display: grid;
    place-items: center;
    margin-left: auto;
    margin-right: auto;
  }

  .category-card h3 {
    font-size: 14px;
    margin-bottom: 4px;
  }

  .category-card p {
    font-size: 12px;
    color: var(--secondary);
    user-select: none;
  }

  /* Products grid */
  .products {
    grid-template-columns: repeat(auto-fit, minmax(200px, 1fr));
  }

  .product-card {
    background: white;
    border-radius: 18px;
    overflow: hidden;
    border: 1px solid var(--border);
    display: flex;
    flex-direction: column;
    transition: box-shadow 0.3s ease, transform 0.3s ease;
  }

  .product-card:hover,
  .product-card:focus-within {
    box-shadow: var(--shadow);
    transform: translateY(-5px);
    outline: none;
  }

  .product-image {
    position: relative;
    overflow: hidden;
    height: 230px;
    background: #f3f4f6;
  }

  .product-image img {
    width: 100%;
    height: 100%;
    object-fit: cover;
    transition: transform 0.4s ease;
  }

  .product-card:hover .product-image img,
  .product-card:focus-within .product-image img {
    transform: scale(1.05);
  }

  .product-badge {
    position: absolute;
    top: 12px;
    left: 12px;
    background: var(--primary);
    color: #fff;
    padding: 5px 9px;
    border-radius: 7px;
    font-weight: 700;
    font-size: 10px;
    user-select: none;
  }

  .product-badge.sale {
    background: var(--danger);
  }

  .wishlist-btn {
    position: absolute;
    top: 10px;
    right: 10px;
    background: #fff;
    border-radius: 50%;
    width: 35px;
    height: 35px;
    border: none;
    color: var(--secondary);
    display: grid;
    place-items: center;
    cursor: pointer;
    font-size: 16px;
    transition: color 0.3s ease;
  }

  .wishlist-btn.active {
    color: var(--danger);
  }

  .wishlist-btn:hover,
  .wishlist-btn:focus {
    outline: none;
    color: var(--accent);
  }

  .product-body {
    padding: 16px;
    flex: 1;
    display: flex;
    flex-direction: column;
    gap: 8px;
  }

  .product-category {
    font-size: 11px;
    color: var(--secondary);
    font-weight: 700;
    letter-spacing: 0.06em;
    text-transform: uppercase;
  }

  .product-title {
    font-weight: 700;
    font-size: 14px;
    white-space: nowrap;
    overflow: hidden;
    text-overflow: ellipsis;
  }

  .rating-row {
    display: flex;
    align-items: center;
    gap: 6px;
    font-size: 11px;
    color: #f59e0b;
  }

  .reviews {
    color: var(--secondary);
    font-size: 10px;
  }

  .price-row {
    margin-top: auto;
    display: flex;
    align-items: center;
    gap: 8px;
    font-weight: 800;
    font-size: 17px;
  }

  .old-price {
    text-decoration: line-through;
    font-size: 12px;
    color: #9ca3af;
  }

  .add-cart {
    margin-top: 12px;
    background: var(--accent);
    color: white;
    border: none;
    border-radius: 12px;
    cursor: pointer;
    padding: 11px;
    font-weight: 700;
    font-size: 13px;
    display: flex;
    justify-content: center;
    align-items: center;
    gap: 8px;
    transition: background-color 0.2s ease;
  }

  .add-cart:hover,
  .add-cart:focus {
    background: var(--accent-dark);
    outline: none;
  }

  /* Filter row */
  .filter-row {
    margin: 25px 0 40px;
    display: flex;
    gap: 12px;
    overflow-x: auto;
    padding-bottom: 8px;
    user-select: none;
  }

  .filter-row::-webkit-scrollbar {
    display: none;
  }

  .filter-btn {
    border: 1px solid var(--border);
    border-radius: 50px;
    min-width: 80px;
    padding: 8px 15px;
    font-size: 13px;
    font-weight: 700;
    cursor: pointer;
    white-space: nowrap;
    background: white;
    color: var(--secondary);
    transition: all 0.3s ease;
  }

  .filter-btn:hover,
  .filter-btn.active,
  .filter-btn:focus-visible {
    background: var(--accent);
    color: white;
    border-color: var(--accent);
    outline: none;
  }

  /* Toast style */
  .toast {
    position: fixed;
    right: 20px;
    bottom: 80px;
    padding: 14px 18px;
    background: var(--primary);
    color: white;
    border-radius: 14px;
    font-size: 13px;
    font-weight: 600;
    opacity: 0;
    transform: translateY(50px);
    transition: all 0.3s ease;
    z-index: 1100;
    pointer-events: none;
  }

  .toast.show {
    opacity: 1;
    transform: translateY(0);
    pointer-events: auto;
  }

  /* Responsive */
  @media (max-width: 900px) {
    .hero-content {
      max-width: 100%;
      padding: 40px 20px;
    }
    .products {
      grid-template-columns: repeat(auto-fit, minmax(160px, 1fr));
    }
    .categories {
      grid-template-columns: repeat(auto-fit, minmax(140px, 1fr));
    }
  }

  @media (max-width: 600px) {
    .header-main {
      flex-wrap: wrap;
      height: auto;
      gap: 12px;
    }
    .search-box {
      order: 3;
      max-width: 100%;
      flex: 1 1 100%;
      background: white;
    }
    .account {
      display: none;
    }
    .filter-btn {
      min-width: 70px;
      font-size: 12px;
      padding: 7px 12px;
    }
  }
</style>
</head>
<body>

<!-- Offer Bar -->
<div class="offer-bar">
  <span>UN-LIMITED TIME:</span> Get 20% off your first order — Free shipping on orders over $50
</div>

<!-- Header -->
<header>
  <div class="container header-main">
    <a href="#" class="logo" aria-label="NexusShop Home">
      <div class="logo-icon" aria-hidden="true">
        <i class="fas fa-bag-shopping"></i>
      </div>
      Nexus<span>Shop</span>
    </a>

    <div class="search-box" role="search">
      <input
        type="search"
        id="searchInput"
        placeholder="Search for girls, toya and more..."
        aria-label="Search products"
        autocomplete="off"
      />
      <button id="clearSearch" aria-label="Clear search" title="Clear search">
        <i class="fas fa-xmark"></i>
      </button>
    </div>

    <div class="header-actions" role="group" aria-label="Header actions">
      <button class="header-btn" title="Wishlist (0 items)" aria-live="polite" id="wishlistBtn" aria-pressed="false">
        <i class="far fa-heart" aria-hidden="true"></i>
        <span class="badge-count" id="wishlistCount">0</span>
      </button>

      <button class="header-btn" id="openCart" title="Shopping Cart (0 items)" aria-live="polite" aria-haspopup="dialog" aria-expanded="false" aria-controls="cartDrawer">
        <i class="fas fa-bag-shopping" aria-hidden="true"></i>
        <span class="badge-count" id="cartCount">0</span>
      </button>
    </div>
  </div>

  <nav class="nav-row" role="navigation" aria-label="Primary navigation">
    <div class="container nav-inner">
      <a href="#categories" class="category-link" tabindex="0"><i class="fas fa-layer-group"></i>Categories</a>
      <a href="#products" class="active" tabindex="0">Home</a>
      <a href="#products" tabindex="0">Trending</a>
      <a href="#deals" tabindex="0">Flash Deals</a>
      <a href="#reviews" tabindex="0">Customer Reviews</a>
      <a href="#newsletter" tabindex="0">Offers</a>
    </div>
  </nav>
</header>

<!-- Main Content -->
<main>
  <!-- Hero Section -->
  <section class="hero-section" aria-label="Featured collection">
    <div class="hero">
      <div class="hero-content">
        <div class="hero-label">
          <i class="fas fa-sparkles" aria-hidden="true"></i>
          Vasu Collection
        </div>
        <h1>
          Everyone you Fuck, <span>all in one place.</span>
        </h1>
        <p>
          Discover premium technology, fashion, accessories and everyday essentials at prices you'll love.
        </p>
        <div class="hero-buttons">
          <button class="btn btn-primary" id="shopNow" aria-label="Shop new collection">
            Shop Collection
            <i class="fas fa-arrow-right" aria-hidden="true"></i>
          </button>
          <button class="btn btn-white" id="heroDeals" aria-label="View flash deals">View Deals</button>
        </div>
      </div>
    </div>
  </section>

  <!-- Categories Section -->
  <section id="categories" class="container" aria-label="Shop by category">
    <h2 class="sr-only">Shop by Category</h2>
    <div class="categories" id="categoriesGrid" tabindex="0" aria-live="polite"></div>
  </section>

  <!-- Products Section -->
  <section id="products" class="container" aria-label="Popular products">
    <h2 class="sr-only">Popular Products</h2>
    <div class="filter-row" id="filterRow" role="list" aria-label="Product filters"></div>
    <div class="products" id="productsGrid" role="list" aria-live="polite"></div>
  </section>
</main>

<!-- Cart Drawer -->
<div class="overlay" id="overlay" tabindex="-1" hidden></div>

<aside
  class="cart-drawer"
  id="cartDrawer"
  role="dialog"
  aria-modal="true"
  aria-labelledby="cartTitle"
  aria-hidden="true"
  tabindex="-1"
>
  <div class="cart-header">
    <h3 id="cartTitle" tabindex="0">Your Cart</h3>
    <button id="closeCart" class="close-btn" aria-label="Close cart">
      <i class="fas fa-xmark"></i>
    </button>
  </div>
  <div class="cart-items" id="cartItems" tabindex="0">
    <div class="empty-cart" aria-live="polite">
      <div>
        <i class="fas fa-bag-shopping" aria-hidden="true"></i>
        <p>Your cart is empty.</p>
        <small>Add something you love!</small>
      </div>
    </div>
  </div>
  <div class="cart-footer">
    <div class="subtotal" aria-live="polite" aria-atomic="true">
      <span>Subtotal</span>
      <span id="subtotal" aria-label="Subtotal amount">$0.00</span>
    </div>
    <button class="checkout-btn" id="checkoutButton">Proceed to Checkout</button>
  </div>
</aside>

<!-- Toast Notifications -->
<div class="toast" id="toast" role="alert" aria-live="assertive" aria-atomic="true"></div>

<script>
  // PRODUCT DATA
  const PRODUCTS = [
    { id: 1, title: "iPhone 14 Pro Max", category: "Smartphones", price: 1099, oldPrice: 1199, rating: 5, reviews: 128, badge: "NEW", image: "https://images.unsplash.com/photo-1592899677977-9c10ca588bbd?auto=format&fit=crop&w=700&q=80" },
    { id: 2, title: "MacBook Pro 14", category: "Laptops", price: 1999, oldPrice: 2199, rating: 5, reviews: 86, badge: "POPULAR", image: "https://images.unsplash.com/photo-1517336714731-489689fd1ca8?auto=format&fit=crop&w=700&q=80" },
    { id: 3, title: "Apple Watch Series 8", category: "Accessories", price: 349, oldPrice: 399, rating: 5, reviews: 214, badge: "-25%", image: "https://images.unsplash.com/photo-1546868871-7041f2a55e12?auto=format&fit=crop&w=700&q=80" },
    { id: 4, title: "Nike Air Max 270", category: "Footwear", price: 150, oldPrice: 180, rating: 4, reviews: 53, badge: "SALE", image: "https://images.unsplash.com/photo-1542291026-7eec264c27ff?auto=format&fit=crop&w=700&q=80" },
    { id: 5, title: "Sony A7 IV Camera", category: "Gadgets", price: 2499, oldPrice: 2699, rating: 5, reviews: 42, badge: "PRO", image: "https://images.unsplash.com/photo-1516035069371-29a1b244cc32?auto=format&fit=crop&w=700&q=80" },
    { id: 6, title: "Premium Perfume", category: "Beauty", price: 120, oldPrice: 145, rating: 5, reviews: 189, badge: "BEST SELLER", image: "https://images.unsplash.com/photo-1541643600914-78b084683601?auto=format&fit=crop&w=700&q=80" },
    { id: 7, title: "Travel Backpack", category: "Accessories", price: 79, oldPrice: 99, rating: 4, reviews: 67, badge: "SALE", image: "https://images.unsplash.com/photo-1553062407-98eeb64c6a62?auto=format&fit=crop&w=700&q=80" },
    { id: 8, title: "Sony WH-1000XM5", category: "Gadgets", price: 399, oldPrice: 449, rating: 5, reviews: 156, badge: "HOT", image: "https://images.unsplash.com/photo-1583394838336-acd977736f90?auto=format&fit=crop&w=700&q=80" }
  ];

  const CATEGORIES = [
    { name: "All", icon: "fa-grid", description: "All categories" },
    { name: "Smartphones", icon: "fa-mobile-screen-button", description: "Latest phones" },
    { name: "Laptops", icon: "fa-laptop", description: "Work & gaming" },
    { name: "Fashion", icon: "fa-shirt", description: "Trending styles" },
    { name: "Gadgets", icon: "fa-headphones", description: "Smart accessories" },
    { name: "Footwear", icon: "fa-shoe-prints", description: "Step in style" },
    { name: "Accessories", icon: "fa-watch", description: "Complete your look" }
  ];

  // State variables
  let cart = [];
  let wishlist = [];
  let searchTimeout;

  // DOM Elements
  const categoriesGrid = document.getElementById("categoriesGrid");
  const filterRow = document.getElementById("filterRow");
  const productsGrid = document.getElementById("productsGrid");
  const searchInput = document.getElementById("searchInput");
  const clearSearchBtn = document.getElementById("clearSearch");
  const cartCount = document.getElementById("cartCount");
  const wishlistCount = document.getElementById("wishlistCount");
  const cartDrawer = document.getElementById("cartDrawer");
  const overlay = document.getElementById("overlay");
  const toast = document.getElementById("toast");
  const openCartBtn = document.getElementById("openCart");
  const closeCartBtn = document.getElementById("closeCart");
  const checkoutBtn = document.getElementById("checkoutButton");
  const wishlistBtn = document.getElementById("wishlistBtn");
  const shopNowBtn = document.getElementById("shopNow");
  const heroDealsBtn = document.getElementById("heroDeals");

  // Toast helper
  let toastTimer;
  function showToast(message) {
    toast.textContent = message;
    toast.classList.add("show");
    clearTimeout(toastTimer);
    toastTimer = setTimeout(() => {
      toast.classList.remove("show");
    }, 2200);
  }

  // Render Categories UI
  function renderCategories() {
    categoriesGrid.innerHTML = "";
    CATEGORIES.forEach((cat) => {
      const card = document.createElement("div");
      card.className = "category-card";
      card.tabIndex = 0;
      card.setAttribute("role", "button");
      card.setAttribute("aria-label", `Filter by category ${cat.name}`);

      card.innerHTML = `
        <div class="category-icon">
          <i class="fas ${cat.icon}" aria-hidden="true"></i>
        </div>
        <h3>${cat.name}</h3>
        <p>${cat.description}</p>
      `;

      card.addEventListener("click", () => {
        filterByCategory(cat.name);
      });

      card.addEventListener("keydown", (e) => {
        if (e.key === "Enter" || e.key === " ") {
          e.preventDefault();
          filterByCategory(cat.name);
        }
      });

      categoriesGrid.appendChild(card);
    });
  }

  // Filter buttons
  function renderFilters() {
    const uniqueCategories = ["All", ...new Set(PRODUCTS.map(p => p.category))];
    filterRow.innerHTML = "";
    uniqueCategories.forEach((cat, idx) => {
      const btn = document.createElement("button");
      btn.className = "filter-btn";
      btn.textContent = cat;
      if (idx === 0) btn.classList.add("active");

      btn.addEventListener("click", () => {
        document.querySelectorAll(".filter-btn").forEach(b => b.classList.remove("active"));
        btn.classList.add("active");
        filterProducts(cat);
      });

      filterRow.appendChild(btn);
    });
  }

  // Filter logic for category and search
  function filterProducts(category = "All") {
    const searchTerm = searchInput.value.trim().toLowerCase();
    let filtered = PRODUCTS;

    if (category !== "All") {
      filtered = filtered.filter(p => p.category === category);
    }
    if (searchTerm) {
      filtered = filtered.filter(p =>
        p.title.toLowerCase().includes(searchTerm) ||
        p.category.toLowerCase().includes(searchTerm)
      );
    }

    renderProducts(filtered);
  }

  // Filter from categories cards too
  function filterByCategory(catName) {
    searchInput.value = "";
    document.querySelectorAll(".filter-btn").forEach(b => {
      b.classList.toggle("active", b.textContent === catName || (catName === "All" && b.textContent === "All"));
    });
    filterProducts(catName);
    document.getElementById("products").scrollIntoView({ behavior: "smooth" });
  }

  // Render Products UI
  function renderProducts(products) {
    productsGrid.innerHTML = "";

    if (!products.length) {
      productsGrid.innerHTML = `
        <div style="grid-column:1/-1; background:white; border:1px solid var(--border); border-radius:18px; padding:40px; text-align:center; color:var(--secondary); font-size:14px;">
          <i class="fas fa-search" style="font-size:28px; margin-bottom:15px;"></i>
          <div>No products found</div>
          <small>Try searching for something else.</small>
        </div>`;
      return;
    }

    products.forEach(product => {
      const isWishlisted = wishlist.includes(product.id);
      const badgeClass = product.badge && (product.badge.includes("%") || product.badge === "SALE") ? "sale" : "";

      const card = document.createElement("article");
      card.className = "product-card";
      card.tabIndex = 0;
      card.setAttribute("role", "listitem");

      card.innerHTML = `
        <div class="product-image">
          ${product.badge ? `<span class="product-badge ${badgeClass}">${product.badge}</span>` : ""}
          <button
            class="wishlist-btn${isWishlisted ? " active" : ""}"
            data-wishlist="${product.id}"
            aria-label="${isWishlisted ? "Remove from" : "Add to"} wishlist ${product.title}"
            title="Wishlist"
          >
            <i class="${isWishlisted ? "fas" : "far"} fa-heart"></i>
          </button>
          <img src="${product.image}" alt="${product.title}" loading="lazy" />
        </div>
        <div class="product-body">
          <div class="product-category">${product.category}</div>
          <div class="product-title">${product.title}</div>
          <div class="rating-row" aria-label="Rating ${product.rating} stars with ${product.reviews} reviews">
            <span class="stars">${"★".repeat(product.rating)}</span>
            <span class="reviews">(${product.reviews})</span>
          </div>
          <div class="price-row">
            <span class="price" aria-label="Price $${product.price}">$${product.price.toLocaleString()}</span>
            ${product.oldPrice ? `<span class="old-price">$${product.oldPrice.toLocaleString()}</span>` : ""}
          </div>
          <button class="add-cart" data-product="${product.id}" aria-label="Add ${product.title} to cart">
            <i class="fas fa-cart-plus"></i> Add to Cart
          </button>
        </div>
      `;

      productsGrid.appendChild(card);
    });

    // Wishlist toggle handlers
    document.querySelectorAll("[data-wishlist]").forEach(button => {
      button.onclick = () => {
        const id = Number(button.getAttribute("data-wishlist"));
        toggleWishlist(id);
      };
    });

    // Add to cart handlers
    document.querySelectorAll("[data-product]").forEach(button => {
      button.onclick = () => {
        const id = Number(button.getAttribute("data-product"));
        addToCart(id);
      };
    });
  }

  // Wishlist toggle logic
  function toggleWishlist(id) {
    const idx = wishlist.indexOf(id);
    if (idx !== -1) {
      wishlist.splice(idx, 1);
      showToast("Removed from wishlist");
    } else {
      wishlist.push(id);
      showToast("Added to wishlist ❤️");
    }
    updateWishlistCount();
    renderProducts(getCurrentFilteredProducts());
  }

  // Get current filtered products per search and filter active button
  function getCurrentFilteredProducts() {
    const activeFilterBtn = document.querySelector(".filter-btn.active");
    const category = activeFilterBtn ? activeFilterBtn.textContent : "All";
    const searchTerm = searchInput.value.trim().toLowerCase();

    let filtered = PRODUCTS;
    if (category !== "All") filtered = filtered.filter(p => p.category === category);

    if (searchTerm) {
      filtered = filtered.filter(p =>
        p.title.toLowerCase().includes(searchTerm) ||
        p.category.toLowerCase().includes(searchTerm)
      );
    }
    return filtered;
  }

  // Cart logic
  function addToCart(id) {
    const product = PRODUCTS.find(p => p.id === id);
    if (!product) return;

    const existing = cart.find(item => item.id === id);
    if (existing) {
      existing.quantity++;
    } else {
      cart.push({ ...product, quantity: 1 });
    }
    showToast(`Added ${product.title} to cart`);
    updateCartUI();
  }

  function removeFromCart(id) {
    cart = cart.filter(item => item.id !== id);
    updateCartUI();
  }

  function changeCartQuantity(id, delta) {
    const item = cart.find(i => i.id === id);
    if (!item) return;
    item.quantity += delta;
    if (item.quantity <= 0) removeFromCart(id);
    else updateCartUI();
  }

  function updateCartUI() {
    cartCount.textContent = cart.reduce((sum, i) => sum + i.quantity, 0);

    const cartItemsContainer = document.getElementById("cartItems");
    if (cart.length === 0) {
      cartItemsContainer.innerHTML = `
        <div class="empty-cart">
          <div>
            <i class="fas fa-bag-shopping"></i>
            <p>Your cart is empty.</p>
            <small>Add something you love!</small>
          </div>
        </div>`;
    } else {
      cartItemsContainer.innerHTML = "";
      cart.forEach(item => {
        const itemNode = document.createElement("div");
        itemNode.className = "cart-item";
        itemNode.innerHTML = `
          <img src="${item.image}" alt="${item.title}" />
          <div class="cart-item-info">
            <strong>${item.title}</strong>
            <div class="cart-item-price">$${item.price.toLocaleString()}</div>
            <div class="quantity-controls">
              <button aria-label="Decrease quantity" data-minus="${item.id}">-</button>
              <span>${item.quantity}</span>
              <button aria-label="Increase quantity" data-plus="${item.id}">+</button>
            </div>
          </div>
          <button class="remove-item" aria-label="Remove ${item.title} from cart" data-remove="${item.id}">
            <i class="fas fa-trash"></i>
          </button>
        `;
        cartItemsContainer.appendChild(itemNode);
      });

      // Event delegation for buttons
      cartItemsContainer.querySelectorAll("[data-minus]").forEach(btn =>
        btn.addEventListener("click", () =>
          changeCartQuantity(Number(btn.getAttribute("data-minus")), -1)
        )
      );
      cartItemsContainer.querySelectorAll("[data-plus]").forEach(btn =>
        btn.addEventListener("click", () =>
          changeCartQuantity(Number(btn.getAttribute("data-plus")), +1)
        )
      );
      cartItemsContainer.querySelectorAll("[data-remove]").forEach(btn =>
        btn.addEventListener("click", () =>
          removeFromCart(Number(btn.getAttribute("data-remove")))
        )
      );
    }

    const subtotalAmount = cart.reduce((sum, i) => sum + i.price * i.quantity, 0);
    document.getElementById("subtotal").textContent = `$${subtotalAmount.toLocaleString()}.00`;

    // Update aria attributes and titles
    openCartBtn.setAttribute("title", `Shopping Cart (${cartCount.textContent} items)`);
    openCartBtn.setAttribute("aria-label", `Shopping Cart with ${cartCount.textContent} items`);
  }

  // Update wishlist count display
  function updateWishlistCount() {
    wishlistCount.textContent = wishlist.length;
    wishlistBtn.setAttribute('aria-pressed', String(wishlist.length > 0));
    wishlistBtn.setAttribute("title", `Wishlist (${wishlist.length} items)`);
  }

  // Cart drawer functionality
  function openCart() {
    cartDrawer.style.visibility = "visible";
    cartDrawer.style.transform = "translateX(0)";
    cartDrawer.setAttribute("aria-hidden", "false");
    overlay.style.display = "block";
    overlay.removeAttribute("hidden");
    document.body.style.overflow = "hidden";
    openCartBtn.setAttribute("aria-expanded", "true");
    cartDrawer.focus();
  }

  function closeCart() {
    cartDrawer.style.visibility = "hidden";
    cartDrawer.style.transform = "translateX(100%)";
    cartDrawer.setAttribute("aria-hidden", "true");
    overlay.style.display = "none";
    overlay.setAttribute("hidden", "");
    document.body.style.overflow = "";
    openCartBtn.setAttribute("aria-expanded", "false");
  }

  openCartBtn.addEventListener("click", () => {
    openCart();
  });

  closeCartBtn.addEventListener("click", () => {
    closeCart();
  });

  overlay.addEventListener("click", () => {
    closeCart();
  });

  // Search input with debounce for real-time filtering
  searchInput.addEventListener("input", () => {
    clearTimeout(searchTimeout);
    searchTimeout = setTimeout(() => {
      filterProducts(getActiveFilterName());
    }, 350);
  });

  clearSearchBtn.addEventListener("click", () => {
    searchInput.value = "";
    filterProducts(getActiveFilterName());
    searchInput.focus();
  });

  function getActiveFilterName() {
    const btn = document.querySelector(".filter-btn.active");
    return btn ? btn.textContent : "All";
  }

  // Checkout button behavior
  checkoutBtn.addEventListener("click", () => {
    if (cart.length === 0) {
      showToast("Your cart is empty");
      return;
    }
    showToast("Checkout integration coming soon!");
  });

  // Hero buttons scrolling
  shopNowBtn.addEventListener("click", () => {
    document.getElementById("products").scrollIntoView({ behavior: "smooth" });
  });

  heroDealsBtn.addEventListener("click", () => {
    document.getElementById("deals")?.scrollIntoView({ behavior: "smooth" });
  });

  // Initialize
  function init() {
    renderCategories();
    renderFilters();
    renderProducts(PRODUCTS);
    updateCartUI();
    updateWishlistCount();

    // Accessibility: focus trap and ESC to close cart
    document.addEventListener("keydown", e => {
      if (e.key === "Escape" && cartDrawer.getAttribute("aria-hidden") === "false") {
        closeCart();
      }
    });
  }

  init();
</script>

</body>
</html>
