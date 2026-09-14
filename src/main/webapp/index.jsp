<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<title>VasuMart — Premium Shopping Experience</title>

<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>

<link href="https://fonts.googleapis.com/css2?family=DM+Sans:wght@400;500;600;700&family=Space+Grotesk:wght@500;600;700&display=swap" rel="stylesheet">

<link
  rel="stylesheet"
  href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css"
/>

<style>

:root {
    --bg: #070b14;
    --bg-soft: #0d1320;
    --card: #111827;
    --card-2: #151d2d;
    --white: #ffffff;
    --text: #e5e7eb;
    --muted: #8b95a7;
    --blue: #4f8cff;
    --blue-dark: #3674e8;
    --cyan: #22d3ee;
    --green: #22c55e;
    --red: #ef4444;
    --yellow: #fbbf24;
    --border: rgba(255,255,255,0.08);
    --glass: rgba(13,19,32,0.78);
    --radius: 20px;
    --max: 1280px;
    --shadow: 0 20px 60px rgba(0,0,0,.35);
}

* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}

html {
    scroll-behavior: smooth;
}

body {
    font-family: "DM Sans", sans-serif;
    background:
        radial-gradient(circle at 10% 0%, rgba(79,140,255,.12), transparent 30%),
        radial-gradient(circle at 90% 10%, rgba(34,211,238,.08), transparent 25%),
        var(--bg);
    color: var(--text);
    min-height: 100vh;
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

.container {
    width: min(var(--max), calc(100% - 40px));
    margin: auto;
}

/* =========================
   TOP BAR
========================= */

.top-bar {
    background: linear-gradient(90deg, #101827, #111d32, #101827);
    border-bottom: 1px solid var(--border);
    color: #b9c4d6;
    text-align: center;
    padding: 9px;
    font-size: 12px;
    letter-spacing: .2px;
}

.top-bar strong {
    color: var(--cyan);
}

/* =========================
   HEADER
========================= */

header {
    position: sticky;
    top: 0;
    z-index: 1000;
    background: rgba(7,11,20,.82);
    backdrop-filter: blur(18px);
    border-bottom: 1px solid var(--border);
}

.header {
    height: 76px;
    display: flex;
    align-items: center;
    gap: 30px;
}

.logo {
    display: flex;
    align-items: center;
    gap: 11px;
    min-width: 170px;
}

.logo-mark {
    width: 42px;
    height: 42px;
    border-radius: 13px;
    display: grid;
    place-items: center;
    color: white;
    font-size: 18px;
    background: linear-gradient(135deg, var(--blue), var(--cyan));
    box-shadow: 0 8px 25px rgba(79,140,255,.3);
}

.logo-text {
    font-family: "Space Grotesk", sans-serif;
    font-weight: 700;
    font-size: 21px;
    letter-spacing: -.5px;
}

.logo-text span {
    color: var(--cyan);
}

/* SEARCH */

.search {
    flex: 1;
    max-width: 570px;
    position: relative;
}

.search input {
    width: 100%;
    height: 46px;
    padding: 0 50px 0 45px;
    border-radius: 13px;
    border: 1px solid var(--border);
    outline: none;
    color: white;
    background: rgba(255,255,255,.045);
    transition: .25s;
}

.search input::placeholder {
    color: #697386;
}

.search input:focus {
    border-color: rgba(79,140,255,.7);
    background: rgba(255,255,255,.07);
    box-shadow: 0 0 0 4px rgba(79,140,255,.08);
}

.search i {
    position: absolute;
    left: 16px;
    top: 15px;
    color: var(--muted);
}

.search button {
    position: absolute;
    right: 7px;
    top: 7px;
    width: 32px;
    height: 32px;
    border: none;
    border-radius: 9px;
    color: var(--muted);
    background: transparent;
}

/* HEADER ACTIONS */

.header-actions {
    margin-left: auto;
    display: flex;
    align-items: center;
    gap: 8px;
}

.icon-btn {
    width: 44px;
    height: 44px;
    border: 1px solid transparent;
    border-radius: 13px;
    background: transparent;
    color: #d5dbe5;
    position: relative;
    font-size: 17px;
    transition: .25s;
}

.icon-btn:hover {
    background: rgba(255,255,255,.06);
    border-color: var(--border);
    color: var(--cyan);
}

.badge {
    position: absolute;
    right: 3px;
    top: 2px;
    min-width: 17px;
    height: 17px;
    padding: 0 4px;
    border-radius: 99px;
    display: grid;
    place-items: center;
    background: var(--blue);
    color: white;
    font-size: 9px;
    font-weight: 700;
}

.user {
    display: flex;
    align-items: center;
    gap: 10px;
    padding-left: 14px;
    border-left: 1px solid var(--border);
}

.avatar {
    width: 38px;
    height: 38px;
    border-radius: 50%;
    display: grid;
    place-items: center;
    font-weight: 700;
    background: linear-gradient(135deg,#253a62,#172337);
    border: 1px solid rgba(255,255,255,.1);
}

.user-info strong {
    display: block;
    font-size: 12px;
}

.user-info span {
    color: var(--muted);
    font-size: 10px;
}

/* =========================
   NAVIGATION
========================= */

.nav {
    border-top: 1px solid var(--border);
}

.nav-inner {
    height: 50px;
    display: flex;
    align-items: center;
    gap: 30px;
}

.nav a {
    color: #9ca7b8;
    font-size: 13px;
    font-weight: 600;
    transition: .2s;
}

.nav a:hover,
.nav a.active {
    color: white;
}

.nav a.active {
    position: relative;
}

.nav a.active::after {
    content: "";
    position: absolute;
    height: 2px;
    background: var(--cyan);
    left: 0;
    right: 0;
    bottom: -17px;
    border-radius: 10px;
}

.nav-category {
    display: flex;
    align-items: center;
    gap: 8px;
    color: white !important;
}

/* =========================
   HERO
========================= */

.hero {
    margin-top: 30px;
    min-height: 510px;
    border-radius: 28px;
    overflow: hidden;
    position: relative;
    display: flex;
    align-items: center;
    background:
        linear-gradient(90deg,
            rgba(7,11,20,.97) 0%,
            rgba(7,11,20,.9) 38%,
            rgba(7,11,20,.4) 70%,
            rgba(7,11,20,.15) 100%
        ),
        url("https://images.unsplash.com/photo-1441986300917-64674bd600d8?auto=format&fit=crop&w=1800&q=90")
        center/cover;
    border: 1px solid var(--border);
    box-shadow: var(--shadow);
}

.hero::after {
    content: "";
    position: absolute;
    width: 450px;
    height: 450px;
    border-radius: 50%;
    right: -160px;
    bottom: -220px;
    background: rgba(34,211,238,.12);
    filter: blur(30px);
}

.hero-content {
    position: relative;
    z-index: 2;
    width: 650px;
    padding: 65px;
}

.hero-tag {
    display: inline-flex;
    align-items: center;
    gap: 8px;
    padding: 8px 13px;
    border-radius: 99px;
    color: #bcecff;
    background: rgba(34,211,238,.1);
    border: 1px solid rgba(34,211,238,.2);
    font-size: 11px;
    font-weight: 700;
    margin-bottom: 22px;
}

.hero-tag i {
    color: var(--cyan);
}

.hero h1 {
    font-family: "Space Grotesk", sans-serif;
    font-size: clamp(42px, 5vw, 70px);
    line-height: 1;
    letter-spacing: -3px;
    color: white;
    margin-bottom: 24px;
}

.hero h1 span {
    background: linear-gradient(90deg,var(--blue),var(--cyan));
    -webkit-background-clip: text;
    -webkit-text-fill-color: transparent;
}

.hero p {
    color: #9ca8b9;
    max-width: 520px;
    line-height: 1.8;
    font-size: 15px;
    margin-bottom: 32px;
}

.hero-buttons {
    display: flex;
    gap: 12px;
}

.btn {
    border: none;
    border-radius: 12px;
    padding: 14px 21px;
    font-weight: 700;
    font-size: 13px;
    display: inline-flex;
    align-items: center;
    gap: 9px;
    transition: .25s;
}

.btn-primary {
    background: linear-gradient(135deg,var(--blue),#6d7cff);
    color: white;
    box-shadow: 0 10px 25px rgba(79,140,255,.25);
}

.btn-primary:hover {
    transform: translateY(-2px);
    box-shadow: 0 15px 35px rgba(79,140,255,.35);
}

.btn-outline {
    background: rgba(255,255,255,.05);
    border: 1px solid var(--border);
    color: white;
}

.btn-outline:hover {
    background: rgba(255,255,255,.1);
}

/* =========================
   STATS
========================= */

.stats {
    display: grid;
    grid-template-columns: repeat(4,1fr);
    margin: 22px 0 65px;
    border: 1px solid var(--border);
    background: rgba(255,255,255,.025);
    border-radius: 18px;
    overflow: hidden;
}

.stat {
    padding: 20px;
    display: flex;
    align-items: center;
    gap: 13px;
    border-right: 1px solid var(--border);
}

.stat:last-child {
    border-right: none;
}

.stat-icon {
    width: 40px;
    height: 40px;
    border-radius: 11px;
    display: grid;
    place-items: center;
    background: rgba(79,140,255,.1);
    color: var(--blue);
}

.stat strong {
    display: block;
    color: white;
    font-size: 13px;
}

.stat span {
    color: var(--muted);
    font-size: 10px;
}

/* =========================
   SECTION
========================= */

.section {
    margin-bottom: 75px;
}

.section-head {
    display: flex;
    justify-content: space-between;
    align-items: end;
    margin-bottom: 25px;
}

.eyebrow {
    color: var(--cyan);
    text-transform: uppercase;
    font-size: 10px;
    font-weight: 700;
    letter-spacing: 1.5px;
    margin-bottom: 8px;
}

.section-head h2 {
    font-family: "Space Grotesk", sans-serif;
    font-size: 28px;
    color: white;
    letter-spacing: -.8px;
}

.section-head p {
    color: var(--muted);
    font-size: 12px;
    margin-top: 5px;
}

.view-all {
    color: var(--cyan);
    font-size: 12px;
    font-weight: 700;
}

/* =========================
   CATEGORIES
========================= */

.categories {
    display: grid;
    grid-template-columns: repeat(7,1fr);
    gap: 12px;
}

.category {
    padding: 20px 10px;
    text-align: center;
    border-radius: 17px;
    background: linear-gradient(145deg,rgba(255,255,255,.045),rgba(255,255,255,.015));
    border: 1px solid var(--border);
    cursor: pointer;
    transition: .25s;
}

.category:hover,
.category.active {
    border-color: rgba(79,140,255,.45);
    background: rgba(79,140,255,.09);
    transform: translateY(-4px);
}

.category-icon {
    width: 48px;
    height: 48px;
    margin: 0 auto 11px;
    border-radius: 14px;
    display: grid;
    place-items: center;
    background: #172238;
    color: var(--blue);
    font-size: 17px;
}

.category h3 {
    font-size: 11px;
    color: #e7ebf2;
}

.category p {
    font-size: 9px;
    color: var(--muted);
    margin-top: 4px;
}

/* =========================
   FILTERS
========================= */

.filters {
    display: flex;
    gap: 8px;
    overflow-x: auto;
    padding-bottom: 5px;
}

.filters::-webkit-scrollbar {
    height: 0;
}

.filter {
    flex-shrink: 0;
    padding: 8px 15px;
    border-radius: 99px;
    border: 1px solid var(--border);
    background: transparent;
    color: var(--muted);
    font-size: 11px;
    font-weight: 700;
    transition: .2s;
}

.filter:hover,
.filter.active {
    background: var(--blue);
    border-color: var(--blue);
    color: white;
}

/* =========================
   PRODUCTS
========================= */

.products {
    display: grid;
    grid-template-columns: repeat(4,1fr);
    gap: 18px;
}

.product {
    position: relative;
    border-radius: 20px;
    overflow: hidden;
    background: linear-gradient(145deg,#111827,#0e1522);
    border: 1px solid var(--border);
    transition: .3s;
}

.product:hover {
    transform: translateY(-6px);
    border-color: rgba(79,140,255,.35);
    box-shadow: 0 20px 45px rgba(0,0,0,.3);
}

.product-image {
    height: 245px;
    position: relative;
    overflow: hidden;
    background: #101722;
}

.product-image img {
    width: 100%;
    height: 100%;
    object-fit: cover;
    transition: .5s;
}

.product:hover .product-image img {
    transform: scale(1.07);
}

.product-badge {
    position: absolute;
    left: 12px;
    top: 12px;
    z-index: 2;
    padding: 5px 8px;
    border-radius: 7px;
    background: var(--blue);
    color: white;
    font-size: 9px;
    font-weight: 800;
}

.product-badge.sale {
    background: var(--red);
}

.wish {
    position: absolute;
    right: 12px;
    top: 12px;
    z-index: 2;
    width: 35px;
    height: 35px;
    border-radius: 50%;
    border: 1px solid rgba(255,255,255,.1);
    background: rgba(7,11,20,.75);
    backdrop-filter: blur(10px);
    color: #c5ccd8;
    transition: .2s;
}

.wish:hover,
.wish.active {
    color: #ff5570;
}

.product-body {
    padding: 17px;
}

.product-category {
    color: var(--cyan);
    text-transform: uppercase;
    font-size: 9px;
    font-weight: 700;
    letter-spacing: 1px;
    margin-bottom: 8px;
}

.product-title {
    color: white;
    font-size: 14px;
    font-weight: 700;
    white-space: nowrap;
    overflow: hidden;
    text-overflow: ellipsis;
    margin-bottom: 9px;
}

.rating {
    font-size: 10px;
    color: var(--yellow);
}

.rating span {
    color: var(--muted);
    margin-left: 5px;
}

.price-row {
    display: flex;
    align-items: center;
    gap: 8px;
    margin-top: 13px;
}

.price {
    font-family: "Space Grotesk",sans-serif;
    font-size: 18px;
    color: white;
    font-weight: 700;
}

.old-price {
    color: #667085;
    text-decoration: line-through;
    font-size: 10px;
}

.add-cart {
    width: 100%;
    margin-top: 14px;
    padding: 11px;
    border: 1px solid rgba(79,140,255,.2);
    border-radius: 11px;
    background: rgba(79,140,255,.1);
    color: #9dbdff;
    font-size: 11px;
    font-weight: 700;
    transition: .2s;
}

.add-cart:hover {
    background: var(--blue);
    color: white;
}

/* =========================
   DEALS
========================= */

.deals {
    display: grid;
    grid-template-columns: 1.2fr .8fr;
    gap: 18px;
}

.deal-main {
    min-height: 300px;
    border-radius: 22px;
    padding: 35px;
    position: relative;
    overflow: hidden;
    background:
        linear-gradient(100deg,rgba(9,14,25,.98),rgba(9,14,25,.55)),
        url("https://images.unsplash.com/photo-1498049794561-7780e7231661?auto=format&fit=crop&w=1200&q=85")
        center/cover;
    border: 1px solid var(--border);
}

.deal-main h3 {
    font-family: "Space Grotesk";
    font-size: 34px;
    color: white;
    max-width: 400px;
    margin: 10px 0;
}

.deal-main p {
    color: var(--muted);
    font-size: 12px;
    max-width: 390px;
    margin-bottom: 20px;
}

.timer {
    display: flex;
    gap: 8px;
    margin-bottom: 20px;
}

.time-box {
    background: rgba(255,255,255,.07);
    border: 1px solid var(--border);
    border-radius: 9px;
    min-width: 48px;
    padding: 7px;
    text-align: center;
}

.time-box strong {
    display: block;
    font-size: 15px;
    color: white;
}

.time-box span {
    font-size: 7px;
    color: var(--muted);
}

.deal-side {
    border-radius: 22px;
    border: 1px solid var(--border);
    background: linear-gradient(145deg,#101a2c,#0d1420);
    padding: 30px;
    display: flex;
    flex-direction: column;
    justify-content: center;
}

.deal-side .discount {
    color: var(--cyan);
    font-family: "Space Grotesk";
    font-size: 48px;
    font-weight: 700;
}

.deal-side h3 {
    color: white;
    font-size: 19px;
    margin: 5px 0 8px;
}

.deal-side p {
    color: var(--muted);
    font-size: 11px;
    line-height: 1.7;
    margin-bottom: 18px;
}

/* =========================
   REVIEWS
========================= */

.reviews {
    display: grid;
    grid-template-columns: repeat(3,1fr);
    gap: 18px;
}

.review {
    padding: 25px;
    border-radius: 18px;
    border: 1px solid var(--border);
    background: rgba(255,255,255,.025);
}

.review-stars {
    color: var(--yellow);
    font-size: 11px;
    margin-bottom: 15px;
}

.review p {
    color: #aab3c1;
    font-size: 12px;
    line-height: 1.8;
    margin-bottom: 20px;
}

.reviewer {
    display: flex;
    align-items: center;
    gap: 10px;
}

.reviewer-avatar {
    width: 35px;
    height: 35px;
    display: grid;
    place-items: center;
    border-radius: 50%;
    background: #1c2b45;
    color: var(--cyan);
    font-weight: 700;
    font-size: 11px;
}

.reviewer strong {
    display: block;
    font-size: 11px;
    color: white;
}

.reviewer span {
    display: block;
    color: var(--muted);
    font-size: 9px;
}

/* =========================
   NEWSLETTER
========================= */

.newsletter {
    border: 1px solid var(--border);
    border-radius: 24px;
    padding: 45px;
    display: flex;
    justify-content: space-between;
    align-items: center;
    gap: 30px;
    background:
        radial-gradient(circle at 90% 50%,rgba(34,211,238,.13),transparent 35%),
        radial-gradient(circle at 60% 50%,rgba(79,140,255,.12),transparent 40%),
        #0e1625;
}

.newsletter h2 {
    font-family: "Space Grotesk";
    color: white;
    font-size: 28px;
    margin-bottom: 6px;
}

.newsletter p {
    color: var(--muted);
    font-size: 11px;
}

.subscribe {
    display: flex;
    gap: 8px;
    width: 440px;
}

.subscribe input {
    flex: 1;
    min-width: 0;
    height: 45px;
    border: 1px solid var(--border);
    border-radius: 11px;
    background: rgba(255,255,255,.05);
    color: white;
    outline: none;
    padding: 0 14px;
}

.subscribe button {
    border: none;
    border-radius: 11px;
    padding: 0 20px;
    background: var(--blue);
    color: white;
    font-size: 11px;
    font-weight: 700;
}

/* =========================
   FOOTER
========================= */

footer {
    margin-top: 80px;
    border-top: 1px solid var(--border);
    padding: 50px 0 25px;
    background: rgba(0,0,0,.15);
}

.footer-grid {
    display: grid;
    grid-template-columns: 1.5fr repeat(3,1fr);
    gap: 40px;
}

.footer-brand p {
    color: var(--muted);
    max-width: 300px;
    font-size: 11px;
    line-height: 1.8;
    margin-top: 14px;
}

.footer-col h4 {
    color: white;
    font-size: 11px;
    margin-bottom: 15px;
}

.footer-col a {
    display: block;
    color: var(--muted);
    font-size: 10px;
    margin-bottom: 10px;
}

.footer-col a:hover {
    color: var(--cyan);
}

.footer-bottom {
    border-top: 1px solid var(--border);
    margin-top: 40px;
    padding-top: 20px;
    color: #596477;
    font-size: 9px;
    display: flex;
    justify-content: space-between;
}

/* =========================
   CART DRAWER
========================= */

.overlay {
    position: fixed;
    inset: 0;
    background: rgba(0,0,0,.65);
    backdrop-filter: blur(5px);
    z-index: 1998;
    opacity: 0;
    pointer-events: none;
    transition: .3s;
}

.overlay.show {
    opacity: 1;
    pointer-events: auto;
}

.cart {
    position: fixed;
    right: 0;
    top: 0;
    width: min(430px,100%);
    height: 100vh;
    z-index: 1999;
    background: #0b111c;
    border-left: 1px solid var(--border);
    transform: translateX(100%);
    transition: .35s cubic-bezier(.2,.8,.2,1);
    display: flex;
    flex-direction: column;
}

.cart.open {
    transform: translateX(0);
}

.cart-head {
    height: 75px;
    padding: 0 22px;
    display: flex;
    align-items: center;
    justify-content: space-between;
    border-bottom: 1px solid var(--border);
}

.cart-head h3 {
    font-family: "Space Grotesk";
    color: white;
}

.close-cart {
    width: 36px;
    height: 36px;
    border: 1px solid var(--border);
    border-radius: 10px;
    background: transparent;
    color: var(--muted);
}

.cart-items {
    flex: 1;
    overflow-y: auto;
    padding: 18px;
}

.cart-item {
    display: grid;
    grid-template-columns: 70px 1fr 25px;
    gap: 12px;
    padding: 13px 0;
    border-bottom: 1px solid var(--border);
}

.cart-item img {
    width: 70px;
    height: 70px;
    object-fit: cover;
    border-radius: 11px;
}

.cart-item strong {
    display: block;
    color: white;
    font-size: 11px;
    margin-bottom: 6px;
}

.cart-price {
    color: var(--cyan);
    font-size: 12px;
    font-weight: 700;
}

.remove {
    border: none;
    background: transparent;
    color: #657083;
    height: 25px;
}

.quantity {
    display: flex;
    align-items: center;
    gap: 7px;
    margin-top: 10px;
}

.quantity button {
    width: 23px;
    height: 23px;
    border: 1px solid var(--border);
    border-radius: 6px;
    background: rgba(255,255,255,.04);
    color: white;
}

.quantity span {
    font-size: 10px;
}

.empty {
    height: 100%;
    display: grid;
    place-items: center;
    text-align: center;
    color: var(--muted);
}

.empty i {
    font-size: 35px;
    color: #27364f;
    margin-bottom: 15px;
}

.empty strong {
    display: block;
    color: white;
    margin-bottom: 5px;
}

.cart-footer {
    border-top: 1px solid var(--border);
    padding: 20px;
}

.subtotal {
    display: flex;
    justify-content: space-between;
    margin-bottom: 15px;
}

.subtotal span:first-child {
    color: var(--muted);
    font-size: 12px;
}

.subtotal span:last-child {
    color: white;
    font-family: "Space Grotesk";
    font-size: 20px;
    font-weight: 700;
}

.checkout {
    width: 100%;
    height: 47px;
    border: none;
    border-radius: 12px;
    background: linear-gradient(135deg,var(--blue),#6576ff);
    color: white;
    font-weight: 700;
}

/* =========================
   TOAST
========================= */

.toast {
    position: fixed;
    right: 25px;
    bottom: 25px;
    z-index: 3000;
    padding: 13px 18px;
    border-radius: 12px;
    background: #162033;
    border: 1px solid var(--border);
    color: white;
    font-size: 11px;
    box-shadow: var(--shadow);
    transform: translateY(80px);
    opacity: 0;
    transition: .3s;
}

.toast.show {
    transform: translateY(0);
    opacity: 1;
}

/* =========================
   NO RESULTS
========================= */

.no-results {
    grid-column: 1/-1;
    text-align: center;
    padding: 60px;
    border-radius: 18px;
    border: 1px solid var(--border);
    color: var(--muted);
}

.no-results i {
    font-size: 30px;
    margin-bottom: 15px;
}

/* =========================
   RESPONSIVE
========================= */

@media(max-width:1100px) {

    .products {
        grid-template-columns: repeat(3,1fr);
    }

    .categories {
        grid-template-columns: repeat(4,1fr);
    }

    .user-info {
        display: none;
    }

    .hero-content {
        padding: 45px;
    }
}

@media(max-width:800px) {

    .container {
        width: min(100% - 24px, var(--max));
    }

    .header {
        height: auto;
        padding: 12px 0;
        flex-wrap: wrap;
        gap: 12px;
    }

    .logo {
        min-width: auto;
    }

    .search {
        order: 3;
        flex-basis: 100%;
        max-width: none;
    }

    .nav-inner {
        overflow-x: auto;
        gap: 22px;
    }

    .nav-inner::-webkit-scrollbar {
        display: none;
    }

    .hero {
        min-height: 470px;
    }

    .hero-content {
        padding: 35px 25px;
        width: 100%;
    }

    .hero h1 {
        font-size: 47px;
    }

    .stats {
        grid-template-columns: repeat(2,1fr);
    }

    .stat:nth-child(2) {
        border-right: none;
    }

    .stat:nth-child(-n+2) {
        border-bottom: 1px solid var(--border);
    }

    .products {
        grid-template-columns: repeat(2,1fr);
    }

    .deals {
        grid-template-columns: 1fr;
    }

    .reviews {
        grid-template-columns: 1fr;
    }

    .newsletter {
        flex-direction: column;
        align-items: flex-start;
    }

    .subscribe {
        width: 100%;
    }

    .footer-grid {
        grid-template-columns: repeat(2,1fr);
    }
}

@media(max-width:520px) {

    .container {
        width: calc(100% - 20px);
    }

    .top-bar {
        font-size: 10px;
    }

    .header-actions {
        gap: 2px;
    }

    .user {
        display: none;
    }

    .hero {
        border-radius: 20px;
    }

    .hero h1 {
        font-size: 39px;
        letter-spacing: -2px;
    }

    .hero p {
        font-size: 13px;
    }

    .hero-buttons {
        flex-direction: column;
        align-items: stretch;
    }

    .btn {
        justify-content: center;
    }

    .categories {
        grid-template-columns: repeat(2,1fr);
    }

    .products {
        grid-template-columns: 1fr;
    }

    .product-image {
        height: 280px;
    }

    .deal-main {
        padding: 25px;
    }

    .deal-main h3 {
        font-size: 27px;
    }

    .newsletter {
        padding: 28px 20px;
    }

    .newsletter h2 {
        font-size: 23px;
    }

    .subscribe {
        flex-direction: column;
    }

    .subscribe input,
    .subscribe button {
        height: 44px;
    }

    .footer-grid {
        grid-template-columns: 1fr 1fr;
        gap: 25px;
    }

    .footer-brand {
        grid-column: 1/-1;
    }

    .footer-bottom {
        flex-direction: column;
        gap: 7px;
    }
}

</style>
</head>

<body>

<!-- TOP BAR -->
<div class="top-bar">
    <strong>LIMITED OFFER</strong>
    &nbsp; Get 20% OFF your first order &nbsp; • &nbsp; Free shipping above $50
</div>

<!-- HEADER -->
<header>

    <div class="container header">

        <a href="#" class="logo">

            <div class="logo-mark">
                <i class="fa-solid fa-bolt"></i>
            </div>

            <div class="logo-text">
                Vasu<span>Mart</span>
            </div>

        </a>

        <div class="search">

            <i class="fa-solid fa-magnifying-glass"></i>

            <input
                id="searchInput"
                type="search"
                placeholder="Search products, brands and categories..."
                autocomplete="off"
            >

            <button id="clearSearch">
                <i class="fa-solid fa-xmark"></i>
            </button>

        </div>

        <div class="header-actions">

            <button class="icon-btn" id="wishlistBtn" title="Wishlist">

                <i class="fa-regular fa-heart"></i>

                <span class="badge" id="wishlistCount">0</span>

            </button>

            <button class="icon-btn" id="openCart" title="Shopping cart">

                <i class="fa-solid fa-bag-shopping"></i>

                <span class="badge" id="cartCount">0</span>

            </button>

            <div class="user">

                <div class="avatar">
                    V
                </div>

                <div class="user-info">
                    <strong>Welcome back</strong>
                    <span>Premium Member</span>
                </div>

            </div>

        </div>

    </div>

    <nav class="nav">

        <div class="container nav-inner">

            <a href="#categories" class="nav-category">
                <i class="fa-solid fa-layer-group"></i>
                Categories
            </a>

            <a href="#home" class="active">Home</a>

            <a href="#products">Discover</a>

            <a href="#deals">Flash Deals</a>

            <a href="#reviews">Reviews</a>

            <a href="#newsletter">Offers</a>

        </div>

    </nav>

</header>


<main>

<!-- HERO -->

<section class="container" id="home">

    <div class="hero">

        <div class="hero-content">

            <div class="hero-tag">
                <i class="fa-solid fa-sparkles"></i>
                THE VASU COLLECTION 2026
            </div>

            <h1>
                Shop smarter.<br>
                Live <span>better.</span>
            </h1>

            <p>
                Discover premium technology, fashion, lifestyle products
                and everyday essentials — carefully selected for modern living.
            </p>

            <div class="hero-buttons">

                <button class="btn btn-primary" id="shopNow">
                    Explore Collection
                    <i class="fa-solid fa-arrow-right"></i>
                </button>

                <button class="btn btn-outline" id="heroDeals">
                    <i class="fa-solid fa-bolt"></i>
                    Today's Deals
                </button>

            </div>

        </div>

    </div>

</section>


<!-- STATS -->

<section class="container">

    <div class="stats">

        <div class="stat">

            <div class="stat-icon">
                <i class="fa-solid fa-truck-fast"></i>
            </div>

            <div>
                <strong>Fast Delivery</strong>
                <span>Across the country</span>
            </div>

        </div>

        <div class="stat">

            <div class="stat-icon">
                <i class="fa-solid fa-shield-halved"></i>
            </div>

            <div>
                <strong>Secure Payments</strong>
                <span>100% protected checkout</span>
            </div>

        </div>

        <div class="stat">

            <div class="stat-icon">
                <i class="fa-solid fa-rotate-left"></i>
            </div>

            <div>
                <strong>Easy Returns</strong>
                <span>30 day return policy</span>
            </div>

        </div>

        <div class="stat">

            <div class="stat-icon">
                <i class="fa-solid fa-headset"></i>
            </div>

            <div>
                <strong>24/7 Support</strong>
                <span>We're here to help</span>
            </div>

        </div>

    </div>

</section>


<!-- CATEGORIES -->

<section class="container section" id="categories">

    <div class="section-head">

        <div>

            <div class="eyebrow">Explore</div>

            <h2>Shop by category</h2>

            <p>Everything you need, organized for you.</p>

        </div>

        <a href="#products" class="view-all">
            View all →
        </a>

    </div>

    <div class="categories" id="categoriesGrid"></div>

</section>


<!-- PRODUCTS -->

<section class="container section" id="products">

    <div class="section-head">

        <div>

            <div class="eyebrow">Curated for you</div>

            <h2>Trending products</h2>

            <p>Popular picks loved by our customers.</p>

        </div>

    </div>

    <div class="filters" id="filterRow"></div>

    <div style="height:20px"></div>

    <div class="products" id="productsGrid"></div>

</section>


<!-- DEALS -->

<section class="container section" id="deals">

    <div class="section-head">

        <div>

            <div class="eyebrow">Limited time</div>

            <h2>Flash deals</h2>

            <p>Grab them before they're gone.</p>

        </div>

    </div>

    <div class="deals">

        <div class="deal-main">

            <div class="eyebrow">WEEKEND SPECIAL</div>

            <h3>
                Upgrade your tech without breaking the bank.
            </h3>

            <p>
                Exclusive discounts on selected electronics,
                gadgets and accessories.
            </p>

            <div class="timer">

                <div class="time-box">
                    <strong id="hours">12</strong>
                    <span>HOURS</span>
                </div>

                <div class="time-box">
                    <strong id="minutes">45</strong>
                    <span>MINUTES</span>
                </div>

                <div class="time-box">
                    <strong id="seconds">32</strong>
                    <span>SECONDS</span>
                </div>

            </div>

            <button class="btn btn-primary" onclick="scrollProducts()">
                Shop Deals
                <i class="fa-solid fa-arrow-right"></i>
            </button>

        </div>


        <div class="deal-side">

            <div class="discount">40%</div>

            <h3>Extra savings today</h3>

            <p>
                Apply your member discount at checkout and save
                even more on selected products.
            </p>

            <button class="btn btn-outline" onclick="showToast('Offer code: VASU40')">
                Reveal Offer
                <i class="fa-solid fa-tag"></i>
            </button>

        </div>

    </div>

</section>


<!-- REVIEWS -->

<section class="container section" id="reviews">

    <div class="section-head">

        <div>

            <div class="eyebrow">Customer stories</div>

            <h2>Loved by shoppers</h2>

            <p>Real experiences from the VasuMart community.</p>

        </div>

    </div>

    <div class="reviews">

        <article class="review">

            <div class="review-stars">
                ★★★★★
            </div>

            <p>
                "The website is incredibly smooth and the delivery
                was much faster than I expected. My laptop arrived
                perfectly packed."
            </p>

            <div class="reviewer">

                <div class="reviewer-avatar">AK</div>

                <div>
                    <strong>Arjun Kumar</strong>
                    <span>Verified Customer</span>
                </div>

            </div>

        </article>


        <article class="review">

            <div class="review-stars">
                ★★★★★
            </div>

            <p>
                "Found exactly what I was looking for without spending
                hours searching. The product quality was excellent."
            </p>

            <div class="reviewer">

                <div class="reviewer-avatar">SR</div>

                <div>
                    <strong>Sarah Roy</strong>
                    <span>Verified Customer</span>
                </div>

            </div>

        </article>


        <article class="review">

            <div class="review-stars">
                ★★★★★
            </div>

            <p>
                "Great prices, simple checkout and excellent support.
                Definitely one of my favorite online shopping sites."
            </p>

            <div class="reviewer">

                <div class="reviewer-avatar">RM</div>

                <div>
                    <strong>Rahul Mehta</strong>
                    <span>Verified Customer</span>
                </div>

            </div>

        </article>

    </div>

</section>


<!-- NEWSLETTER -->

<section class="container section" id="newsletter">

    <div class="newsletter">

        <div>

            <div class="eyebrow">
                Stay in the loop
            </div>

            <h2>Get the best deals first.</h2>

            <p>
                New arrivals, exclusive discounts and special offers.
            </p>

        </div>

        <div class="subscribe">

            <input
                id="emailInput"
                type="email"
                placeholder="Enter your email address"
            >

            <button id="subscribeBtn">
                Subscribe
            </button>

        </div>

    </div>

</section>

</main>


<!-- FOOTER -->

<footer>

    <div class="container">

        <div class="footer-grid">

            <div class="footer-brand">

                <a href="#" class="logo">

                    <div class="logo-mark">
                        <i class="fa-solid fa-bolt"></i>
                    </div>

                    <div class="logo-text">
                        Vasu<span>Mart</span>
                    </div>

                </a>

                <p>
                    A modern shopping destination built around
                    quality products, great prices and an effortless
                    shopping experience.
                </p>

            </div>


            <div class="footer-col">

                <h4>Shop</h4>

                <a href="#products">All Products</a>
                <a href="#categories">Categories</a>
                <a href="#deals">Flash Deals</a>
                <a href="#products">New Arrivals</a>

            </div>


            <div class="footer-col">

                <h4>Support</h4>

                <a href="#">Help Center</a>
                <a href="#">Shipping</a>
                <a href="#">Returns</a>
                <a href="#">Contact Us</a>

            </div>


            <div class="footer-col">

                <h4>Company</h4>

                <a href="#">About VasuMart</a>
                <a href="#">Careers</a>
                <a href="#">Privacy</a>
                <a href="#">Terms</a>

            </div>

        </div>


        <div class="footer-bottom">

            <span>© 2026 VasuMart. All rights reserved.</span>

            <span>
                Built for a better shopping experience.
            </span>

        </div>

    </div>

</footer>


<!-- CART OVERLAY -->

<div class="overlay" id="overlay"></div>


<!-- CART -->

<aside class="cart" id="cart">

    <div class="cart-head">

        <h3>
            Your Cart
        </h3>

        <button class="close-cart" id="closeCart">
            <i class="fa-solid fa-xmark"></i>
        </button>

    </div>


    <div class="cart-items" id="cartItems">

        <div class="empty">

            <div>

                <i class="fa-solid fa-bag-shopping"></i>

                <strong>Your cart is empty</strong>

                <span>Add something you love.</span>

            </div>

        </div>

    </div>


    <div class="cart-footer">

        <div class="subtotal">

            <span>Subtotal</span>

            <span id="subtotal">
                $0.00
            </span>

        </div>

        <button class="checkout" id="checkout">
            Proceed to Checkout
        </button>

    </div>

</aside>


<!-- TOAST -->

<div class="toast" id="toast"></div>


<script>

/* ==========================================
   PRODUCT DATABASE
========================================== */

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
        image: "https://images.unsplash.com/photo-1592899677977-9c10ca588bbd?auto=format&fit=crop&w=700&q=85"
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
        image: "https://images.unsplash.com/photo-1517336714731-489689fd1ca8?auto=format&fit=crop&w=700&q=85"
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
        image: "https://images.unsplash.com/photo-1546868871-7041f2a55e12?auto=format&fit=crop&w=700&q=85"
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
        image: "https://images.unsplash.com/photo-1542291026-7eec264c27ff?auto=format&fit=crop&w=700&q=85"
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
        image: "https://images.unsplash.com/photo-1516035069371-29a1b244cc32?auto=format&fit=crop&w=700&q=85"
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
        image: "https://images.unsplash.com/photo-1541643600914-78b084683601?auto=format&fit=crop&w=700&q=85"
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
        image: "https://images.unsplash.com/photo-1553062407-98eeb64c6a62?auto=format&fit=crop&w=700&q=85"
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
        image: "https://images.unsplash.com/photo-1583394838336-acd977736f90?auto=format&fit=crop&w=700&q=85"
    }

];


/* ==========================================
   CATEGORIES
========================================== */

const CATEGORIES = [

    {
        name: "All",
        icon: "fa-border-all",
        description: "Everything"
    },

    {
        name: "Smartphones",
        icon: "fa-mobile-screen",
        description: "Latest phones"
    },

    {
        name: "Laptops",
        icon: "fa-laptop",
        description: "Work & gaming"
    },

    {
        name: "Gadgets",
        icon: "fa-headphones",
        description: "Smart tech"
    },

    {
        name: "Footwear",
        icon: "fa-shoe-prints",
        description: "Step in style"
    },

    {
        name: "Accessories",
        icon: "fa-watch",
        description: "Complete look"
    },

    {
        name: "Beauty",
        icon: "fa-spray-can-sparkles",
        description: "Self care"
    }

];


/* ==========================================
   STATE
========================================== */

let cart = [];

let wishlist = [];

let activeCategory = "All";


/* ==========================================
   DOM
========================================== */

const productsGrid =
    document.getElementById("productsGrid");

const categoriesGrid =
    document.getElementById("categoriesGrid");

const filterRow =
    document.getElementById("filterRow");

const searchInput =
    document.getElementById("searchInput");

const cartElement =
    document.getElementById("cart");

const overlay =
    document.getElementById("overlay");

const cartItems =
    document.getElementById("cartItems");

const cartCount =
    document.getElementById("cartCount");

const wishlistCount =
    document.getElementById("wishlistCount");

const subtotal =
    document.getElementById("subtotal");

const toast =
    document.getElementById("toast");


/* ==========================================
   TOAST
========================================== */

let toastTimer;

function showToast(message) {

    toast.textContent = message;

    toast.classList.add("show");

    clearTimeout(toastTimer);

    toastTimer = setTimeout(() => {

        toast.classList.remove("show");

    }, 2200);

}


/* ==========================================
   CATEGORIES
========================================== */

function renderCategories() {

    categoriesGrid.innerHTML = "";

    CATEGORIES.forEach(category => {

        const element =
            document.createElement("div");

        element.className =
            "category" +
            (category.name === activeCategory
                ? " active"
                : "");

        element.innerHTML = `

            <div class="category-icon">

                <i class="fa-solid ${category.icon}"></i>

            </div>

            <h3>${category.name}</h3>

            <p>${category.description}</p>

        `;

        element.addEventListener("click", () => {

            activeCategory =
                category.name;

            renderCategories();

            renderFilters();

            renderProducts();

            document
                .getElementById("products")
                .scrollIntoView({
                    behavior: "smooth"
                });

        });

        categoriesGrid.appendChild(element);

    });

}


/* ==========================================
   FILTERS
========================================== */

function renderFilters() {

    filterRow.innerHTML = "";

    const categories = [
        "All",
        ...new Set(
            PRODUCTS.map(product =>
                product.category
            )
        )
    ];

    categories.forEach(category => {

        const button =
            document.createElement("button");

        button.className =
            "filter" +
            (
                category === activeCategory
                    ? " active"
                    : ""
            );

        button.textContent = category;

        button.addEventListener("click", () => {

            activeCategory = category;

            renderCategories();

            renderFilters();

            renderProducts();

        });

        filterRow.appendChild(button);

    });

}


/* ==========================================
   PRODUCT FILTER
========================================== */

function getFilteredProducts() {

    const query =
        searchInput.value
            .trim()
            .toLowerCase();

    return PRODUCTS.filter(product => {

        const categoryMatch =
            activeCategory === "All" ||
            product.category === activeCategory;

        const searchMatch =
            !query ||
            product.title
                .toLowerCase()
                .includes(query) ||
            product.category
                .toLowerCase()
                .includes(query);

        return categoryMatch &&
               searchMatch;

    });

}


/* ==========================================
   PRODUCTS
========================================== */

function renderProducts() {

    const products =
        getFilteredProducts();

    productsGrid.innerHTML = "";

    if (!products.length) {

        productsGrid.innerHTML = `

            <div class="no-results">

                <i class="fa-solid fa-magnifying-glass"></i>

                <div>No products found</div>

                <small>
                    Try another search or category.
                </small>

            </div>

        `;

        return;

    }


    products.forEach(product => {

        const isWishlisted =
            wishlist.includes(product.id);

        const card =
            document.createElement("article");

        card.className = "product";

        const stars =
            "★".repeat(product.rating) +
            "☆".repeat(5 - product.rating);

        const sale =
            product.badge === "SALE" ||
            product.badge.includes("%");

        card.innerHTML = `

            <div class="product-image">

                ${
                    product.badge
                        ? `
                            <span
                                class="product-badge ${sale ? "sale" : ""}"
                            >
                                ${product.badge}
                            </span>
                          `
                        : ""
                }

                <button
                    class="wish ${isWishlisted ? "active" : ""}"
                    data-wish="${product.id}"
                >
                    <i class="${
                        isWishlisted
                            ? "fa-solid"
                            : "fa-regular"
                    } fa-heart"></i>
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

                <div class="rating">

                    ${stars}

                    <span>
                        ${product.reviews} reviews
                    </span>

                </div>

                <div class="price-row">

                    <span class="price">
                        $${product.price.toLocaleString()}
                    </span>

                    ${
                        product.oldPrice
                            ? `
                                <span class="old-price">
                                    $${product.oldPrice.toLocaleString()}
                                </span>
                              `
                            : ""
                    }

                </div>

                <button
                    class="add-cart"
                    data-cart="${product.id}"
                >

                    <i class="fa-solid fa-cart-plus"></i>

                    Add to Cart

                </button>

            </div>

        `;

        productsGrid.appendChild(card);

    });


    document
        .querySelectorAll("[data-cart]")
        .forEach(button => {

            button.addEventListener("click", () => {

                addToCart(
                    Number(
                        button.dataset.cart
                    )
                );

            });

        });


    document
        .querySelectorAll("[data-wish]")
        .forEach(button => {

            button.addEventListener("click", () => {

                toggleWishlist(
                    Number(
                        button.dataset.wish
                    )
                );

            });

        });

}


/* ==========================================
   WISHLIST
========================================== */

function toggleWishlist(id) {

    const index =
        wishlist.indexOf(id);

    if (index >= 0) {

        wishlist.splice(index,1);

        showToast(
            "Removed from wishlist"
        );

    } else {

        wishlist.push(id);

        showToast(
            "Added to wishlist ♥"
        );

    }

    wishlistCount.textContent =
        wishlist.length;

    renderProducts();

}


/* ==========================================
   CART
========================================== */

function addToCart(id) {

    const product =
        PRODUCTS.find(
            product => product.id === id
        );

    if (!product) return;

    const existing =
        cart.find(
            item => item.id === id
        );

    if (existing) {

        existing.quantity++;

    } else {

        cart.push({
            ...product,
            quantity: 1
        });

    }

    showToast(
        `${product.title} added to cart`
    );

    updateCart();

}


function removeFromCart(id) {

    cart =
        cart.filter(
            item => item.id !== id
        );

    updateCart();

}


function changeQuantity(id, amount) {

    const item =
        cart.find(
            item => item.id === id
        );

    if (!item) return;

    item.quantity += amount;

    if (item.quantity <= 0) {

        removeFromCart(id);

    } else {

        updateCart();

    }

}


/* ==========================================
   UPDATE CART
========================================== */

function updateCart() {

    const totalItems =
        cart.reduce(
            (total,item) =>
                total + item.quantity,
            0
        );

    cartCount.textContent =
        totalItems;


    if (!cart.length) {

        cartItems.innerHTML = `

            <div class="empty">

                <div>

                    <i class="fa-solid fa-bag-shopping"></i>

                    <strong>
                        Your cart is empty
                    </strong>

                    <span>
                        Add something you love.
                    </span>

                </div>

            </div>

        `;

    } else {

        cartItems.innerHTML = "";

        cart.forEach(item => {

            const element =
                document.createElement("div");

            element.className =
                "cart-item";

            element.innerHTML = `

                <img
                    src="${item.image}"
                    alt="${item.title}"
                >

                <div>

                    <strong>
                        ${item.title}
                    </strong>

                    <div class="cart-price">
                        $${item.price.toLocaleString()}
                    </div>

                    <div class="quantity">

                        <button
                            data-minus="${item.id}"
                        >
                            −
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
                    class="remove"
                    data-remove="${item.id}"
                >
                    <i class="fa-solid fa-trash"></i>
                </button>

            `;

            cartItems.appendChild(element);

        });


        document
            .querySelectorAll("[data-minus]")
            .forEach(button => {

                button.onclick = () => {

                    changeQuantity(
                        Number(
                            button.dataset.minus
                        ),
                        -1
                    );

                };

            });


        document
            .querySelectorAll("[data-plus]")
            .forEach(button => {

                button.onclick = () => {

                    changeQuantity(
                        Number(
                            button.dataset.plus
                        ),
                        1
                    );

                };

            });


        document
            .querySelectorAll("[data-remove]")
            .forEach(button => {

                button.onclick = () => {

                    removeFromCart(
                        Number(
                            button.dataset.remove
                        )
                    );

                };

            });

    }


    const total =
        cart.reduce(
            (sum,item) =>
                sum +
                item.price *
                item.quantity,
            0
        );

    subtotal.textContent =
        "$" +
        total.toLocaleString(
            undefined,
            {
                minimumFractionDigits: 2,
                maximumFractionDigits: 2
            }
        );

}


/* ==========================================
   CART OPEN / CLOSE
========================================== */

function openCart() {

    cartElement.classList.add("open");

    overlay.classList.add("show");

    document.body.style.overflow =
        "hidden";

}


function closeCart() {

    cartElement.classList.remove("open");

    overlay.classList.remove("show");

    document.body.style.overflow =
        "";

}


document
    .getElementById("openCart")
    .addEventListener(
        "click",
        openCart
    );


document
    .getElementById("closeCart")
    .addEventListener(
        "click",
        closeCart
    );


overlay.addEventListener(
    "click",
    closeCart
);


/* ==========================================
   SEARCH
========================================== */

searchInput.addEventListener(
    "input",
    renderProducts
);


document
    .getElementById("clearSearch")
    .addEventListener("click", () => {

        searchInput.value = "";

        renderProducts();

        searchInput.focus();

    });


/* ==========================================
   HERO BUTTONS
========================================== */

function scrollProducts() {

    document
        .getElementById("products")
        .scrollIntoView({
            behavior: "smooth"
        });

}


document
    .getElementById("shopNow")
    .addEventListener(
        "click",
        scrollProducts
    );


document
    .getElementById("heroDeals")
    .addEventListener("click", () => {

        document
            .getElementById("deals")
            .scrollIntoView({
                behavior: "smooth"
            });

    });


/* ==========================================
   CHECKOUT
========================================== */

document
    .getElementById("checkout")
    .addEventListener("click", () => {

        if (!cart.length) {

            showToast(
                "Your cart is empty"
            );

            return;

        }

        showToast(
            "Checkout integration coming soon!"
        );

    });


/* ==========================================
   NEWSLETTER
========================================== */

document
    .getElementById("subscribeBtn")
    .addEventListener("click", () => {

        const email =
            document
                .getElementById("emailInput")
                .value
                .trim();

        if (!email) {

            showToast(
                "Please enter your email"
            );

            return;

        }

        if (!email.includes("@")) {

            showToast(
                "Please enter a valid email"
            );

            return;

        }

        showToast(
            "You're subscribed to VasuMart!"
        );

        document
            .getElementById("emailInput")
            .value = "";

    });


/* ==========================================
   FLASH DEAL TIMER
========================================== */

let remainingSeconds =
    12 * 60 * 60 +
    45 * 60 +
    32;


function updateTimer() {

    if (remainingSeconds <= 0) {

        remainingSeconds =
            12 * 60 * 60;

    }

    const hours =
        Math.floor(
            remainingSeconds / 3600
        );

    const minutes =
        Math.floor(
            (remainingSeconds % 3600) / 60
        );

    const seconds =
        remainingSeconds % 60;


    document.getElementById("hours")
        .textContent =
        String(hours).padStart(2,"0");


    document.getElementById("minutes")
        .textContent =
        String(minutes).padStart(2,"0");


    document.getElementById("seconds")
        .textContent =
        String(seconds).padStart(2,"0");


    remainingSeconds--;

}


setInterval(
    updateTimer,
    1000
);


/* ==========================================
   ESCAPE KEY
========================================== */

document.addEventListener(
    "keydown",
    event => {

        if (
            event.key === "Escape" &&
            cartElement.classList.contains("open")
        ) {

            closeCart();

        }

    }
);


/* ==========================================
   INITIALIZE
========================================== */

renderCategories();

renderFilters();

renderProducts();

updateCart();

</script>

</body>
</html>
