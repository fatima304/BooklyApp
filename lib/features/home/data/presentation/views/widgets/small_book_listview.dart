import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:bookly_app/features/home/data/presentation/views/widgets/feature_book_item.dart';
import 'package:bookly_app/features/home/data/presentation/manager/relevece_books_cubit/relevence_books_cubit.dart';

class SmallBookListView extends StatelessWidget {
  const SmallBookListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RelevenceBooksCubit, RelevenceBooksState>(
      builder: (context, state) {
        if (state is RelevenceBookSuccess) {
          return SizedBox(
            height: MediaQuery.of(context).size.height * 0.2,
            child: ListView.builder(
              itemCount: 6,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return const Padding(
                  padding: EdgeInsets.only(
                    right: 10,
                  ),
                  child: FeatureBookItem(
                      imageUrl:
                          'https://www.google.com/url?sa=i&url=https%3A%2F%2Fposterfoundry.com%2Fharry-potter-and-the-deathly-hallows-book-cover-poster-24x36%2F&psig=AOvVaw1Ty3IcsvN0Jd3tYMmh_XA4&ust=1705585927780000&source=images&cd=vfe&opi=89978449&ved=0CBMQjRxqFwoTCIiFjfPI5IMDFQAAAAAdAAAAABAY'),
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
