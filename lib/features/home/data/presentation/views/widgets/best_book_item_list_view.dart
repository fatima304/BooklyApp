import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:bookly_app/features/home/data/presentation/views/widgets/error_widget.dart';
import 'package:bookly_app/features/home/data/presentation/views/widgets/best_book_item.dart';
import 'package:bookly_app/features/home/data/presentation/manager/newest_books_cubit/newset_books_cubit.dart';

class BookItemListView extends StatelessWidget {
  const BookItemListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewsetBooksCubit, NewsetBooksState>(
      builder: (context, state) {
        if (state is NewsetBooksSuccess) {
          return ListView.builder(
            physics: const NeverScrollableScrollPhysics(),
            itemCount: state.books.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.only(left: 10, bottom: 16),
                child: NewsetBookItem(
                    imageUrl:
                        state.books[index].volumeInfo.imageLinks.thumbnail),
              );
            },
          );
        } else if (state is NewsetBooksFailure) {
          return WidgetError(errorMessage: state.errorMessage);
        } else {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
      },
    );
  }
}
