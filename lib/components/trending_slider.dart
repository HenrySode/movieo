import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:movie_app/api_services/api_key.dart';
import 'package:movie_app/screens/film_details.dart';

class Trending extends StatelessWidget {
  final AsyncSnapshot snapshot;

  const Trending({
    super.key,
    required this.snapshot,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: CarouselSlider.builder(
        itemCount: snapshot.data.length, // Use the actual data count
        options: CarouselOptions(
          height: 300,
          autoPlay: true,
          viewportFraction: 0.55,
          enlargeCenterPage: true,
          autoPlayCurve: Curves.fastOutSlowIn,
          pageSnapping: true,
          autoPlayAnimationDuration: Duration(seconds: 1),
        ),
        itemBuilder: (context, itemIndex, pageViewIndex) {
          return Container(
            margin: EdgeInsets.symmetric(horizontal: 10), // Optional margin
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.2),
                  spreadRadius: 2,
                  blurRadius: 10,
                  offset: Offset(0, 3), // changes position of shadow
                ),
              ],
            ),
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => FilmDetails(
                      movie: snapshot.data[itemIndex],
                    ),
                  ),
                );
              },
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: SizedBox(
                  height: 300,
                  width: 250,
                  child: Image.network(
                    filterQuality: FilterQuality.high,
                    fit: BoxFit.cover,
                    '${ApiKey.imagePath}${snapshot.data[itemIndex].posterPath}',
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
