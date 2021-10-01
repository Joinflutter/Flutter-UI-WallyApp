class Category {
  final String title;
  final String image;

  Category({required this.image, required this.title});
}

List<Category> categories = <Category>[
  Category(image: 'assets/images/apbstract.png', title: 'Abstract'),
  Category(image: 'assets/images/mimmal.png', title: 'Minimal'),
  Category(image: 'assets/images/animal.png', title: 'Animals'),
  Category(image: 'assets/images/nature.png', title: 'Nature'),
  Category(image: 'assets/images/archa.png', title: 'Architecture'),
  Category(image: 'assets/images/plants.png', title: 'Plants'),
  Category(image: 'assets/images/art.png', title: 'Art'),
  Category(image: 'assets/images/space.png', title: 'Space'),
  Category(image: 'assets/images/colors.png', title: 'Colours'),
  Category(image: 'assets/images/food.png', title: 'Food'),  
  Category(image: 'assets/images/texture.png', title: 'Texture'),  
];
