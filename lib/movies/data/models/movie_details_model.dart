import 'package:untitled1/movies/data/models/genres_model.dart';
import 'package:untitled1/movies/domain/entities/genres.dart';
import 'package:untitled1/movies/domain/entities/movie_detail.dart';

class MovieDetailModel extends MovieDetail {
  const MovieDetailModel({
    required String backdropPath,
    required int id,
    required List<Genres> genres,
    required String overview,
    required String releaseDate,
    required int runtime,
    required String title,
    required double voteAverage,
  }) : super(
            backdropPath: backdropPath,
            id: id,
            genres: genres,
            overview: overview,
            releaseDate: releaseDate,
            runtime: runtime,
            title: title,
            voteAverage: voteAverage);

  factory MovieDetailModel.fromJson(Map<String, dynamic> json) {
    return MovieDetailModel(
      backdropPath: json['backdrop_path'],
      id: json['id'],
      genres: List<GenresModel>.from(json['genres'].map((e) => GenresModel.fromJson(e))),
      overview: json['overview'],
      releaseDate: json['release_date'],
      runtime: json['runtime'],
      title: json['title'],
      voteAverage: json['vote_average'].toDouble(),
    );
  }
}
