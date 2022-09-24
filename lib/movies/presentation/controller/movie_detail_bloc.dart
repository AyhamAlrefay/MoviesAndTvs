
import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:untitled1/core/utils/enums.dart';
import 'package:untitled1/movies/domain/entities/movie_detail.dart';
import 'package:untitled1/movies/domain/entities/recommendation.dart';
import 'package:untitled1/movies/domain/usecases/get_movie_details_usecase.dart';
import 'package:untitled1/movies/domain/usecases/get_recommendation_usecase.dart';

part 'movie_detail_event.dart';
part 'movie_detail_state.dart';

class MovieDetailBloc extends Bloc<MovieDetailEvent, MovieDetailState> {
  MovieDetailBloc(this.getMovieDetailsUseCase,this.getRecommendationUseCase) : super( const MovieDetailState()) {
    on<GetMovieDetailEvent>(_getMovieDetails);
    on<GetMovieRecommendationEvent>(_getRecommendation);
  }
  final GetMovieDetailsUseCase getMovieDetailsUseCase;
  final GetRecommendationUseCase getRecommendationUseCase;

  FutureOr<void> _getMovieDetails(GetMovieDetailEvent event,Emitter<MovieDetailState> emit) async{
    final result =await getMovieDetailsUseCase(MovieDetailsParameters(movieId: event.id));
    result.fold((l) =>emit(state.copyWith(
      movieDetailsState: RequestState.error,
      movieDetailsMessage: l.message
    )), (r) =>emit(
      state.copyWith(
        movieDetailsState: RequestState.loaded,
        movieDetail: r
      )
    ));
  }


  FutureOr<void> _getRecommendation(GetMovieRecommendationEvent event, Emitter<MovieDetailState> emit)async {
    final result =await getRecommendationUseCase(MovieRecommendationParameters((event.id)));
    result.fold((l) =>emit(state.copyWith(
        recommendationState: RequestState.error,
        recommendationMessage: l.message
    )), (r) =>emit(
        state.copyWith(
            recommendationState: RequestState.loaded,
            recommendation: r
        )
    ));

  }
}
