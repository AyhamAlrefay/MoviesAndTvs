import 'package:untitled1/movies/domain/entities/recommendation.dart';

class RecommendationModel extends Recommendation {
  const RecommendationModel({ String? backdropPath, required int id})
      : super(backdropPath: backdropPath, id: id);

  factory RecommendationModel.fromJson(Map<String, dynamic> json) {
    return RecommendationModel(
        backdropPath: json['backdrop_path'] ?? '/nmGWzTLMXy9x7mKd8NKPLmHtWGa.jpg', id: json['id']);
  }
}
