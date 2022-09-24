import 'package:untitled1/movies/domain/entities/genres.dart';

class GenresModel extends Genres {
  const GenresModel({
    required String name,
    required int id,
  }) : super(name: name, id: id);

  factory GenresModel.fromJson(Map<String, dynamic> json) {
    return GenresModel(
      name: json['name'],
      id: json['id'],
    );
  }
}
