void yaparken_kaydet(Function yapilacak) {
  print("Bir işlem yapılıyor.");
  yapilacak();
  print('İşlem tamamlandı.');
  print('----------------');
}

// Inline functions
// Bir fonksiyon başka bir fonksiyonu parametre olarak alabilir.
// Bu fonksiyonlar genellikle bir kez kullanılacak olan kısa fonksiyonlar olduğunda kullanılır.

void main() {
  yaparken_kaydet(() {
    print("2+2=4");
  });

  yaparken_kaydet(() {
    print("2+2=4");
  });
}
