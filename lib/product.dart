class Product {
  final String name;
  final double price;
  final String image;
  final String description;
  final double rating;
  final List<String> specifications;
  final List<String> reviews;
  final List<String> faqs;

  Product({
    required this.name,
    required this.price,
    required this.image,
    required this.description,
    required this.rating,
    required this.specifications,
    required this.reviews,
    required this.faqs,
  });
}
