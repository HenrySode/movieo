import 'package:flutter/material.dart';
import 'package:movie_app/api_services/api.dart';
import 'package:movie_app/components/app_bar_title.dart';
import 'package:movie_app/components/menu_button.dart';
import 'package:movie_app/components/movie_slider.dart';
import 'package:movie_app/components/trending_slider.dart';
import 'package:movie_app/components/sub_title.dart';
import 'package:movie_app/models/movie.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  late Future<List<Movie>> trendingMovies;
  late Future<List<Movie>> topRatedMovies;
  late Future<List<Movie>> upcomingMovies;

  @override
  void initState() {
    super.initState();
    trendingMovies = Api().getTrendingMovies();
    topRatedMovies = Api().getTopRatedMovies();
    upcomingMovies = Api().getUpcomingMovies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        centerTitle: true,
        title: AppBarTitle(
          title1: 'MOV',
          title2: 'IEO',
        ),
        actions: [MenuButton()],
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SubTitle(
              text: 'Trending Movies',
            ),
            SizedBox(
              height: 10,
            ),
            SizedBox(
              child: FutureBuilder(
                  future: trendingMovies,
                  builder: (context, snapshot) {
                    if (snapshot.hasError) {
                      return Center(
                        child: Text(snapshot.error.toString()),
                      );
                    } else if (snapshot.hasData) {
                      return Trending(
                        snapshot: snapshot,
                      );
                    } else {
                      return Center(
                        child: CircularProgressIndicator(),
                      );
                    }
                  }),
            ),
            SizedBox(height: 25),
            SubTitle(
              text: 'Top rated Movies',
            ),
            SizedBox(height: 5),
            SizedBox(
              child: FutureBuilder(
                  future: topRatedMovies,
                  builder: (context, snapshot) {
                    if (snapshot.hasError) {
                      return Center(
                        child: Text(snapshot.error.toString()),
                      );
                    } else if (snapshot.hasData) {
                      return MovieSlider(
                        snapshot: snapshot,
                      );
                    } else {
                      return Center(
                        child: CircularProgressIndicator(),
                      );
                    }
                  }),
            ),
            SizedBox(height: 25),
            Divider(),
            SubTitle(text: 'Upcoming Movies'),
            SizedBox(height: 5),
            SizedBox(
              child: FutureBuilder(
                  future: upcomingMovies,
                  builder: (context, snapshot) {
                    if (snapshot.hasError) {
                      return Center(
                        child: Text(snapshot.error.toString()),
                      );
                    } else if (snapshot.hasData) {
                      return MovieSlider(
                        snapshot: snapshot,
                      );
                    } else {
                      return Center(
                        child: CircularProgressIndicator(),
                      );
                    }
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
