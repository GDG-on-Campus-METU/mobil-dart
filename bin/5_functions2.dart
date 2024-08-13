void merhabaDe(String isim, int? yas) {
  if (yas != null) {
    print("Merhaba $isim ($yas)");
  } else {
    print("Merhaba $isim");
  }
}

void merhabaDe2({required String isim, int? yas}) {
  if (yas != null) {
    print("Merhaba $isim ($yas)");
  } else {
    print("Merhaba $isim");
  }
}

void main() {
  merhabaDe("Eray", 19);
  merhabaDe("Ahmet", null);

  merhabaDe2(isim: "Eray", yas: 19);
  merhabaDe2(isim: "Ahmet");
}
