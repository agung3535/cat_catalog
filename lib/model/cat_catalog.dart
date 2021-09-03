class CatCatalog{
  String name;
  String description;
  String imageAsset;
  
  CatCatalog({
    required this.name,
    required this.description,
    required this.imageAsset
  });
  
}

var catCatalog = [
  CatCatalog(name: "abyssinian",
      description: "Jenis Kucing Bengal sebenarnya adalah campuran dari berbagai ras kucing seperti Abyssinian, American Shorthair, Burmese, Egyptian Mau dan Asian Leopard. Kucing Bengal bahkan masih satu keluarga dengan macan tutul. Kamu tidak perlu khawatir karena kucing jenis ini memiliki sifat yang jinak dan sangat ramah sebagai hewan peliharaan.",
      imageAsset: "images/abyssinian.png"),
  CatCatalog(name: "American Short Hair",
      description: "Kucing jenis American Shorthair jadi salah satu kucing yang paling disukai sebagai hewan peliharaan karena warna perak bulunya yang khas dan coraknya yang seperti marmer. Sekarang jenis kucing American Shorthair memiliki 60 jenis warna bulu. Karakter tubuhnya berbadan besar dengan keseimbangan yang baik dan kaki lurus yang pendek.",
      imageAsset: "images/american-shorthairs.png"),
  CatCatalog(name: "Birmasn",
      description: "Jenis kucing Birman mudah dikenali dari mata birunya yang khas serta hidung cokelatnya yang manis. Birman memiliki berbagai warna, tetapi mereka semua terlahir putih. Kucing ini memiliki warna bulu yang berbeda saat tumbuh dewasa. Birman sangat manis dan pendiam, dan mereka bisa bergaul dengan hampir semua orang.",
      imageAsset: "images/birmans.png"),
  CatCatalog(name: "Maine Coone",
      description: "Kucing Maine Coon merupakan jenis kucing paling besar dari semua jenis Kucing Domestik. Rata-rata berat Kucing Maine Coon mencapai 15 kilogram. Kucing Maine Coon termasuk jenis kucing yang kuat, perkasa, dan bisa bertahan hidup dengan iklim yang ekstrim. Kucing jenis ini memiliki karakteristik bulu yang tebal dan halus, mata besar, dan cakar yang besar. \n"
          "Asal ras kucing Maine Coon adalah Amerika Utara, tepatnya negara bagian Maine. Maine Coon merupakan hasil persilangan antara kucing domestik bulu pendek dengan kucing luar negeri berbulu panjang. Ada pula yang menyatakan bahwa Kucing Maine Coon merupakan hasil persilangan antara kucing dan rakun. \n"
          "Sifatnya yang lembut dan penyayang akan membuat Kucing Maine Coon sangat cocok jadi hewan peliharaan. Kucing jenis ini juga setia pada pemiliknya. Untuk Kucing Maine Coon usia 3-4 bulan bisa dihargai sampai 8 juta.",
      imageAsset: "images/mainecoone.png"),
  CatCatalog(name: "Persians",
      description: "Kucing persia menjadi jenis kucing ras asing yang pertama diimpor ke Thailand. Jenis kucing ini juga menjadi salah satu ras kucing yang paling populer dijadikan hewan peliharan baik lokal maupun internasional. Kucing persia memiliki kepala dan dahi yang bulat lebar dan telinga kecil yang ujungnya membulat. Bentuk ekornya pun pendek dan kaki yang pendek. \n"
          "Kucing persia memiliki karakter yang ramah dan mudah bergaul, jadi cocok jadi teman bermain. Jenis kucing ini juga memiliki kebiasaan yang lemah lembut, ramah, santai periang, dan cerdas. Parasnya yang menggemaskan dan unik membuat Kucing Persia jadi primadona para pecinta kucing.",
      imageAsset: "images/persians.png"),
  CatCatalog(name: "Ragdoll",
      description: "Kucing Ragdoll merupakan jenis kucing asal Amerika Serikat dengan nama asli Ragdoll yang diambil dari sifatnya yang jinak layaknya sebuah boneka. Kamu mungkin akan sering mendapati Kucing Ragdoll ini bermanja-manja dan bergantungan di tangan sang pemilik layaknya rag doll. \n"
          "Karakteristik tubuhnya hampir sama dengan jenis Kucing Persia dan Siam dari matanya yang biru sampai wajah dan pipinya yang bulat. Dadanya lebar berotot dengan tulang kaki yang kuat dan tengkoraknya juga besar.  Kucing jenis ini memiliki sifat yang tenang, santai, dan sangat penyayang. Kucing Ragdoll menyukai ketenangan namun tetap senang jika berada di sekitar banyak orang.",
      imageAsset: "images/ragdoll.png"),
  CatCatalog(name: "Scottish Fold",
      description: "Kucing Scottish Fold adalah jenis kucing yang terkenal karena memiliki karakteristik tubuh yang unik, yakni bentuk telinga yang terlipat. Kegemasan kucing ini juga ditambah dengan mata besar dengan wajah menyerupai burung hantu dan badannya yang bulat gembul. Kucing Scottish Fold pertama ditemukan di Skotlandia tahun 1961 oleh seorang petani. Lalu jenis kucing ini berkembang biak hingga saat ini Kucing Scottish Fold jadi hewan peliharaan favorit. \n"
          "Kebiasaan alami kucing jenis ini adalah sopan, patuh, dan sangat penuh kasih sayang. Kisaran harga Kucing Scottish Fold asli mulai 6 Jutaan, sedangkan untuk jenis campuran harganya mulai 2 Jutaan.",
      imageAsset: "images/scottish-fold.png"),
  CatCatalog(name: "Siamese",
      description: "Kucing Siam merupakan jenis kucing dengan ras oriental yang populer di Thailand dan paling terkenal dari semua jenis kucing pedigree. Di negara asalnya, Kucing Siam dikenal sebagai “Royal Cat of Siam”. Kucing Siam ditemukan di Ancient Siamese City of Ayhuda, sebuah kota di Buma sekitar tahun 1350-an. Muncul pertama kali di Australia tahun 1890, Kucing Siam kini menjadi salah satu jenis kucing yang paling populer sebagai hewan peliharaan. \n"
          "Kucing Siam memiliki 3 jenis, yakni Kucing Siam klasik, Kucing Siam Tradisional, dan Kucing Siam Modern. Kucing Jenis ini memiliki karakteristik bentuk tubuh yang ramping, ekor panjang, mata biru, dan bulunya pendek bertitik gelap pada muka, telinga, ekor, dan kakinya.",
      imageAsset: "images/siamese.png"),
  CatCatalog(name: "Sphynx",
      description: "Kucing Sphynx adalah salah satu jenis kucing yang unik karena hampir tidak memiliki bulu sama sekali. Di Australia, Kucing Sphynx menjadi satu-satunya jenis kucing yang dikenal tidak memiliki bulu. Namun sebenarnya Kucing Sphynx masih memiliki bulu yang sangat pendek dan hampir menyerupai kulit. Uniknya lagi Kucing Sphynx juga menjadi satu-satunya jenis kucing yang memiliki kelenjar keringat. Karena keunikannya ini lah Kucing Sphynx banyak diburu para pecinta kucing. \n"
          "Kucing jenis ini memiliki karakteristik tubuh yang ramping dengan telinga yang berbentuk segitiga, kulit kening yang berkerut, dan dada yang kuat. Bentuk ekornya kecil dan panjang dan beberapa kucing jenis ini memiliki kumis. Sphynx memiliki sifat yang penuh kasih sayang dan bisa bergaul dengan hewan-hewan peliharaan lainnya.",
      imageAsset: "images/sphynx.png"),
  CatCatalog(name: "Russian Blue",
      description: "Kucing Russian Blue berasal dari daerah pelabuhan Arkhangelsk, Rusia. Kucing jenis ini memiliki bulu yang anggun dan mata hijau yang berkilau. Lapisan bulu Kucing Russian Blue sangat berbeda dengan jenis kucing lainnya, yakni berwarna perak biru, berukuran pendek, tebal, dan sangat halus. \n"
          "Memiliki karakteristik yang anggun, Kucing Russian Blue dapat jadi hewan peliharaan yang mewah dan megah. Hal ini juga berpengaruh pada harga jenis kucing ini yang fantastis mencapai 39 jutaan. Sedangkan harga dibandrol sekitar 900 ribuan untuk jenis Kucing Russian Blue campuran.",
      imageAsset: "images/russian-blue.png"),
];