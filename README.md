# Django 4 Blog Application - Chapters 1–3 Practice

This repository contains the source code, database structures, and development notes from Chapters 1 to 3 of the book **"Django 4 by Example" (Django 4 в примерах)** by Antonio Melé (Published in Russian in 2023).

The project focuses on building a complete, functional Blog Application from scratch, progressing from initial database modeling and administration to advanced routing, pagination, template inheritance, email integration, and a full-scale commenting system.

## 🚀 Repository Structure

The code is organized chronologically, reflecting the progressive development layers added across the first three chapters of the book:

```text
.
├── README.md
├── mysite/                         # Django project root directory
│   ├── manage.py
│   ├── mysite/                     # Project configuration folder (settings, URLs, WSGI)
│   └── blog/                       # Blog application directory
│       ├── templates/blog/         # HTML templates with Django Template Language (DTL)
│       ├── templatetags/           # Chapter 3: Custom template tags and filters
│       ├── admin.py                # Admin panel customization and filters
│       ├── forms.py                # Chapter 2-3: Forms for email sharing and comments
│       ├── models.py               # Post and Comment database schemas
│       ├── urls.py                 # Application-specific routing layouts
│       └── views.py                # Class-based and function-based view controllers
```
