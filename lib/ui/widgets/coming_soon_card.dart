part of 'widgets.dart';

class ComingSoonCard extends StatelessWidget {
  final Movie movie;
  final Function onTap;

  ComingSoonCard(this.movie, {this.onTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 160,
      width: 120,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          image: DecorationImage(
              image: (imageBaseURL + "w500" + movie.posterPath != null &&
                      imageBaseURL + "w500" + movie.posterPath != "")
                  ? NetworkImage(imageBaseURL + "w500" + movie.posterPath)
                  : AssetImage("assets/logo.png"),
              fit: BoxFit.cover)),
    );
  }
}
