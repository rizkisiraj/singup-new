# 📱 SingUp-New

> Internal SwiftUI app – development only

Repository ini berisi source code untuk aplikasi iOS berbasis SwiftUI. Proyek ini menggunakan **Swift Package Manager (SPM)** sebagai dependency manager.

---

## 🛠 Requirements

- Xcode 14.0+
- Swift 5.7+
- iOS 15.0+

---

## 📦 Dependencies

Semua dependency akan otomatis ter-install saat membuka project di Xcode.

Jika perlu reset:

```bash
rm -rf .build
xcodebuild -resolvePackageDependencies
````

---

## 🚀 Getting Started

Clone repository:

   ```bash
   git clone git@your-org/repo-name.git
   cd repo-name
   open YourApp.xcodeproj
   ```

---

## 🧑‍💻 Cara Berkontribusi

### 1. Buat Branch Baru

```bash
git checkout -b feat/namafitur-anda
```

### 2. Commit Secara Bertahap

```bash
git add .
git commit -m "Deskripsi singkat"
```

### 3. Selalu Pull Dulu Sebelum Push

Supaya gak konflik:

```bash
git checkout main
git pull origin main
git checkout feat/namafitur-anda
git rebase main
```

Kalau ada konflik:

```bash
# resolve konfliknya dulu
git add .
git rebase --continue
```

### 4. Push Ke Remote

```bash
git push origin feat/namafitur-anda
```

### 5. Buat Pull Request

Masuk GitHub, buat PR dari branch kamu ke `main`.

---

## 📁 Struktur Folder (to be continued)

```
YourApp/
├── App/                # Entry point aplikasi
├── Features/           # Layar SwiftUI dan logicnya
├── Resources/          # Assets, LaunchScreens, dsb
├── Utilities/          # Helpers dan extensions
├── Models/             # Data models
├── Tests/              # Unit tests
```

---

## 📌 Notes

* Jagalah struktur file tetap rapi & modular.
* Gunakan `// TODO:` untuk bagian yang masih dalam pengembangan.
* Jangan commit file sensitif seperti `Secrets.swift` atau `.env`.

---

## 🙋‍♀️ Butuh Bantuan?

Langsung aja tanya di grup 😎

