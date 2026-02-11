# Jaspr + Tailwind + jaspr_serverpod

## Pixel-Perfect Portfolio Website Blueprint

------------------------------------------------------------------------

## 📌 Project Overview

Build a modern, pixel-perfect, fully responsive portfolio website using:

-   **Jaspr (latest stable)**
-   **Tailwind CSS (utility-first only)**
-   **jaspr_serverpod (backend integration)**
-   Clean Architecture
-   Component-based structure

Primary Accent Color: `#FF6A00`\
Font: Inter or Poppins\
Design Style: Modern, minimal, glassmorphism (dark sections), rounded UI

------------------------------------------------------------------------

# 🧱 Tech Stack Requirements

-   Jaspr latest stable
-   TailwindCSS (no inline styles)
-   jaspr_serverpod backend integration
-   Reusable components
-   Mobile-first responsive layout
-   Clean folder structure

------------------------------------------------------------------------

# 📁 Recommended Folder Structure

    lib/
     ├── components/
     ├── sections/
     ├── layouts/
     ├── models/
     ├── services/
     ├── pages/
     └── main.dart

------------------------------------------------------------------------

# 🌐 Page Structure (Exact Layout)

------------------------------------------------------------------------

## 1️⃣ Navbar (Sticky Rounded Container)

-   Logo: **3CREA**
-   Menu Items:
    -   Home (active -- orange pill background)
    -   About
    -   Service
    -   Resume
    -   Project
    -   Contact

### Style Rules:

-   Dark background
-   White text
-   Active item = orange rounded background
-   Smooth hover transitions

------------------------------------------------------------------------

## 2️⃣ Hero Section

### Layout:

Two-column (stacked on mobile)

### Left Side:

-   Small badge: "Hello!"
-   Heading:

```{=html}
<!-- -->
```
    I’m Jenny,
    Product Designer

-   "Jenny" in orange
-   Short testimonial text with quote icon
-   Buttons:
    -   Portfolio (primary orange button)
    -   Hire Me (outlined button)

### Right Side:

-   Large portrait image
-   Orange abstract rounded shape behind image
-   5-star rating badge
-   "10 Years Experience"

------------------------------------------------------------------------

## 3️⃣ Services Section (Dark Gradient Background)

Title:

    My Services

("Services" in orange)

Cards (slider style):

-   UI/UX Design
-   Web Design
-   Landing Page

Each card: - Category title - Mockup preview image - Circular arrow
button (bottom-right) - Glassmorphism effect - Rounded corners - Dark
abstract wave background

------------------------------------------------------------------------

## 4️⃣ Work Experience Timeline

Title:

    My Work Experience

Vertical timeline with connected dots.

Entries:

Left Column: - Cognizant, Mumbai (Sep 2016 -- July 2020) - Sugee Pvt
Limited, Mumbai (Sep 2020 -- July 2023) - Cinetstox, Mumbai (Sep 2023)

Right Column: - Experience Designer - UI/UX Designer - Lead UX Designer

------------------------------------------------------------------------

## 5️⃣ Why Hire Me Section

Light rounded container.

Left: - Woman pointing image

Right: - Title: "Why Hire me?" (Hire in orange) - Description
paragraph - Stats: - 450+ Project Completed - 450+ Project Completed -
Hire Me button

------------------------------------------------------------------------

## 6️⃣ Portfolio Section

Title:

    Lets have a look at my Portfolio

Filter Tabs: - Landing Page - Product Design - Animation -
Glassmorphism - Cards

Portfolio Card: - Large preview image - Title: "Lirante - Food Delivery
Solution" - Short description - Circular arrow button - Slider
indicators below

------------------------------------------------------------------------

## 7️⃣ Testimonials Section

Dark gradient background.

Title:

    Testimonials That Speak to My Results

Testimonial Cards: - Profile image - Name: Jayesh Patil - 5-star
rating - Review text - Large quote background icon - Glassmorphism style

------------------------------------------------------------------------

## 8️⃣ Contact CTA Section

Centered section.

Title:

    Have an Awesome Project Idea? Let’s Discuss

-   Email input field
-   Orange Send button
-   Small feature row below (icons + short text)

### Backend Integration (jaspr_serverpod)

Create endpoints:

-   submitContactForm(name, email, message)
-   subscribeNewsletter(email)
-   getPortfolioItems()
-   getBlogPosts()

------------------------------------------------------------------------

## 9️⃣ Blog Section

Title:

    From my blog post

Three blog cards: - Image - Category - Author: Jayesh Patil - Date -
Title - Arrow button

------------------------------------------------------------------------

## 🔟 Footer

Dark background.

Left: - 3CREA logo - Description paragraph - Social icons

Right: - Navigation links - Newsletter input field

Bottom: - Copyright - Privacy Policy

------------------------------------------------------------------------

# 📱 Responsiveness Rules

-   Mobile-first
-   Grid → Stack on small screens
-   Timeline collapses vertically
-   Navbar becomes hamburger menu

------------------------------------------------------------------------

# 🎨 Design Rules

-   Primary Color: #FF6A00
-   Font: Inter or Poppins
-   Rounded-2xl or larger corners
-   Soft shadows
-   Glassmorphism in dark sections
-   Smooth transitions
-   Tailwind spacing scale only

------------------------------------------------------------------------

# 🚀 Deliverable Requirements

-   Production-ready Jaspr code
-   Reusable components
-   Clean separation of concerns
-   Fully responsive
-   Integrated jaspr_serverpod backend

------------------------------------------------------------------------

End of Blueprint
