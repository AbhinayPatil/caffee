class CarouselItem {
  final String img;
  final String title;
  final String subTiltle;
  final double rating;
  final int reviewCount;
  final String description;

  CarouselItem(
      {required this.img,
      required this.description,
      required this.title,
      required this.subTiltle,
      required this.rating,
      required this.reviewCount});
}
