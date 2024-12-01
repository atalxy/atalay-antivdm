### GitHub Açıklama Metni

---

# **Atalay Anti-VDM Script** 🚗🔒

Bu script, FiveM sunucularında oyuncuları araç çarpmalarından korumak amacıyla tasarlanmıştır. **Atalay Anti-VDM**, araçlarla çarpışmayı tamamen devre dışı bırakarak, oyuncuların yere düşmesini, animasyon oynamasını veya hasar almasını engeller. Araçlar, oyuncuların içinden geçer ve hiçbir fiziksel etkileşim gerçekleşmez. 

---

## **Özellikler** 🌟

- **Araç Çarpmalarını Engelleme:** Araçlar oyuncuların içinden geçer, fiziksel çarpışma gerçekleşmez.
- **Animasyon ve Hasar Kontrolü:** Çarpma sonrası yere düşme, ragdoll veya sağlık kaybı gibi durumlar tamamen devre dışı bırakılmıştır.
- **Performans Optimizasyonu:** Yakındaki araçlar üzerinde sürekli bir kontrol mekanizması çalıştırılır, ancak performans etkisi minimum düzeydedir.
- **Uyumluluk:** QBCore altyapısı ile tamamen uyumludur.

---

## **Nasıl Kurulur?** 🛠️

1. **Script'i İndir:**
   - Bu repo içindeki dosyaları indir ve sunucunun `resources` klasörüne at.

2. **`server.cfg`'ye Ekle:**
   ```plaintext
   ensure atalay-antivdm
   ```

3. **Sunucuyu Yeniden Başlat:**
   - Sunucuyu yeniden başlatarak script'i aktif hale getir.

---

## **Klasör Yapısı** 📂

```
atalay-antivdm/
│
├── fxmanifest.lua
├── client.lua
```

- **`fxmanifest.lua`:** Script'in meta dosyası.
- **`client.lua`:** Araç çarpmalarını ve etkileşimleri kontrol eden ana script dosyası.

---

## **Örnek Görüntüler** 📸

- Oyuncu ile araç arasında çarpışma gerçekleşmez.
- Araçlar oyuncunun içinden geçer.

> **Not:** Görseller yakında eklenecektir!

---

## **Destek ve Geri Bildirim** 🤝

Herhangi bir sorunla karşılaşırsanız veya öneriniz varsa [GitHub Issues](#) üzerinden bana ulaşabilirsiniz. Script ile ilgili geri bildirimlerinizi bekliyorum!

---

**İyi oyunlar dilerim! 🚀**  
_Bu script Atalay tarafından geliştirilmiştir._
