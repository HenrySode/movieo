import 'package:flutter/material.dart';
import 'package:movie_app/api_services/api_key.dart';
import 'package:movie_app/screens/film_details.dart';

class MovieSlider extends StatelessWidget {
  final AsyncSnapshot snapshot;
  const MovieSlider({
    super.key,
    required this.snapshot,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      width: double.infinity,
      child: ListView.builder(
        itemCount: snapshot.data!.length,
        scrollDirection: Axis.horizontal,
        physics: BouncingScrollPhysics(),
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.symmetric(horizontal: 5.0),
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => FilmDetails(
                      movie: snapshot.data[index],
                    ),
                  ),
                );
              },
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: SizedBox(
                  height: 180,
                  width: 150,
                  child: Image.network(
                      filterQuality: FilterQuality.high,
                      fit: BoxFit.cover,
                      '${ApiKey.imagePath}${snapshot.data![index].posterPath}'),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
