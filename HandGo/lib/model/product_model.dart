import 'package:flutter_application_1/core/utils/image.dart';
import 'package:flutter_application_1/model/review_model.dart';
class ProductModel {
  final String title;
  final String providerName;
  final String description;
  final String image;
  final double price;
  final int customerNumber;
  final double satisfactionPercentage;
  final double rating;
  final int reviewCount;
  final List<ReviewModel> reviews;

  ProductModel({
    required this.title,
    required this.providerName,
    required this.description,
    required this.image,
    required this.price,
    required this.customerNumber,
    required this.satisfactionPercentage,
    required this.rating,
    required this.reviewCount,
    required this.reviews,
  });
}


List<ProductModel> products = [
  ProductModel(
    title: "Home Deep Cleaning",
    providerName: "Robert Shavi",
    description:
        "A complete home deep cleaning service including kitchen, bathrooms, floors, and furniture polishing. Ideal for seasonal cleaning or before special events. A complete home deep cleaning service including kitchen, bathrooms.",
    image: p2,
    price: 5000,
    customerNumber: 250,
    satisfactionPercentage: 96.5,
    rating: 4.7,
    reviewCount: 202,
    reviews: [
      ReviewModel(
        reviewerName: "Ali Khan",
        daysAgo: 2,
        reviewerImage: "https://randomuser.me/api/portraits/men/32.jpg",
        reviewText: "Excellent service! My home looks brand new.",
        rating: 5.0,
      ),
      ReviewModel(
        reviewerName: "Sana Ahmed",
        daysAgo: 5,
         rating: 4.7,
        reviewerImage: "https://randomuser.me/api/portraits/women/45.jpg",
        reviewText: "Very professional and on time.",
      ),
    ],
  ),
  ProductModel(
    title: "Carpet Cleaning",
    providerName: "James Carter",
    description:
        "Deep shampoo cleaning for carpets to remove dirt, stains, and bad odor, leaving your carpet fresh and soft.A complete home deep cleaning service including kitchen.",
    image: p3,
    price: 3000,
    customerNumber: 180,
    satisfactionPercentage: 94.2,
    rating: 4.5,
    reviewCount: 156,
    reviews: [
      ReviewModel(
        reviewerName:
         "Hassan Raza",
        daysAgo: 3,
        reviewerImage: "https://randomuser.me/api/portraits/men/50.jpg",
        reviewText: "My carpet looks and smells amazing now!",
        rating: 5.0,
      ),
    ],
  ),
  ProductModel(
    title: "Furniture Repair",
    providerName: "Sophia Williams",
    description:
        "Expert wooden furniture repair service for scratches, dents, loose joints, and polish restoration.A complete home deep cleaning service including kitchen, bathrooms, floors, and furniture polishing. Ideal for seasonal cleaning or before special events.",
    image: p4,
    price: 7000,
    customerNumber: 120,
    satisfactionPercentage: 92.0,
    rating: 4.3,
    reviewCount: 134,
    reviews: [
      ReviewModel(
        reviewerName: "Fatima Noor",
        daysAgo: 7,
         rating: 4.7,
        reviewerImage: "https://randomuser.me/api/portraits/women/60.jpg",
        reviewText: "They repaired my dining table perfectly!",
      ),
      ReviewModel(
        reviewerName: "Usman Tariq",
        daysAgo: 10,
         rating: 4.7,
        reviewerImage: "https://randomuser.me/api/portraits/men/41.jpg",
        reviewText: "Great attention to detail and affordable prices.",
      ),
    ],
  ),
  ProductModel(
    title: "Wall Painting",
    providerName: "Michael Johnson",
    description:
        "Professional wall painting with high-quality paints, smooth finishing, and custom color options.A complete home deep cleaning service including kitchen, bathrooms, floors, and furniture polishing. Ideal for seasonal cleaning or before special events.",
    image: p5,
    price: 15000,
    customerNumber: 300,
    satisfactionPercentage: 97.8,
    rating: 4.9,
    reviewCount: 280,
    reviews: [
      ReviewModel(
        reviewerName: "Zara Qureshi",
        daysAgo: 1,
         rating: 4.7,
        reviewerImage: "https://randomuser.me/api/portraits/women/15.jpg",
        reviewText: "The paint job was flawless and the colors are perfect!",
      ),
    ],
  ),
  ProductModel(
    title: "Metal Gate Painting",
    providerName: "David Smith",
    description:
        "Rust-proof metal gate painting service with durable industrial-grade paint to last for years.",
    image: p6,
    price: 8000,
    customerNumber: 90,
    satisfactionPercentage: 95.4,
    rating: 4.4,
    reviewCount: 102,
    reviews: [
      ReviewModel(
        reviewerName: "Imran Malik",
        daysAgo: 4,
        reviewerImage: "https://randomuser.me/api/portraits/men/12.jpg",
        reviewText: "My gate looks brand new, very happy with the result!",
        rating: 5.0,
      ),
    ],
  ),
];
