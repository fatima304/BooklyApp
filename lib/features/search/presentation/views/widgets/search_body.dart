import 'package:flutter/material.dart';
import 'package:bookly_app/core/utlis/style.dart';
import 'package:bookly_app/features/search/presentation/views/widgets/custom_search_field.dart';
import 'package:bookly_app/features/home/data/presentation/views/widgets/best_book_item.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        children: [
          CustomSearchField(),
          SizedBox(
            height: 20,
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              'Search Result',
              style: Styles.textStyle20,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Expanded(
            child: SearchResult(),
          ),
        ],
      ),
    );
  }
}

class SearchResult extends StatelessWidget {
  const SearchResult({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 10,
      itemBuilder: (context, index) {
        return const Padding(
          padding: EdgeInsets.symmetric(vertical: 10),
          child: NewsetBookItem(
              imageUrl:
                  'https://www.google.com/url?sa=i&url=https%3A%2F%2Fposterfoundry.com%2Fharry-potter-and-the-deathly-hallows-book-cover-poster-24x36%2F&psig=AOvVaw1Ty3IcsvN0Jd3tYMmh_XA4&ust=1705585927780000&source=images&cd=vfe&opi=89978449&ved=0CBMQjRxqFwoTCIiFjfPI5IMDFQAAAAAdAAAAABAY'),
        );
      },
    );
  }
}
