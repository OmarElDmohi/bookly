
import 'package:books/features/Details/Presentation/Views/DetailsScreen.dart';
import 'package:books/features/home/presentation/views/HomeScreen.dart';
import 'package:books/features/splash/presentation/views/SplashScreen.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static const kHomeView = "/homeView";
  static const kSearchView = "/searchView";
  static const kDetailsView = "/detailsView";
  static const kSplashView = "/";

  static final GoRouter router = GoRouter(
      routes: [
        GoRoute(path: '/',builder: (context,state)=>const SplashScreen()),
        GoRoute(path: kHomeView,builder: (context,state)=>const HomeScreen()),
        GoRoute(path: kSearchView,builder: (context,state)=>const SplashScreen()),
        GoRoute(path: kDetailsView,builder: (context,state)=>const DetailsScreen()),
        GoRoute(path: kSplashView,builder: (context,state)=>const SplashScreen()),
  ]
  );

}