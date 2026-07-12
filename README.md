# Mom's Bakery 
# 🍞 Bakery Website – Technical Overview

## 📌 Project Summary

This project is a lightweight, web-based bakery website focused on simplicity, performance, and easy content management. It combines static frontend technologies with a robust CMS for dynamic content handling.

## ⚙️ Tech Stack

* **Frontend:** HTML5, CSS3
* **CMS:** WordPress

## 🚀 Key Features

### 1. Static Web-Based Design

* Built using pure **HTML and CSS only**
* No JavaScript frameworks or heavy dependencies
* Ensures:

  * Fast loading speed ⚡
  * Better performance and SEO
  * Easy deployment and maintenance

### 2. WordPress CMS Integration

* WordPress is used as the backend content management system
* Enables:

  * Easy content updates without code changes
  * Blog and product management
  * Media handling (images, banners, etc.)
* Decoupled approach: frontend remains simple while CMS handles dynamic content

## 🧩 Architecture Overview

* Static frontend pages for UI rendering
* WordPress backend for managing content
* Data can be integrated via APIs or manual embedding depending on implementation



## 📦 Build & Deployment
* Build command in windows i.e. for local dev env. 
- powershell -ExecutionPolicy Bypass -File .\package-site.ps1

* CI/CD deployment script. 
- name: Package static site
- run: bash ./package-site.sh

* Can be hosted on any static hosting platform (e.g., GitHub Pages, Netlify)
* WordPress hosted separately on a server

## 🎯 Goal

To create a clean, fast, and easily manageable bakery website with minimal complexity and maximum usability.

