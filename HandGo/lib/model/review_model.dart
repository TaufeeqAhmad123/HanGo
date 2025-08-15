class ReviewModel {
  final String reviewerName;
  final int daysAgo;
  final String reviewerImage;
  final String reviewText;

  ReviewModel({
    required this.reviewerName,
    required this.daysAgo,
    required this.reviewerImage,
    required this.reviewText,
  });
}