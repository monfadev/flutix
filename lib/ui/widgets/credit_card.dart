part of 'widgets.dart';

class CreditCard extends StatelessWidget {
  final Credit credit;

  CreditCard(this.credit);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          height: 80,
          width: 70,
          decoration: BoxDecoration(
              color: Colors.blueGrey[100],
              borderRadius: BorderRadius.circular(8),
              image: (credit.profilePath == null && credit.profilePath == "")
                  ? Center(
                      child: Container(
                        child: Text("No Image"),
                      ),
                    )
                  : DecorationImage(
                      image: (imageBaseURL + "w185" + credit.profilePath !=
                                  null &&
                              imageBaseURL + "w185" + credit.profilePath != "")
                          ? NetworkImage(
                              imageBaseURL + "w185" + credit.profilePath)
                          : AssetImage("assets/logo.png"),
                      fit: BoxFit.cover)),
        ),
        Container(
          margin: EdgeInsets.only(top: 6),
          width: 70,
          child: Text(
            credit.name,
            textAlign: TextAlign.center,
            maxLines: 2,
            overflow: TextOverflow.clip,
            style: blackTextFont.copyWith(
                fontSize: 10, fontWeight: FontWeight.w400),
          ),
        ),
      ],
    );
  }
}
