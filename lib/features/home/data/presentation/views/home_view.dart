import 'package:bookly_app/core/utlis/service_locator.dart';
import 'package:bookly_app/features/home/data/presentation/manager/featured_books_cubit/featured_books_cubit.dart';
import 'package:bookly_app/features/home/data/presentation/manager/newest_books_cubit/newset_books_cubit.dart';
import 'package:bookly_app/features/home/data/repos/home_repos_impl.dart';
import 'package:flutter/material.dart';
import 'package:bookly_app/features/home/data/presentation/views/widgets/home_view_body.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => FeaturedBooksCubit(
            getIt.get<HomeRepoImpl>(),
          )..fetchFeaturedBooks(),
        ),
        BlocProvider(
          create: (context) => NewsetBooksCubit(
            getIt.get<HomeRepoImpl>(),
          )..fetcNewestBooks(),
        ),
      ],
      child: const Scaffold(
        body: HomeViewBody(),
      ),
    );
  }
}
