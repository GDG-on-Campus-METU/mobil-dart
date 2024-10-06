List<int> dizi1 = [1, 2, 3, 4, 5];

void main() {
  print(dizi1);

  dizi1.add(6);

  print(dizi1);

  List<int> dizi2 = [];

  // dizi1 deki her bir elemanı alıp 1 ekleyerek dizi2 ye ekleyelim.
  for (int sayi in dizi1) {
    dizi2.add(sayi + 1);
  }

  dizi2.clear();

  for (int i = 0; i < dizi1.length; i++) {
    dizi2.add(dizi1[i] + 1);
  }

  // dizi2 = dizi1.map((sayi) {return sayi + 1;}).toList();

  print(dizi2);
}
