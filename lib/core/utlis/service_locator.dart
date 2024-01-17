import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:bookly_app/core/utlis/api_service.dart';
import 'package:bookly_app/features/home/data/repos/home_repos_impl.dart';

final getIt = GetIt.instance;

void setupServiceLocator() {
  getIt.registerSingleton<ApiService>(
    ApiService(
      Dio(),
    ),
  );
  getIt.registerSingleton<HomeRepoImpl>(
    HomeRepoImpl(
      ApiService(
        Dio(),
      ),
    ),
  );
  getIt.registerSingleton<AuthRepo>(
    AuthRepo(
      getIt.get<ApiService>(),
    ),
  );
}

class AuthRepo {
  final ApiService apiService;

  AuthRepo(this.apiService);
}
