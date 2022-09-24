import 'package:untitled1/movies/domain/entities/movie.dart';

class MovieModel extends Movie {
  const MovieModel({required int id,
    required String title,
    required String backdropPath,
    required String overview,
    required List<int> genreIds,
    required double voteAverage,
    required String releaseDate})
      : super(
      id: id,
      title: title,
      backdropPath: backdropPath,
      overview: overview,
      genreIds: genreIds,
      voteAverage: voteAverage,
      releaseDate: releaseDate);

 factory MovieModel.fromJson(Map<String, dynamic> json)=>
      MovieModel(
        id: json['id'],
        title: json['title'],
        backdropPath: json['backdrop_path'],
        overview: json['overview'],
        genreIds: List<int>.from(json['genre_ids'].map((e) => e)) ,
        //TODO : CHECK THIS
        voteAverage: json['vote_average'],
        releaseDate: json['release_date'],);

}
