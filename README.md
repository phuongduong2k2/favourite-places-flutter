## Favorite Places App 📍

A beautifully designed, feature-rich **Flutter application** built using **Clean Architecture** and **Riverpod** for robust state management. This app allows users to capture, catalog, and preserve their favorite locations across the globe with custom titles, vivid images, and precise geographical mapping data.

Features integration with **Mapbox GL** for high-performance interactive mapping, reverse geocoding, and persistent local storage to guarantee your favorite memories are never lost.

---

## 📸 Application Preview

Here is a glimpse of the application running on an iOS simulator, showcasing its modern dark-themed user experience, structured data capture flow, and interactive maps:

| **Main Places Feed** | **Add New Place Screen** | **Interactive Map Location View** |
| :---: | :---: | :---: |
| <img width="1206" height="2622" alt="Simulator Screenshot - iPhone 16 Pro iOS 18 5 - 2026-06-04 at 16 54 33" src="https://github.com/user-attachments/assets/be50e3b1-3449-4a65-ba3b-e3cc9f3e3ab2" /> | <img width="1206" height="2622" alt="Simulator Screenshot - iPhone 16 Pro iOS 18 5 - 2026-06-04 at 16 55 09" src="https://github.com/user-attachments/assets/2eecdb1b-765d-4fb1-95c2-53fd95a4fc07" /> | <img width="1206" height="2622" alt="Simulator Screenshot - iPhone 16 Pro iOS 18 5 - 2026-06-04 at 16 57 17" src="https://github.com/user-attachments/assets/28c4a4b1-0c14-4a18-be22-4b846da1bc20" />
| *Browse saved entries with dynamic previews, fully responsive card layouts, and address contexts.* | *Real-time title input, custom image picking, localized micro-map previews, and geolocation tracking.* | *Full-bleed vector mapping powered by Mapbox, detailing landmarks like Osaka Castle with custom pins.* |

> *Note: Replace the placeholder URLs above with your actual repository asset links or relative file paths (e.g., `assets/screenshots/...`) once hosted on GitHub.*

---

## ✨ Core Features

* **🗺️ Dynamic Location Intelligence:** * **Get Current Location:** Instantly fetch the user's high-precision GPS coordinates using native location hardware.
    * **Reverse Geocoding:** Automatically translates raw latitude and longitude metadata into human-readable postal addresses (e.g., `Phố Hạ Yên Quyết, Yên Hòa, Hanoi, Vietnam`).
    * **Select on Map:** Open an interactive full-screen map interface to manually point, adjust, or choose locations globally.
* **📸 Rich Media Capture:** Attach real-time photos captured via camera or imported from the device gallery to visually represent your favorite landmarks.
* **🗄️ Offline Persistence:** Uses local SQLite / Hive persistence layers so all curated locations, text fields, and geospatial records remain fully accessible without active network connections.
* **🎨 Premium Dark UI UX:** An immersive, low-light-optimized user interface utilizing uniform color schemes (`#241e30` backgrounds, `#1d1825` container surfaces), sleek typography, and micro-interactions.
* **🚀 Clean Architecture & Robust State:** Architected using declarative state patterns via Riverpod, guaranteeing crisp separation of concerns between visual widgets, state providers, and underlying geospatial data repositories.

---

## 🛠️ Tech Stack & Dependencies

The project utilizes the following production-ready tech stack:

* **Framework:** [Flutter](https://flutter.dev/) (Channel stable)
* **Language:** Dart 3.x
* **State Management:** [Flutter Riverpod](https://pub.dev/packages/flutter_riverpod) — Uni-directional data flow & compile-safe state providers.
* **Freezed:** [freezed](https://pub.dev/packages/freezed) - Implementing all of this can take hundreds of lines, which are error-prone and affect the readability of your model significantly.
* **Mapping & Location Infrastructure:**
    * [Mapbox GL / Maplibre GL](https://pub.dev/packages/mapbox_gl) — Highly customizable, vector-based tile mapping.
    * [Location](https://pub.dev/packages/location) / [Geolocator](https://pub.dev/packages/geolocator) — Handles background hardware synchronization and GPS tracking.
    * [Http](https://pub.dev/packages/http) — For communicating with reverse-geocoding API gateways (Mapbox Geocoding API / OpenStreetMap Nominatim).
* **Hardware / Device Features:**
    * [Image Picker](https://pub.dev/packages/image_picker) — Multi-source photo capturing (Camera/Gallery selection pipelines).
    * [Path Provider](https://pub.dev/packages/path_provider) & [Sqflite](https://pub.dev/packages/sqflite) — Safe storage paths and local database indexing for seamless offline support.

---

## 📂 Architecture Overview

The codebase is organized following a **Feature-First Clean Architecture** design pattern to maximize testability and scalability:
