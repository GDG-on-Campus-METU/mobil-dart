int yas = 18; // int her zaman bilinebilir, null değerini alamaz

int? kardesYas; // int? null değerini alabilir

int? yasFarki;

void main() {
  print(kardesYas);

  kardesYas = 5;

  print(kardesYas);

  // hata verir çünkü null üzerinden aritmetik işlem yapılamaz.
  // int diff = age - brotherAge; 
  
  // bunun yerine nullable değişkenler iki şekilde kullanılır
  // siblingAge! => null olmadığına eminiz, null'sa hata ver
  // siblingAge? => null olabilir, buna göre davran (bu konuya daha sonra döneceğiz)


  if(kardesYas == null){
    
    print("Kullanıcının kardeş verisi bulunamadı.");
    return;

  } else {
    
    int fark = yas - kardesYas!; // ...! null olmadığına eminiz. null olursa hata ver.
    print("Yaş farkı: $fark");

  }
}