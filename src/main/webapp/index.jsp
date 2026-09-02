<!DOCTYPE html>

<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

```
<title>VasuMart — Modern Shopping</title>

<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>

<link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600;700&family=Poppins:wght@600;700;800&display=swap" rel="stylesheet">

<link rel="stylesheet"
      href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css">

<style>
    :root {
        --primary: #111827;
        --secondary: #6b7280;
        --accent: #635bff;
        --accent-dark: #5148e8;
        --light-accent: #eeedff;
        --bg: #f8fafc;
        --white: #ffffff;
        --border: #e5e7eb;
        --success: #16a34a;
        --danger: #ef4444;
        --warning: #f59e0b;
        --shadow: 0 10px 30px rgba(15, 23, 42, 0.07);
        --shadow-hover: 0 18px 45px rgba(15, 23, 42, 0.12);
        --radius: 18px;
        --container: 1240px;
    }

    * {
        box-sizing: border-box;
        margin: 0;
        padding: 0;
    }

    html {
        scroll-behavior: smooth;
    }

    body {
        font-family: "Inter", sans-serif;
        background: var(--bg);
        color: var(--primary);
        line-height: 1.5;
    }

    body.no-scroll {
        overflow: hidden;
    }

    button,
    input {
        font-family: inherit;
    }

    button {
        cursor: pointer;
    }

    a {
        color: inherit;
        text-decoration: none;
    }

    img {
        max-width: 100%;
    }

    .container {
        width: min(var(--container), calc(100% - 40px));
        margin: auto;
    }

    /* =========================
       TOP OFFER BAR
    ========================== */

    .offer-bar {
        background: var(--primary);
        color: white;
        text-align: center;
        padding: 9px 15px;
        font-size: 13px;
        font-weight: 500;
    }

    .offer-bar span {
        color: #a5b4fc;
        font-weight: 700;
    }

    /* =========================
       HEADER
    ========================== */

    header {
        background: rgba(255, 255, 255, 0.96);
        position: sticky;
        top: 0;
        z-index: 100;
        border-bottom: 1px solid var(--border);
        backdrop-filter: blur(12px);
    }

    .header-main {
        min-height: 76px;
        display: flex;
        align-items: center;
        gap: 30px;
    }

    .logo {
        display: flex;
        align-items: center;
        gap: 10px;
        font-family: "Poppins", sans-serif;
        font-size: 22px;
        font-weight: 800;
        white-space: nowrap;
    }

    .logo-icon {
        width: 38px;
        height: 38px;
        border-radius: 12px;
        display: grid;
        place-items: center;
        background: var(--accent);
        color: white;
        box-shadow: 0 8px 20px rgba(99, 91, 255, 0.25);
    }

    .logo span {
        color: var(--accent);
    }

    .search-box {
        flex: 1;
        max-width: 520px;
        height: 46px;
        display: flex;
        align-items: center;
        background: #f3f4f6;
        border: 1px solid transparent;
        border-radius: 13px;
        padding: 0 15px;
        transition: 0.2s;
    }

    .search-box:focus-within {
        background: white;
        border-color: var(--accent);
        box-shadow: 0 0 0 4px rgba(99, 91, 255, 0.08);
    }

    .search-box i {
        color: var(--secondary);
    }

    .search-box input {
        flex: 1;
        border: 0;
        outline: 0;
        background: transparent;
        padding: 0 12px;
        font-size: 14px;
    }

    .search-box button {
        border: 0;
        background: transparent;
        color: var(--secondary);
        font-size: 14px;
    }

    .header-actions {
        margin-left: auto;
        display: flex;
        align-items: center;
        gap: 8px;
    }

    .header-btn {
        position: relative;
        width: 42px;
        height: 42px;
        border: 0;
        border-radius: 12px;
        background: transparent;
        color: var(--primary);
        font-size: 17px;
        transition: 0.2s;
    }

    .header-btn:hover {
        background: var(--light-accent);
        color: var(--accent);
    }

    .badge-count {
        position: absolute;
        top: 2px;
        right: 0;
        min-width: 18px;
        height: 18px;
        padding: 0 4px;
        border-radius: 50px;
        background: var(--danger);
        color: white;
        font-size: 10px;
        display: grid;
        place-items: center;
        font-weight: 700;
    }

    .account {
        display: flex;
        align-items: center;
        gap: 9px;
        padding-left: 12px;
        border-left: 1px solid var(--border);
    }

    .avatar {
        width: 36px;
        height: 36px;
        border-radius: 50%;
        display: grid;
        place-items: center;
        background: #e0e7ff;
        color: var(--accent);
        font-weight: 700;
    }

    .account-text {
        font-size: 12px;
    }

    .account-text strong {
        display: block;
        font-size: 13px;
    }

    .account-text span {
        color: var(--secondary);
    }

    .mobile-menu-btn {
        display: none;
        width: 42px;
        height: 42px;
        border: 0;
        background: #f3f4f6;
        border-radius: 12px;
    }

    /* =========================
       NAVIGATION
    ========================== */

    .nav-row {
        border-top: 1px solid #f1f5f9;
    }

    .nav-inner {
        height: 48px;
        display: flex;
        align-items: center;
        gap: 28px;
    }

    .nav-inner a {
        font-size: 13px;
        font-weight: 600;
        color: #4b5563;
        transition: 0.2s;
    }

    .nav-inner a:hover,
    .nav-inner a.active {
        color: var(--accent);
    }

    .nav-inner .category-link {
        display: flex;
        align-items: center;
        gap: 8px;
        color: var(--primary);
    }

    /* =========================
       HERO
    ========================== */

    .hero-section {
        padding: 28px 0 10px;
    }

    .hero {
        min-height: 440px;
        border-radius: 26px;
        overflow: hidden;
        position: relative;
        display: flex;
        align-items: center;
        background:
            linear-gradient(90deg, rgba(15, 23, 42, 0.93) 0%, rgba(15, 23, 42, 0.74) 48%, rgba(15, 23, 42, 0.15) 100%),
            url("https://images.unsplash.com/photo-1441986300917-64674bd600d8?auto=format&fit=crop&w=1600&q=85")
            center/cover;
    }

    .hero-content {
        width: 600px;
        padding: 55px;
        color: white;
    }

    .hero-label {
        display: inline-flex;
        align-items: center;
        gap: 7px;
        background: rgba(255,255,255,0.12);
        border: 1px solid rgba(255,255,255,0.18);
        padding: 7px 12px;
        border-radius: 50px;
        font-size: 12px;
        font-weight: 600;
        margin-bottom: 18px;
    }

    .hero-label i {
        color: #fbbf24;
    }

    .hero h1 {
        font-family: "Poppins", sans-serif;
        font-size: clamp(34px, 4vw, 54px);
        line-height: 1.08;
        letter-spacing: -1.5px;
        margin-bottom: 17px;
    }

    .hero h1 span {
        color: #a5b4fc;
    }

    .hero p {
        color: #d1d5db;
        max-width: 510px;
        font-size: 15px;
        margin-bottom: 27px;
    }

    .hero-buttons {
        display: flex;
        gap: 12px;
        flex-wrap: wrap;
    }

    .btn {
        border: 0;
        border-radius: 12px;
        padding: 12px 20px;
        font-weight: 700;
        display: inline-flex;
        align-items: center;
        justify-content: center;
        gap: 9px;
        transition: 0.2s;
    }

    .btn-primary {
        background: var(--accent);
        color: white;
    }

    .btn-primary:hover {
        background: var(--accent-dark);
        transform: translateY(-1px);
    }

    .btn-white {
        background: white;
        color: var(--primary);
    }

    .btn-white:hover {
        background: #f3f4f6;
    }

    /* =========================
       TRUST FEATURES
    ========================== */

    .trust-row {
        display: grid;
        grid-template-columns: repeat(4, 1fr);
        gap: 15px;
        margin: 20px 0 10px;
    }

    .trust-item {
        background: white;
        border: 1px solid var(--border);
        border-radius: 15px;
        padding: 16px;
        display: flex;
        align-items: center;
        gap: 13px;
    }

    .trust-icon {
        width: 40px;
        height: 40px;
        flex-shrink: 0;
        border-radius: 12px;
        display: grid;
        place-items: center;
        background: var(--light-accent);
        color: var(--accent);
    }

    .trust-item strong {
        display: block;
        font-size: 13px;
    }

    .trust-item span {
        display: block;
        color: var(--secondary);
        font-size: 11px;
        margin-top: 2px;
    }

    /* =========================
       SECTIONS
    ========================== */

    .section {
        padding: 58px 0;
    }

    .section-header {
        display: flex;
        align-items: flex-end;
        justify-content: space-between;
        gap: 20px;
        margin-bottom: 25px;
    }

    .section-title h2 {
        font-family: "Poppins", sans-serif;
        font-size: 26px;
        margin-bottom: 4px;
    }

    .section-title p {
        color: var(--secondary);
        font-size: 13px;
    }

    .view-all {
        color: var(--accent);
        font-size: 13px;
        font-weight: 700;
        white-space: nowrap;
    }

    /* =========================
       CATEGORIES
    ========================== */

    .categories {
        display: grid;
        grid-template-columns: repeat(6, 1fr);
        gap: 16px;
    }

    .category-card {
        border: 1px solid var(--border);
        background: white;
        border-radius: 17px;
        padding: 22px 15px;
        text-align: center;
        transition: 0.25s;
        cursor: pointer;
    }

    .category-card:hover {
        transform: translateY(-5px);
        box-shadow: var(--shadow-hover);
        border-color: #d8d5ff;
    }

    .category-icon {
        width: 58px;
        height: 58px;
        margin: 0 auto 13px;
        display: grid;
        place-items: center;
        border-radius: 17px;
        background: var(--light-accent);
        color: var(--accent);
        font-size: 22px;
    }

    .category-card h3 {
        font-size: 13px;
        margin-bottom: 3px;
    }

    .category-card p {
        color: var(--secondary);
        font-size: 11px;
    }

    /* =========================
       PRODUCT FILTER
    ========================== */

    .filter-row {
        display: flex;
        gap: 9px;
        overflow-x: auto;
        padding-bottom: 5px;
        margin-bottom: 25px;
    }

    .filter-row::-webkit-scrollbar {
        display: none;
    }

    .filter-btn {
        border: 1px solid var(--border);
        background: white;
        color: #4b5563;
        border-radius: 50px;
        padding: 8px 15px;
        font-size: 12px;
        font-weight: 600;
        white-space: nowrap;
        transition: 0.2s;
    }

    .filter-btn:hover,
    .filter-btn.active {
        background: var(--primary);
        color: white;
        border-color: var(--primary);
    }

    /* =========================
       PRODUCTS
    ========================== */

    .products {
        display: grid;
        grid-template-columns: repeat(4, 1fr);
        gap: 20px;
    }

    .product-card {
        background: white;
        border: 1px solid var(--border);
        border-radius: 18px;
        overflow: hidden;
        transition: 0.25s;
        position: relative;
    }

    .product-card:hover {
        transform: translateY(-5px);
        box-shadow: var(--shadow-hover);
    }

    .product-image {
        height: 230px;
        position: relative;
        background: #f3f4f6;
        overflow: hidden;
    }

    .product-image img {
        width: 100%;
        height: 100%;
        object-fit: cover;
        transition: 0.4s;
    }

    .product-card:hover .product-image img {
        transform: scale(1.05);
    }

    .product-badge {
        position: absolute;
        top: 12px;
        left: 12px;
        padding: 5px 9px;
        background: var(--primary);
        color: white;
        border-radius: 7px;
        font-size: 10px;
        font-weight: 700;
    }

    .product-badge.sale {
        background: var(--danger);
    }

    .wishlist-btn {
        position: absolute;
        top: 10px;
        right: 10px;
        width: 35px;
        height: 35px;
        border: 0;
        background: rgba(255,255,255,0.95);
        border-radius: 50%;
        display: grid;
        place-items: center;
        color: #6b7280;
        box-shadow: 0 4px 15px rgba(0,0,0,0.08);
    }

    .wishlist-btn.active {
        color: var(--danger);
    }

    .product-body {
        padding: 16px;
    }

    .product-category {
        font-size: 10px;
        color: var(--secondary);
        text-transform: uppercase;
        letter-spacing: .6px;
        font-weight: 700;
        margin-bottom: 5px;
    }

    .product-title {
        font-size: 14px;
        font-weight: 700;
        margin-bottom: 7px;
        white-space: nowrap;
        overflow: hidden;
        text-overflow: ellipsis;
    }

    .rating-row {
        display: flex;
        align-items: center;
        gap: 6px;
        margin-bottom: 12px;
    }

    .stars {
        color: #f59e0b;
        font-size: 11px;
    }

    .reviews {
        color: var(--secondary);
        font-size: 10px;
    }

    .price-row {
        display: flex;
        align-items: center;
        gap: 8px;
        margin-bottom: 13px;
    }

    .price {
        font-size: 17px;
        font-weight: 800;
    }

    .old-price {
        color: #9ca3af;
        font-size: 11px;
        text-decoration: line-through;
    }

    .add-cart {
        width: 100%;
        border: 0;
        background: #f3f4f6;
        color: var(--primary);
        padding: 10px;
        border-radius: 10px;
        font-weight: 700;
        font-size: 12px;
        transition: 0.2s;
    }

    .add-cart:hover {
        background: var(--primary);
        color: white;
    }

    /* =========================
       DEAL SECTION
    ========================== */

    .deal-section {
        padding: 25px 0 60px;
    }

    .deal-banner {
        border-radius: 24px;
        overflow: hidden;
        min-height: 350px;
        display: grid;
        grid-template-columns: 1fr 1fr;
        background:
            linear-gradient(135deg, #171c3a, #252c62);
        color: white;
    }

    .deal-content {
        padding: 50px;
        display: flex;
        flex-direction: column;
        justify-content: center;
    }

    .deal-tag {
        color: #a5b4fc;
        text-transform: uppercase;
        font-size: 11px;
        font-weight: 800;
        letter-spacing: 1.5px;
        margin-bottom: 9px;
    }

    .deal-content h2 {
        font-family: "Poppins", sans-serif;
        font-size: 35px;
        margin-bottom: 9px;
    }

    .deal-content p {
        color: #cbd5e1;
        font-size: 13px;
        max-width: 430px;
    }

    .timer {
        display: flex;
        gap: 8px;
        margin: 22px 0;
    }

    .timer-box {
        min-width: 57px;
        padding: 8px 7px;
        text-align: center;
        background: rgba(255,255,255,0.1);
        border: 1px solid rgba(255,255,255,0.12);
        border-radius: 10px;
    }

    .timer-box strong {
        display: block;
        font-size: 18px;
    }

    .timer-box span {
        font-size: 9px;
        color: #cbd5e1;
    }

    .deal-image {
        min-height: 350px;
        background:
            linear-gradient(90deg, rgba(23,28,58,0.1), rgba(23,28,58,0)),
            url("https://images.unsplash.com/photo-1517336714731-489689fd1ca8?auto=format&fit=crop&w=1000&q=85")
            center/cover;
    }

    /* =========================
       TESTIMONIALS
    ========================== */

    .reviews-grid {
        display: grid;
        grid-template-columns: repeat(3, 1fr);
        gap: 18px;
    }

    .review-card {
        background: white;
        border: 1px solid var(--border);
        border-radius: 17px;
        padding: 22px;
    }

    .review-stars {
        color: #f59e0b;
        font-size: 12px;
        margin-bottom: 12px;
    }

    .review-card > p {
        color: #4b5563;
        font-size: 13px;
        line-height: 1.7;
        margin-bottom: 18px;
    }

    .review-user {
        display: flex;
        align-items: center;
        gap: 10px;
    }

    .review-avatar {
        width: 38px;
        height: 38px;
        border-radius: 50%;
        object-fit: cover;
    }

    .review-user strong {
        display: block;
        font-size: 12px;
    }

    .review-user span {
        color: var(--secondary);
        font-size: 10px;
    }

    /* =========================
       NEWSLETTER
    ========================== */

    .newsletter {
        background: white;
        border: 1px solid var(--border);
        border-radius: 22px;
        padding: 42px;
        display: flex;
        align-items: center;
        justify-content: space-between;
        gap: 30px;
    }

    .newsletter h2 {
        font-family: "Poppins", sans-serif;
        font-size: 25px;
        margin-bottom: 5px;
    }

    .newsletter p {
        color: var(--secondary);
        font-size: 13px;
    }

    .newsletter-form {
        display: flex;
        gap: 8px;
        width: min(420px, 100%);
    }

    .newsletter-form input {
        flex: 1;
        min-width: 0;
        border: 1px solid var(--border);
        border-radius: 11px;
        padding: 12px 14px;
        outline: 0;
    }

    .newsletter-form input:focus {
        border-color: var(--accent);
    }

    /* =========================
       FOOTER
    ========================== */

    footer {
        background: var(--primary);
        color: white;
        margin-top: 30px;
        padding: 55px 0 25px;
    }

    .footer-grid {
        display: grid;
        grid-template-columns: 2fr 1fr 1fr 1fr;
        gap: 45px;
    }

    .footer-brand {
        font-family: "Poppins", sans-serif;
        font-size: 20px;
        font-weight: 800;
        margin-bottom: 12px;
    }

    .footer-brand span {
        color: #a5b4fc;
    }

    .footer-about {
        color: #9ca3af;
        font-size: 12px;
        max-width: 330px;
        line-height: 1.8;
    }

    .socials {
        display: flex;
        gap: 8px;
        margin-top: 18px;
    }

    .socials a {
        width: 34px;
        height: 34px;
        border-radius: 9px;
        background: rgba(255,255,255,0.08);
        display: grid;
        place-items: center;
        font-size: 13px;
        transition: 0.2s;
    }

    .socials a:hover {
        background: var(--accent);
    }

    .footer-column h4 {
        font-size: 12px;
        margin-bottom: 15px;
    }

    .footer-column a {
        display: block;
        color: #9ca3af;
        font-size: 11px;
        margin-bottom: 10px;
    }

    .footer-column a:hover {
        color: white;
    }

    .copyright {
        border-top: 1px solid rgba(255,255,255,0.08);
        margin-top: 40px;
        padding-top: 20px;
        text-align: center;
        color: #6b7280;
        font-size: 10px;
    }

    /* =========================
       CART DRAWER
    ========================== */

    .overlay {
        position: fixed;
        inset: 0;
        background: rgba(15,23,42,0.45);
        z-index: 150;
        opacity: 0;
        visibility: hidden;
        transition: 0.25s;
    }

    .overlay.show {
        opacity: 1;
        visibility: visible;
    }

    .cart-drawer {
        position: fixed;
        right: 0;
        top: 0;
        height: 100vh;
        width: min(420px, 100%);
        background: white;
        z-index: 200;
        transform: translateX(100%);
        transition: 0.3s ease;
        display: flex;
        flex-direction: column;
    }

    .cart-drawer.open {
        transform: translateX(0);
    }

    .cart-header {
        padding: 20px;
        border-bottom: 1px solid var(--border);
        display: flex;
        align-items: center;
        justify-content: space-between;
    }

    .cart-header h3 {
        font-family: "Poppins", sans-serif;
    }

    .close-btn {
        width: 35px;
        height: 35px;
        border: 0;
        background: #f3f4f6;
        border-radius: 10px;
    }

    .cart-items {
        flex: 1;
        overflow-y: auto;
        padding: 18px;
    }

    .empty-cart {
        height: 100%;
        display: grid;
        place-items: center;
        text-align: center;
        color: var(--secondary);
    }

    .empty-cart i {
        font-size: 42px;
        color: #d1d5db;
        margin-bottom: 10px;
    }

    .cart-item {
        display: flex;
        gap: 12px;
        padding: 13px 0;
        border-bottom: 1px solid var(--border);
    }

    .cart-item img {
        width: 65px;
        height: 65px;
        border-radius: 10px;
        object-fit: cover;
    }

    .cart-item-info {
        flex: 1;
    }

    .cart-item-info strong {
        display: block;
        font-size: 12px;
        margin-bottom: 4px;
    }

    .cart-item-price {
        font-size: 12px;
        font-weight: 700;
        color: var(--accent);
    }

    .quantity-controls {
        display: flex;
        align-items: center;
        gap: 7px;
        margin-top: 8px;
    }

    .quantity-controls button {
        width: 25px;
        height: 25px;
        border: 1px solid var(--border);
        background: white;
        border-radius: 6px;
    }

    .quantity-controls span {
        font-size: 11px;
        font-weight: 700;
    }

    .remove-item {
        border: 0;
        background: transparent;
        color: #9ca3af;
        align-self: flex-start;
    }

    .cart-footer {
        padding: 20px;
        border-top: 1px solid var(--border);
    }

    .subtotal {
        display: flex;
        justify-content: space-between;
        font-weight: 800;
        margin-bottom: 15px;
    }

    .checkout-btn {
        width: 100%;
        padding: 13px;
        border: 0;
        border-radius: 11px;
        background: var(--accent);
        color: white;
        font-weight: 700;
    }

    /* =========================
       TOAST
    ========================== */

    .toast {
        position: fixed;
        right: 20px;
        bottom: 20px;
        z-index: 300;
        background: var(--primary);
        color: white;
        padding: 13px 17px;
        border-radius: 11px;
        font-size: 12px;
        box-shadow: var(--shadow-hover);
        transform: translateY(100px);
        opacity: 0;
        transition: 0.3s;
    }

    .toast.show {
        transform: translateY(0);
        opacity: 1;
    }

    /* =========================
       MOBILE NAV
    ========================== */

    .mobile-bottom-nav {
        display: none;
    }

    /* =========================
       RESPONSIVE
    ========================== */

    @media (max-width: 1100px) {

        .categories {
            grid-template-columns: repeat(3, 1fr);
        }

        .products {
            grid-template-columns: repeat(3, 1fr);
        }

        .account {
            display: none;
        }
    }

    @media (max-width: 850px) {

        .header-main {
            gap: 12px;
        }

        .mobile-menu-btn {
            display: block;
        }

        .nav-row {
            display: none;
        }

        .search-box {
            order: 5;
            width: 100%;
            max-width: none;
            flex-basis: 100%;
        }

        .header-main {
            flex-wrap: wrap;
            padding: 12px 0;
        }

        .header-actions {
            margin-left: auto;
        }

        .hero {
            min-height: 410px;
        }

        .hero-content {
            padding: 40px;
        }

        .trust-row {
            grid-template-columns: repeat(2, 1fr);
        }

        .deal-banner {
            grid-template-columns: 1fr;
        }

        .deal-image {
            min-height: 240px;
            order: -1;
        }

        .reviews-grid {
            grid-template-columns: 1fr;
        }

        .newsletter {
            flex-direction: column;
            align-items: flex-start;
        }

        .footer-grid {
            grid-template-columns: 1fr 1fr;
        }

        .mobile-bottom-nav {
            position: fixed;
            display: flex;
            bottom: 0;
            left: 0;
            right: 0;
            height: 64px;
            background: white;
            border-top: 1px solid var(--border);
            z-index: 90;
            justify-content: space-around;
            align-items: center;
        }

        .mobile-bottom-nav a {
            font-size: 10px;
            color: var(--secondary);
            display: flex;
            flex-direction: column;
            align-items: center;
            gap: 4px;
        }

        .mobile-bottom-nav a i {
            font-size: 17px;
        }

        .mobile-bottom-nav a.active {
            color: var(--accent);
        }

        body {
            padding-bottom: 64px;
        }
    }

    @media (max-width: 600px) {

        .container {
            width: min(100% - 24px, var(--container));
        }

        .offer-bar {
            font-size: 11px;
        }

        .logo {
            font-size: 18px;
        }

        .logo-icon {
            width: 34px;
            height: 34px;
        }

        .header-btn {
            width: 37px;
        }

        .hero-section {
            padding-top: 12px;
        }

        .hero {
            min-height: 500px;
            border-radius: 20px;
            align-items: flex-end;
            background:
                linear-gradient(0deg, rgba(15,23,42,0.95) 10%, rgba(15,23,42,0.35) 100%),
                url("https://images.unsplash.com/photo-1441986300917-64674bd600d8?auto=format&fit=crop&w=1000&q=80")
                center/cover;
        }

        .hero-content {
            padding: 28px 23px;
        }

        .hero h1 {
            font-size: 34px;
        }

        .hero p {
            font-size: 13px;
        }

        .trust-row {
            grid-template-columns: 1fr 1fr;
            gap: 8px;
        }

        .trust-item {
            padding: 12px;
        }

        .trust-item span {
            font-size: 9px;
        }

        .trust-icon {
            width: 34px;
            height: 34px;
        }

        .section {
            padding: 42px 0;
        }

        .section-header {
            align-items: center;
        }

        .section-title h2 {
            font-size: 22px;
        }

        .categories {
            grid-template-columns: repeat(2, 1fr);
            gap: 10px;
        }

        .category-card {
            padding: 17px 10px;
        }

        .products {
            grid-template-columns: repeat(2, 1fr);
            gap: 10px;
        }

        .product-image {
            height: 170px;
        }

        .product-body {
            padding: 12px;
        }

        .product-title {
            font-size: 12px;
        }

        .price {
            font-size: 15px;
        }

        .add-cart {
            font-size: 11px;
            padding: 9px;
        }

        .deal-content {
            padding: 30px 23px;
        }

        .deal-content h2 {
            font-size: 27px;
        }

        .deal-image {
            min-height: 190px;
        }

        .newsletter {
            padding: 28px 20px;
        }

        .newsletter-form {
            flex-direction: column;
        }

        .newsletter-form .btn {
            width: 100%;
        }

        .footer-grid {
            grid-template-columns: 1fr 1fr;
            gap: 30px;
        }

        .footer-grid > div:first-child {
            grid-column: 1 / -1;
        }

        .footer-column h4 {
            font-size: 11px;
        }

        .footer-column a {
            font-size: 10px;
        }
    }

    @media (max-width: 400px) {

        .header-actions {
            gap: 0;
        }

        .header-btn:nth-child(1) {
            display: none;
        }

        .hero h1 {
            font-size: 30px;
        }

        .trust-item {
            flex-direction: column;
            text-align: center;
        }

        .products {
            grid-template-columns: 1fr 1fr;
        }
    }
</style>
```

