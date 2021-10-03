part of rest_api;

class ProductService {
  static final ProductService _productService = ProductService._internal();

  factory ProductService() {
    return _productService;
  }

  ProductService._internal();

  List<Product> getPopularGame() {
    return [
      _oriAndTheBlindForest,
      _raymanLegends,
    ];
  }

  List<Product> getNewestGame() {
    return [_oriAndTheBlindForest];
  }
}

class Product {
  final int id;
  final ImageProvider iconImage;
  final ImageProvider backgroundImage;
  final List<ImageProvider> screenshotImages;
  final String name;
  final String category;
  final String description;
  final double rating;
  final int totalDownload;
  final int totalReview;

  Product({
    required this.id,
    required this.iconImage,
    required this.backgroundImage,
    required this.screenshotImages,
    required this.name,
    required this.category,
    required this.description,
    required this.rating,
    required this.totalDownload,
    required this.totalReview,
  });
}

//sample data
final _oriAndTheBlindForest = Product(
    id: 0,
    iconImage: AssetImage(ImageRaster.oriBlindForestIcon),
    backgroundImage: AssetImage(ImageRaster.oriBlindForest1),
    screenshotImages: [
      AssetImage(ImageRaster.oriBlindForest2),
      AssetImage(ImageRaster.oriBlindForest3),
      AssetImage(ImageRaster.oriBlindForest4),
      AssetImage(ImageRaster.oriBlindForest5),
    ],
    name: "ori and the blind forest",
    category: "adventure",
    description:
        "The forest of Nibel is dying. After a powerful storm sets a series of devastating events in motion, an unlikely hero must journey to find his courage and confront a dark nemesis to save his home. “Ori and the Blind Forest” tells the tale of a young orphan destined for heroics, through a visually stunning action-platformer crafted by Moon Studios for PC. Featuring hand-painted artwork, meticulously animated character performance, and a fully orchestrated score, “Ori and the Blind Forest” explores a deeply emotional story about love and sacrifice, and the hope that exists in us all. ",
    rating: 4.7,
    totalDownload: 300,
    totalReview: 15);

final _raymanLegends = Product(
    id: 1,
    iconImage: AssetImage(ImageRaster.raymandLegendIcon),
    backgroundImage: AssetImage(ImageRaster.raymandLegend1),
    screenshotImages: [
      AssetImage(ImageRaster.raymandLegend2),
      AssetImage(ImageRaster.raymandLegend3),
      AssetImage(ImageRaster.raymandLegend4),
      AssetImage(ImageRaster.raymandLegend5),
    ],
    name: "rayman legends",
    category: "action",
    description:
        "Michel Ancel, the celebrated creator of Rayman®, Beyond Good & Evil®, and the Raving Rabbids®, returns to unleash his innovative creativity on this new entry into the Rayman® franchise.\n When Rayman, Globox, and the Teensies discover a mysterious tent filled with captivating paintings, they are suddenly transported to a series of mythical new worlds! \n Join them as they run, jump, and slap their way through each world to get home, save the day, and discover the secrets of the legendary paintings!",
    rating: 3.7,
    totalDownload: 500,
    totalReview: 300);
