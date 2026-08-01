class Product{
  int id;
  String name;
  String category;
  double price;
  bool isAvailable;
  Product(this.id, this.name, this.price,this.category,  this.isAvailable, );
  @override
  String toString() {
    return 'Product(id: $id, name: $name, price: $price, available: $isAvailable)';
  }
  static void getProduct(){
    List<Product> products = [
      Product( 1,  "laptop", 25000,  "Electronics",  true),
      Product( 2,  "mobile",  15000,  "Electronics",  true),
      Product( 3,  "book",  500,  "Education",  true),
      Product( 4,  "hand free", 3000,  "Electronics",  false),
      Product( 5, "chocolate",  150,  "Food", true),
      Product( 6,  "key board",  2000,  "Electronics", false),
    ];
    var available = products.where((p) => p.isAvailable).toList();
    var names = products.map((p) => p.name).toList();
    var availElec = products
        .where((p) => p.category == "Electronics" && p.isAvailable)
        .map((p) => p.name)
        .toList();
    var total = products.fold(0.0, (sum, p) => sum + p.price);
    var availTotal = products
        .where((p) => p.isAvailable)
        .fold(0.0, (sum, p) => sum + p.price);
    var hasExpensive = products.any((p) => p.price > 20000);
    var allAbove100 = products.every((p) => p.price > 100);

    var firstElec = products.firstWhere((p) => p.category == "Electronics");

    products.sort((a, b) => a.price.compareTo(b.price));

    List<String> categories = ["Electronics", "Education", "Electronics", "Food"];
    var uniqueCategories = categories.toSet();
    print("Available: $available");
    print("Names: $names");
    print("Available Electronics: $availElec");
    print("Total: $total");
  }




}