</head>

<body>

```
<!-- =========================
     OFFER BAR
========================== -->

<div class="offer-bar">
    <span>LIMITED TIME:</span>
    Get 20% off your first order — Free shipping on orders over $50
</div>

<!-- =========================
     HEADER
========================== -->

<header>

    <div class="container header-main">

        <button class="mobile-menu-btn" id="mobileMenuBtn">
            <i class="fas fa-bars"></i>
        </button>

        <a href="#" class="logo">
            <div class="logo-icon">
                <i class="fas fa-bag-shopping"></i>
            </div>
            Nexus<span>Shop</span>
        </a>

        <div class="search-box">
            <i class="fas fa-search"></i>
            <input
                type="search"
                id="searchInput"
                placeholder="Search for products, brands and more..."
            >
            <button id="clearSearch">
                <i class="fas fa-xmark"></i>
            </button>
        </div>

        <div class="header-actions">

            <button class="header-btn" title="Wishlist">
                <i class="far fa-heart"></i>
                <span class="badge-count" id="wishlistCount">0</span>
            </button>

            <button class="header-btn" id="openCart" title="Shopping Cart">
                <i class="fas fa-bag-shopping"></i>
                <span class="badge-count" id="cartCount">0</span>
            </button>

            <div class="account">
                <div class="avatar">
                    <i class="far fa-user"></i>
                </div>

                <div class="account-text">
                    <strong>Hello, Shopper</strong>
                    <span>My Account</span>
                </div>
            </div>

        </div>

    </div>

    <div class="nav-row">
        <div class="container nav-inner">

            <a href="#categories" class="category-link">
                <i class="fas fa-layer-group"></i>
                Categories
            </a>

            <a href="#products" class="active">Home</a>
            <a href="#products">Trending</a>
            <a href="#deals">Flash Deals</a>
            <a href="#reviews">Customer Reviews</a>
            <a href="#newsletter">Offers</a>

        </div>
    </div>

</header>

<!-- =========================
     HERO
========================== -->

<main>

    <section class="hero-section">
        <div class="container">

            <div class="hero">

                <div class="hero-content">

                    <div class="hero-label">
                        <i class="fas fa-sparkles"></i>
                        NEW SEASON COLLECTION
                    </div>

                    <h1>
                        Everything you love,
                        <span>all in one place.</span>
                    </h1>

                    <p>
                        Discover premium technology, fashion, accessories
                        and everyday essentials at prices you'll love.
                    </p>

                    <div class="hero-buttons">
                        <button class="btn btn-primary" id="shopNow">
                            Shop Collection
                            <i class="fas fa-arrow-right"></i>
                        </button>

                        <button class="btn btn-white" id="heroDeals">
                            View Deals
                        </button>
                    </div>

                </div>

            </div>

        </div>
    </section>

    <!-- =========================
         TRUST FEATURES
    ========================== -->

    <section class="container">

        <div class="trust-row">

            <div class="trust-item">
                <div class="trust-icon">
                    <i class="fas fa-truck-fast"></i>
                </div>

                <div>
                    <strong>Free Shipping</strong>
                    <span>On orders over $50</span>
                </div>
            </div>

            <div class="trust-item">
                <div class="trust-icon">
                    <i class="fas fa-shield-halved"></i>
                </div>

                <div>
                    <strong>Secure Payment</strong>
                    <span>100% protected checkout</span>
                </div>
            </div>

            <div class="trust-item">
                <div class="trust-icon">
                    <i class="fas fa-rotate-left"></i>
                </div>

                <div>
                    <strong>Easy Returns</strong>
                    <span>30-day return policy</span>
                </div>
            </div>

            <div class="trust-item">
                <div class="trust-icon">
                    <i class="fas fa-headset"></i>
                </div>

                <div>
                    <strong>24/7 Support</strong>
                    <span>We're here to help</span>
                </div>
            </div>

        </div>

    </section>

    <!-- =========================
         CATEGORIES
    ========================== -->

    <section class="section" id="categories">

        <div class="container">

            <div class="section-header">

                <div class="section-title">
                    <h2>Shop by Category</h2>
                    <p>Find exactly what you're looking for.</p>
                </div>

                <a href="#products" class="view-all">
                    View all <i class="fas fa-arrow-right"></i>
                </a>

            </div>

            <div class="categories" id="categoriesGrid"></div>

        </div>

    </section>

    <!-- =========================
         PRODUCTS
    ========================== -->

    <section class="section" id="products">

        <div class="container">

            <div class="section-header">

                <div class="section-title">
                    <h2>Popular Products</h2>
                    <p>Our customers' most-loved picks.</p>
                </div>

            </div>

            <div class="filter-row" id="filterRow"></div>

            <div class="products" id="productsGrid"></div>

        </div>

    </section>

    <!-- =========================
         FLASH DEAL
    ========================== -->

    <section class="deal-section" id="deals">

        <div class="container">

            <div class="deal-banner">

                <div class="deal-content">

                    <div class="deal-tag">
                        <i class="fas fa-bolt"></i>
                        Flash Deal
                    </div>

                    <h2>Power meets portability.</h2>

                    <p>
                        Upgrade your workspace with the MacBook Air.
                        Limited-time pricing while supplies last.
                    </p>

                    <div class="timer">

                        <div class="timer-box">
                            <strong id="days">01</strong>
                            <span>DAYS</span>
                        </div>

                        <div class="timer-box">
                            <strong id="hours">12</strong>
                            <span>HOURS</span>
                        </div>

                        <div class="timer-box">
                            <strong id="minutes">45</strong>
                            <span>MINUTES</span>
                        </div>

                        <div class="timer-box">
                            <strong id="seconds">30</strong>
                            <span>SECONDS</span>
                        </div>

                    </div>

                    <button class="btn btn-primary" id="dealButton">
                        Shop Deal
                        <i class="fas fa-arrow-right"></i>
                    </button>

                </div>

                <div class="deal-image"></div>

            </div>

        </div>

    </section>

    <!-- =========================
         REVIEWS
    ========================== -->

    <section class="section" id="reviews">

        <div class="container">

            <div class="section-header">

                <div class="section-title">
                    <h2>Loved by shoppers</h2>
                    <p>See what our customers have to say.</p>
                </div>

            </div>

            <div class="reviews-grid">

                <div class="review-card">

                    <div class="review-stars">
                        ★★★★★
                    </div>

                    <p>
                        "The website was super easy to navigate and my
                        order arrived earlier than expected. Excellent
                        experience."
                    </p>

                    <div class="review-user">

                        <img
                            class="review-avatar"
                            src="https://images.unsplash.com/photo-1494790108377-be9c29b29330?auto=format&fit=crop&w=100&q=80"
                            alt="Customer"
                        >

                        <div>
                            <strong>Sarah Johnson</strong>
                            <span>Verified Customer</span>
                        </div>

                    </div>

                </div>

                <div class="review-card">

                    <div class="review-stars">
                        ★★★★★
                    </div>

                    <p>
                        "Great product selection and really smooth
                        checkout. I found exactly what I needed."
                    </p>

                    <div class="review-user">

                        <img
                            class="review-avatar"
                            src="https://images.unsplash.com/photo-1500648767791-00dcc994a43e?auto=format&fit=crop&w=100&q=80"
                            alt="Customer"
                        >

                        <div>
                            <strong>Michael Lee</strong>
                            <span>Verified Customer</span>
                        </div>

                    </div>

                </div>

                <div class="review-card">

                    <div class="review-stars">
                        ★★★★★
                    </div>

                    <p>
                        "The deals are actually good, and customer support
                        was very responsive. Definitely shopping here again."
                    </p>

                    <div class="review-user">

                        <img
                            class="review-avatar"
                            src="https://images.unsplash.com/photo-1534528741775-53994a69daeb?auto=format&fit=crop&w=100&q=80"
                            alt="Customer"
                        >

                        <div>
                            <strong>Emma Wilson</strong>
                            <span>Verified Customer</span>
                        </div>

                    </div>

                </div>

            </div>

        </div>

    </section>

    <!-- =========================
         NEWSLETTER
    ========================== -->

    <section class="section" id="newsletter">

        <div class="container">

            <div class="newsletter">

                <div>
                    <h2>Get the best deals first.</h2>

                    <p>
                        Subscribe for exclusive offers, new arrivals
                        and member-only discounts.
                    </p>
                </div>

                <form class="newsletter-form" id="newsletterForm">

                    <input
                        type="email"
                        id="emailInput"
                        placeholder="Your email address"
                        required
                    >

                    <button class="btn btn-primary">
                        Subscribe
                    </button>

                </form>

            </div>

        </div>

    </section>

</main>

<!-- =========================
     FOOTER
========================== -->

<footer>

    <div class="container">

        <div class="footer-grid">

            <div>

                <div class="footer-brand">
                    Nexus<span>Shop</span>
                </div>

                <p class="footer-about">
                    Your modern destination for technology, fashion,
                    accessories and everyday essentials.
                </p>

                <div class="socials">

                    <a href="#">
                        <i class="fab fa-facebook-f"></i>
                    </a>

                    <a href="#">
                        <i class="fab fa-instagram"></i>
                    </a>

                    <a href="#">
                        <i class="fab fa-x-twitter"></i>
                    </a>

                    <a href="#">
                        <i class="fab fa-youtube"></i>
                    </a>

                </div>

            </div>

            <div class="footer-column">

                <h4>SHOP</h4>

                <a href="#products">All Products</a>
                <a href="#categories">Categories</a>
                <a href="#deals">Flash Deals</a>
                <a href="#">New Arrivals</a>

            </div>

            <div class="footer-column">

                <h4>HELP</h4>

                <a href="#">Contact Us</a>
                <a href="#">Shipping</a>
                <a href="#">Returns</a>
                <a href="#">FAQ</a>

            </div>

            <div class="footer-column">

                <h4>COMPANY</h4>

                <a href="#">About Us</a>
                <a href="#">Careers</a>
                <a href="#">Privacy</a>
                <a href="#">Terms</a>

            </div>

        </div>

        <div class="copyright">
            © <span id="year"></span> NexusShop. All rights reserved.
        </div>

    </div>

</footer>

<!-- =========================
     MOBILE BOTTOM NAV
========================== -->

<nav class="mobile-bottom-nav">

    <a href="#products" class="active">
        <i class="fas fa-house"></i>
        Home
    </a>

    <a href="#categories">
        <i class="fas fa-layer-group"></i>
        Categories
    </a>

    <a href="#deals">
        <i class="fas fa-bolt"></i>
        Deals
    </a>

    <a href="#" id="mobileCart">
        <i class="fas fa-bag-shopping"></i>
        Cart
    </a>

</nav>

<!-- =========================
     CART
========================== -->

<div class="overlay" id="overlay"></div>

<aside class="cart-drawer" id="cartDrawer">

    <div class="cart-header">

        <h3>Your Cart</h3>

        <button class="close-btn" id="closeCart">
            <i class="fas fa-xmark"></i>
        </button>

    </div>

    <div class="cart-items" id="cartItems">

        <div class="empty-cart">

            <div>
                <i class="fas fa-bag-shopping"></i>
                <p>Your cart is empty.</p>
                <small>Add something you love!</small>
            </div>

        </div>

    </div>

    <div class="cart-footer">

        <div class="subtotal">
            <span>Subtotal</span>
            <span id="subtotal">$0.00</span>
        </div>

        <button class="checkout-btn" id="checkoutButton">
            Proceed to Checkout
        </button>

    </div>

</aside>

<!-- =========================
     TOAST
========================== -->

<div class="toast" id="toast"></div>

<script>

    /* =========================
       PRODUCT DATA
    ========================== */

    const PRODUCTS = [

        {
            id: 1,
            title: "iPhone 14 Pro Max",
            category: "Smartphones",
            price: 1099,
            oldPrice: 1199,
            rating: 5,
            reviews: 128,
            badge: "NEW",
            image: "https://images.unsplash.com/photo-1592899677977-9c10ca588bbd?auto=format&fit=crop&w=700&q=80"
        },

        {
            id: 2,
            title: "MacBook Pro 14",
            category: "Laptops",
            price: 1999,
            oldPrice: 2199,
            rating: 5,
            reviews: 86,
            badge: "POPULAR",
            image: "https://images.unsplash.com/photo-1517336714731-489689fd1ca8?auto=format&fit=crop&w=700&q=80"
        },

        {
            id: 3,
            title: "Apple Watch Series 8",
            category: "Accessories",
            price: 349,
            oldPrice: 399,
            rating: 5,
            reviews: 214,
            badge: "-25%",
            image: "https://images.unsplash.com/photo-1546868871-7041f2a55e12?auto=format&fit=crop&w=700&q=80"
        },

        {
            id: 4,
            title: "Nike Air Max 270",
            category: "Footwear",
            price: 150,
            oldPrice: 180,
            rating: 4,
            reviews: 53,
            badge: "SALE",
            image: "https://images.unsplash.com/photo-1542291026-7eec264c27ff?auto=format&fit=crop&w=700&q=80"
        },

        {
            id: 5,
            title: "Sony A7 IV Camera",
            category: "Gadgets",
            price: 2499,
            oldPrice: 2699,
            rating: 5,
            reviews: 42,
            badge: "PRO",
            image: "https://images.unsplash.com/photo-1516035069371-29a1b244cc32?auto=format&fit=crop&w=700&q=80"
        },

        {
            id: 6,
            title: "Premium Perfume",
            category: "Beauty",
            price: 120,
            oldPrice: 145,
            rating: 5,
            reviews: 189,
            badge: "BEST SELLER",
            image: "https://images.unsplash.com/photo-1541643600914-78b084683601?auto=format&fit=crop&w=700&q=80"
        },

        {
            id: 7,
            title: "Travel Backpack",
            category: "Accessories",
            price: 79,
            oldPrice: 99,
            rating: 4,
            reviews: 67,
            badge: "SALE",
            image: "https://images.unsplash.com/photo-1553062407-98eeb64c6a62?auto=format&fit=crop&w=700&q=80"
        },

        {
            id: 8,
            title: "Sony WH-1000XM5",
            category: "Gadgets",
            price: 399,
            oldPrice: 449,
            rating: 5,
            reviews: 156,
            badge: "HOT",
            image: "https://images.unsplash.com/photo-1583394838336-acd977736f90?auto=format&fit=crop&w=700&q=80"
        }

    ];


    /* =========================
       CATEGORIES
    ========================== */

    const CATEGORIES = [

        {
            name: "Smartphones",
            icon: "fa-mobile-screen-button",
            description: "Latest phones"
        },

        {
            name: "Laptops",
            icon: "fa-laptop",
            description: "Work & gaming"
        },

        {
            name: "Fashion",
            icon: "fa-shirt",
            description: "Trending styles"
        },

        {
            name: "Gadgets",
            icon: "fa-headphones",
            description: "Smart accessories"
        },

        {
            name: "Footwear",
            icon: "fa-shoe-prints",
            description: "Step in style"
        },

        {
            name: "Accessories",
            icon: "fa-watch",
            description: "Complete your look"
        }

    ];


    let cart = [];
    let wishlist = [];


    const productsGrid =
        document.getElementById("productsGrid");

    const categoriesGrid =
        document.getElementById("categoriesGrid");

    const filterRow =
        document.getElementById("filterRow");

    const searchInput =
        document.getElementById("searchInput");

    const cartCount =
        document.getElementById("cartCount");

    const wishlistCount =
        document.getElementById("wishlistCount");

    const cartDrawer =
        document.getElementById("cartDrawer");

    const overlay =
        document.getElementById("overlay");

    const toast =
        document.getElementById("toast");


    /* =========================
       TOAST
    ========================== */

    let toastTimer;

    function showToast(message) {

        toast.textContent = message;

        toast.classList.add("show");

        clearTimeout(toastTimer);

        toastTimer = setTimeout(() => {

            toast.classList.remove("show");

        }, 2200);
    }


    /* =========================
       CATEGORIES
    ========================== */

    function renderCategories() {

        categoriesGrid.innerHTML = "";

        CATEGORIES.forEach(category => {

            const card =
                document.createElement("div");

            card.className = "category-card";

            card.innerHTML = `
                <div class="category-icon">
                    <i class="fas ${category.icon}"></i>
                </div>

                <h3>${category.name}</h3>

                <p>${category.description}</p>
            `;

            card.addEventListener("click", () => {

                filterProducts(category.name);

                document
                    .getElementById("products")
                    .scrollIntoView({
                        behavior: "smooth"
                    });

            });

            categoriesGrid.appendChild(card);

        });

    }


    /* =========================
       FILTER BUTTONS
    ========================== */

    function renderFilters() {

        const categories =
            ["All", ...new Set(
                PRODUCTS.map(product => product.category)
            )];

        filterRow.innerHTML = "";

        categories.forEach((category, index) => {

            const button =
                document.createElement("button");

            button.className =
                `filter-btn ${index === 0 ? "active" : ""}`;

            button.textContent = category;

            button.addEventListener("click", () => {

                document
                    .querySelectorAll(".filter-btn")
                    .forEach(btn =>
                        btn.classList.remove("active")
                    );

                button.classList.add("active");

                if (category === "All") {

                    renderProducts(PRODUCTS);

                } else {

                    renderProducts(
                        PRODUCTS.filter(
                            product =>
                                product.category === category
                        )
                    );

                }

            });

            filterRow.appendChild(button);

        });

    }


    /* =========================
       PRODUCTS
    ========================== */

    function renderProducts(products) {

        productsGrid.innerHTML = "";

        if (!products.length) {

            productsGrid.innerHTML = `
                <div style="
                    grid-column:1/-1;
                    background:white;
                    border:1px solid var(--border);
                    border-radius:18px;
                    padding:50px;
                    text-align:center;
                ">
                    <i class="fas fa-search"
                       style="font-size:30px;color:#cbd5e1;margin-bottom:12px">
                    </i>

                    <h3>No products found</h3>

                    <p style="
                        color:var(--secondary);
                        font-size:13px;
                        margin-top:5px
                    ">
                        Try searching for something else.
                    </p>
                </div>
            `;

            return;
        }


        products.forEach(product => {

            const card =
                document.createElement("article");

            card.className = "product-card";

            const isWishlisted =
                wishlist.includes(product.id);

            const badgeClass =
                product.badge &&
                (
                    product.badge.includes("%") ||
                    product.badge === "SALE"
                )
                ? "sale"
                : "";


            card.innerHTML = `

                <div class="product-image">

                    ${
                        product.badge
                        ?
                        `
                        <span class="product-badge ${badgeClass}">
                            ${product.badge}
                        </span>
                        `
                        :
                        ""
                    }

                    <button
                        class="wishlist-btn ${isWishlisted ? "active" : ""}"
                        data-wishlist="${product.id}"
                        aria-label="Wishlist"
                    >
                        <i class="${isWishlisted ? "fas" : "far"} fa-heart"></i>
                    </button>

                    <img
                        src="${product.image}"
                        alt="${product.title}"
                        loading="lazy"
                    >

                </div>

                <div class="product-body">

                    <div class="product-category">
                        ${product.category}
                    </div>

                    <div class="product-title">
                        ${product.title}
                    </div>

                    <div class="rating-row">

                        <span class="stars">
                            ${"★".repeat(product.rating)}
                        </span>

                        <span class="reviews">
                            (${product.reviews})
                        </span>

                    </div>

                    <div class="price-row">

                        <span class="price">
                            $${product.price.toLocaleString()}
                        </span>

                        ${
                            product.oldPrice
                            ?
                            `
                            <span class="old-price">
                                $${product.oldPrice.toLocaleString()}
                            </span>
                            `
                            :
                            ""
                        }

                    </div>

                    <button
                        class="add-cart"
                        data-product="${product.id}"
                    >
                        <i class="fas fa-cart-plus"></i>
                        Add to Cart
                    </button>

                </div>
            `;


            productsGrid.appendChild(card);

        });


        /* Wishlist */

        document
            .querySelectorAll("[data-wishlist]")
            .forEach(button => {

                button.addEventListener("click", () => {

                    const id =
                        Number(button.dataset.wishlist);

                    toggleWishlist(id);

                });

            });


        /* Add cart */

        document
            .querySelectorAll("[data-product]")
            .forEach(button => {

                button.addEventListener("click", () => {

                    const id =
                        Number(button.dataset.product);

                    addToCart(id);

                });

            });

    }


    /* =========================
       WISHLIST
    ========================== */

    function toggleWishlist(id) {

        if (wishlist.includes(id)) {

            wishlist =
                wishlist.filter(item => item !== id);

            showToast("Removed from wishlist");

        } else {

            wishlist.push(id);

            showToast("Added to wishlist ❤️");

        }

        updateCounts();

        renderProducts(
            getCurrentProducts()
        );

    }


    function getCurrentProducts() {

        const search =
            searchInput.value
                .trim()
                .toLowerCase();

        if (!search) {

            return PRODUCTS;

        }

        return PRODUCTS.filter(product =>

            product.title
                .toLowerCase()
                .includes(search)

            ||

            product.category
                .toLowerCase()
                .includes(search)

        );

    }


    /* =========================
       CART
    ========================== */

    function addToCart(id) {

        const product =
            PRODUCTS.find(item => item.id === id);

        if (!product) return;


        const existing =
            cart.find(item => item.id === id);


        if (existing) {

            existing.quantity++;

        } else {

            cart.push({
                ...product,
                quantity: 1
            });

        }


        updateCart();

        showToast(`${product.title} added to cart`);

    }


    function removeFromCart(id) {

        cart =
            cart.filter(item => item.id !== id);

        updateCart();

    }


    function changeQuantity(id, change) {

        const item =
            cart.find(product => product.id === id);

        if (!item) return;

        item.quantity += change;

        if (item.quantity <= 0) {

            removeFromCart(id);

        } else {

            updateCart();

        }

    }


    function updateCart() {

        const totalItems =
            cart.reduce(
                (total, item) =>
                    total + item.quantity,
                0
            );

        cartCount.textContent =
            totalItems;


        const cartItems =
            document.getElementById("cartItems");


        if (!cart.length) {

            cartItems.innerHTML = `
                <div class="empty-cart">
                    <div>
                        <i class="fas fa-bag-shopping"></i>
                        <p>Your cart is empty.</p>
                        <small>Add something you love!</small>
                    </div>
                </div>
            `;

        } else {

            cartItems.innerHTML = "";

            cart.forEach(item => {

                const element =
                    document.createElement("div");

                element.className = "cart-item";

                element.innerHTML = `

                    <img
                        src="${item.image}"
                        alt="${item.title}"
                    >

                    <div class="cart-item-info">

                        <strong>${item.title}</strong>

                        <div class="cart-item-price">
                            $${item.price.toLocaleString()}
                        </div>

                        <div class="quantity-controls">

                            <button
                                data-minus="${item.id}"
                            >
                                -
                            </button>

                            <span>
                                ${item.quantity}
                            </span>

                            <button
                                data-plus="${item.id}"
                            >
                                +
                            </button>

                        </div>

                    </div>

                    <button
                        class="remove-item"
                        data-remove="${item.id}"
                    >
                        <i class="fas fa-trash"></i>
                    </button>

                `;

                cartItems.appendChild(element);

            });


            document
                .querySelectorAll("[data-minus]")
                .forEach(button => {

                    button.addEventListener("click", () => {

                        changeQuantity(
                            Number(button.dataset.minus),
                            -1
                        );

                    });

                });


            document
                .querySelectorAll("[data-plus]")
                .forEach(button => {

                    button.addEventListener("click", () => {

                        changeQuantity(
                            Number(button.dataset.plus),
                            1
                        );

                    });

                });


            document
                .querySelectorAll("[data-remove]")
                .forEach(button => {

                    button.addEventListener("click", () => {

                        removeFromCart(
                            Number(button.dataset.remove)
                        );

                    });

                });

        }


        const subtotal =
            cart.reduce(
                (total, item) =>
                    total + item.price * item.quantity,
                0
            );


        document.getElementById("subtotal")
            .textContent =
            `$${subtotal.toLocaleString()}.00`;

    }


    /* =========================
       COUNTS
    ========================== */

    function updateCounts() {

        wishlistCount.textContent =
            wishlist.length;

    }


    /* =========================
       CART OPEN / CLOSE
    ========================== */

    function openCart() {

        cartDrawer.classList.add("open");

        overlay.classList.add("show");

        document.body.classList.add("no-scroll");

    }


    function closeCart() {

        cartDrawer.classList.remove("open");

        overlay.classList.remove("show");

        document.body.classList.remove("no-scroll");

    }


    document
        .getElementById("openCart")
        .addEventListener("click", openCart);


    document
        .getElementById("mobileCart")
        .addEventListener("click", event => {

            event.preventDefault();

            openCart();

        });


    document
        .getElementById("closeCart")
        .addEventListener("click", closeCart);


    overlay.addEventListener("click", closeCart);


    /* =========================
       SEARCH
    ========================== */

    searchInput.addEventListener("input", () => {

        renderProducts(
            getCurrentProducts()
        );

    });


    document
        .getElementById("clearSearch")
        .addEventListener("click", () => {

            searchInput.value = "";

            renderProducts(PRODUCTS);

        });


    /* =========================
       SHOP BUTTONS
    ========================== */

    document
        .getElementById("shopNow")
        .addEventListener("click", () => {

            document
                .getElementById("products")
                .scrollIntoView({
                    behavior: "smooth"
                });

        });


    document
        .getElementById("heroDeals")
        .addEventListener("click", () => {

            document
                .getElementById("deals")
                .scrollIntoView({
                    behavior: "smooth"
                });

        });


    document
        .getElementById("dealButton")
        .addEventListener("click", () => {

            const deal =
                PRODUCTS.find(
                    product =>
                        product.title.includes("MacBook")
                );

            if (deal) {

                addToCart(deal.id);

                openCart();

            }

        });


    /* =========================
       NEWSLETTER
    ========================== */

    document
        .getElementById("newsletterForm")
        .addEventListener("submit", event => {

            event.preventDefault();

            const email =
                document
                    .getElementById("emailInput")
                    .value
                    .trim();

            if (!email) return;

            showToast(
                "You're subscribed! 🎉"
            );

            event.target.reset();

        });


    /* =========================
       CHECKOUT
    ========================== */

    document
        .getElementById("checkoutButton")
        .addEventListener("click", () => {

            if (!cart.length) {

                showToast(
                    "Your cart is empty"
                );

                return;

            }

            showToast(
                "Checkout is ready for integration"
            );

        });


    /* =========================
       COUNTDOWN
    ========================== */

    const dealEnd =
        new Date().getTime()
        +
        (
            1 * 24 * 60 * 60 * 1000
            +
            12 * 60 * 60 * 1000
            +
            45 * 60 * 1000
        );


    function updateTimer() {

        const now =
            new Date().getTime();

        const difference =
            dealEnd - now;


        if (difference <= 0) return;


        const days =
            Math.floor(
                difference /
                (1000 * 60 * 60 * 24)
            );


        const hours =
            Math.floor(
                (difference %
                (1000 * 60 * 60 * 24))
                /
                (1000 * 60 * 60)
            );


        const minutes =
            Math.floor(
                (difference %
                (1000 * 60 * 60))
                /
                (1000 * 60)
            );


        const seconds =
            Math.floor(
                (difference %
                (1000 * 60))
                /
                1000
            );


        document.getElementById("days")
            .textContent =
            String(days).padStart(2, "0");


        document.getElementById("hours")
            .textContent =
            String(hours).padStart(2, "0");


        document.getElementById("minutes")
            .textContent =
            String(minutes).padStart(2, "0");


        document.getElementById("seconds")
            .textContent =
            String(seconds).padStart(2, "0");

    }


    setInterval(updateTimer, 1000);

    updateTimer();


    /* =========================
       MOBILE MENU
    ========================== */

    document
        .getElementById("mobileMenuBtn")
        .addEventListener("click", () => {

            const nav =
                document.querySelector(".nav-row");

            if (nav.style.display === "block") {

                nav.style.display = "none";

            } else {

                nav.style.display = "block";
                nav.style.background = "white";

            }

        });


    /* =========================
       INITIALIZATION
    ========================== */

    function init() {

        renderCategories();

        renderFilters();

        renderProducts(PRODUCTS);

        updateCart();

        updateCounts();

        document.getElementById("year")
            .textContent =
            new Date().getFullYear();

    }


    init();

</script>
```

</body>
</html>
