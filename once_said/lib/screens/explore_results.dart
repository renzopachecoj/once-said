import 'package:flutter/cupertino.dart';
import 'package:once_said/screens/results_card.dart';

class ExploreContent extends StatelessWidget {
  final cardsInfo = [
    {
      "song": "Blinding Lights",
      "year": "2019",
      "artists": "The Weeknd",
      "writers": "The Weeknd, Oscar Holter, Max Martin & 2 more",
      "lyrics":
          "The city's cold and empty (Oh)\nNo one's around to judge me (Oh)\nI can't see clearly when you're gone",
      "imageUrl":
          "https://ismorbo.com/wp-content/uploads/2020/03/the-weeknd-after-hours.jpg"
    },
    {
      "song": "One Dance",
      "year": "2017",
      "artists": "Drake",
      "writers": "Logan Sama, China Black, Drake & 6 more",
      "lyrics":
          "Grips on your waist\nFront way, back way\nYou know that I don't play\nStreets not safe\nBut I never run away\nEven when I'm away",
      "imageUrl":
          "https://images.genius.com/04ca8f6cc29d2ddde9e6756b92488a6f.1000x1000x1.jpg"
    },
    {
      "song": "Born to Die",
      "year": "2011",
      "artists": "Lana Del Rey",
      "writers": "Lana Del Rey & Justin Parker",
      "lyrics":
          "Don't make me sad, don't make me cry\nSometimes love is not enough and the road gets tough\nI don't know why",
      "imageUrl":
          "https://static.wikia.nocookie.net/lanadelrey/images/3/34/BTDdeluxeartworkHD.jpeg/revision/latest?cb=20180420065221"
    },
    {
      "song": "Thank U, Next",
      "year": "2018",
      "artists": "Ariana Grande",
      "writers": "Victoria Monét, Ariana Grande, Njomza & 5 more",
      "lyrics":
          "I've got so much love (Love)\nGot so much patience (Patience)\nAnd I've learned from the pain (Pain)\nI turned out amazing (Turned out amazing)",
      "imageUrl":
          "https://static.wikia.nocookie.net/arianagrande/images/5/51/Thank_U%2C_Next_-_Digital_Version.jpg/revision/latest?cb=20190201041109"
    },
    {
      "song": "Maldita Pobreza",
      "year": "2020",
      "artists": "Bad Bunny",
      "writers": "Mick Coogan, MAG & Bad Bunny",
      "lyrics":
          "Yo quiero comprarle un Ferrari a mi novia\nPero no puedo, pero no puedo\nYo quiero comprarle un Ferrari a mi novia\nPero no puedo, no tengo dinero, oh",
      "imageUrl":
          "https://images.genius.com/567b764e878fe32329c4a820687dba9b.1000x1000x1.png"
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: ListView.builder(
      scrollDirection: Axis.horizontal,
      shrinkWrap: true,
      itemCount: cardsInfo.length,
      itemBuilder: (context, index) {
        var data = cardsInfo[index];
        return ResultsCard(
          song: data["song"],
          artists: data["artists"],
          lyrics: data["lyrics"],
          imageUrl: data["imageUrl"],
          writers: data["writers"],
          year: data["year"],
        );
      },
    ));
  }
}
