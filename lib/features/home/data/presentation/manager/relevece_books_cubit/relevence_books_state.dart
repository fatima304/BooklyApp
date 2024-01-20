part of 'relevence_books_cubit.dart';

sealed class RelevenceBooksState extends Equatable {
  const RelevenceBooksState();

  @override
  List<Object> get props => [];
}

class RelevenceBooksInitial extends RelevenceBooksState {}

class RelevenceBookLoading extends RelevenceBooksState {}

class RelevenceBookSuccess extends RelevenceBooksState {
  final List<BookModel> books;

  const RelevenceBookSuccess(this.books);
}

class RelevenceBookFailure extends RelevenceBooksState {
  final String errorMessage;

  const RelevenceBookFailure(this.errorMessage);
}
