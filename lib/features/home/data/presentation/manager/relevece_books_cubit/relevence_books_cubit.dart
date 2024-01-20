import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:bookly_app/features/home/data/repos/home_repo.dart';
import 'package:bookly_app/features/home/data/models/book_model/book_model.dart';

part 'relevence_books_state.dart';

class RelevenceBooksCubit extends Cubit<RelevenceBooksState> {
  RelevenceBooksCubit(this.homeRepo)
      : super(
          RelevenceBooksInitial(),
        );
  final HomeRepo homeRepo;
  Future<void> fetchRelevenceBook({required String category}) async {
    emit(
      RelevenceBookLoading(),
    );
    var result = await homeRepo.fetchRelevenceBooks(category: category);
    result.fold(
      (failure) {
        emit(
          RelevenceBookFailure(failure.errorMessage),
        );
      },
      (books) {
        emit(RelevenceBookSuccess(books));
      },
    );
  }
}
