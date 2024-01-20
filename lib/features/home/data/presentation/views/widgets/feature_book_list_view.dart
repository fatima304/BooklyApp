import 'package:bookly_app/core/utlis/app_router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:bookly_app/features/home/data/presentation/views/widgets/error_widget.dart';
import 'package:bookly_app/features/home/data/presentation/views/widgets/feature_book_item.dart';
import 'package:bookly_app/features/home/data/presentation/manager/featured_books_cubit/featured_books_cubit.dart';
import 'package:go_router/go_router.dart';

class FeatureBookListView extends StatelessWidget {
  const FeatureBookListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeaturedBooksCubit, FeaturedBooksState>(
        builder: (context, state) {
      if (state is FeaturedBooksSuccess) {
        return SizedBox(
          height: MediaQuery.of(context).size.height * 0.28,
          child: ListView.builder(
            physics: const BouncingScrollPhysics(),
            itemCount: state.books.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.only(
                  left: 10,
                ),
                child: GestureDetector(
                  onTap: () {
                    GoRouter.of(context).push(AppRouter.kBookDetailsView,
                        extra: state.books[index]);
                  },
                  child: FeatureBookItem(
                      imageUrl:
                          state.books[index].volumeInfo.imageLinks?.thumbnail ??
                              ''),
                ),
              );
            },
          ),
        );
      } else if (state is FeaturedBooksFailure) {
        return WidgetError(errorMessage: state.errorMessag);
      } else {
        return const Center(
          child: CircularProgressIndicator(),
        );
      }
    });
  }
}
