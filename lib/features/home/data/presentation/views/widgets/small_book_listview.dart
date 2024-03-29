import 'package:bookly_app/core/utlis/app_router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:bookly_app/features/home/data/presentation/views/widgets/feature_book_item.dart';
import 'package:bookly_app/features/home/data/presentation/manager/relevece_books_cubit/relevence_books_cubit.dart';
import 'package:go_router/go_router.dart';

class SmallBookListView extends StatelessWidget {
  const SmallBookListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RelevenceBooksCubit, RelevenceBooksState>(
      builder: (context, state) {
        if (state is RelevenceBookSuccess) {
          return SizedBox(
            height: MediaQuery.of(context).size.height * 0.27,
            child: ListView.builder(
              itemCount: state.books.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(
                    right: 16,
                  ),
                  child: GestureDetector(
                    onTap: () {
                      GoRouter.of(context).push(AppRouter.kBookDetailsView,
                          extra: state.books[index]);
                    },
                    child: FeatureBookItem(
                        imageUrl: state.books[index].volumeInfo.imageLinks
                                ?.thumbnail ??
                            ' '),
                  ),
                );
              },
            ),
          );
        } else if (state is RelevenceBookFailure) {
          return ErrorWidget(state.errorMessage);
        } else {
          return const Center(child: CircularProgressIndicator());
        }
      },
    );
  }
}
