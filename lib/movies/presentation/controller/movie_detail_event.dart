part of 'movie_detail_bloc.dart';

abstract class MovieDetailEvent extends Equatable {
  const MovieDetailEvent();
}

class GetMovieDetailEvent extends MovieDetailEvent{
  final int id;

 const  GetMovieDetailEvent(this.id);

  @override
  // TODO: implement props
  List<Object?> get props =>[id];

}
class GetMovieRecommendationEvent extends MovieDetailEvent{
  final int id;

 const  GetMovieRecommendationEvent(this.id);

  @override
  // TODO: implement props
  List<Object?> get props => [id];

}