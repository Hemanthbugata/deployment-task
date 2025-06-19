
````markdown
# 🐘 OpenTofu Installation on GCP (Ubuntu/Linux Shell)

## 🧹 Clean Up Broken Install

If you've previously downloaded an incorrect file, remove it:

```bash
sudo rm /usr/local/bin/tofu
````

---

## 🔍 Step 1: Check the Latest Version

Visit the official OpenTofu GitHub releases page:
👉 [https://github.com/opentofu/opentofu/releases](https://github.com/opentofu/opentofu/releases)

Note the latest version (e.g., `v1.7.0`).

---

## 🔽 Step 2: Download the Correct Binary

Use the version you noted in Step 1:

```bash
curl -LO https://github.com/opentofu/opentofu/releases/download/v1.7.0/tofu_1.7.0_linux_amd64.tar.gz
```

---

## 📦 Step 3: Extract the Binary

```bash
tar -xzf tofu_1.7.0_linux_amd64.tar.gz
```

This will extract the executable `tofu` file.

---

## 📁 Step 4: Move Binary to System PATH

```bash
sudo mv tofu /usr/local/bin/tofu
```

---

## ✅ Step 5: Verify the Installation

```bash
tofu version
```

Expected output:

```
OpenTofu v1.7.0
```

---

## 🧪 Next Step: Initialize Your Project

Now you're ready to run:

```bash
tofu init
```

---

## 📝 Notes

* Make sure your shell has internet access.
* Ensure `/usr/local/bin` is part of your `$PATH`.

---

✅ *This setup guide is verified and ready for use in GCP Cloud Shell or any Linux-based environment.*

