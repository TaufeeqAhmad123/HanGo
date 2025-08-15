class ReviewModel {
  final String reviewerName;
  final int daysAgo;
  final String reviewerImage;
  final String reviewText;
  final double rating;

  ReviewModel({
    required this.reviewerName,
    required this.daysAgo,
    required this.reviewerImage,
    required this.reviewText,
    required this.rating,
  });
}