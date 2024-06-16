class Popular {
  final int id;
  final String title;
  final String description;
  final String image;
  final String time;
  final dynamic storage;

  Popular({
    required this.id,
    required this.title,
    required this.description,
    required this.image,
    required this.time,
    required this.storage,
  });

  factory Popular.fromJson(Map<String, dynamic> json) {
    return Popular(
      id: json['id'],
      title: json['title'],
      description: json['description'],
      image: json['image'],
      time: json['time'],
      storage: json['storage'],
    );
  }
}

List<Popular> lstPopular = [
  Popular(
    id: 1,
    title: "The Acolyte",
    description:
        "An investigation into a shocking crime spree pits a respected Jedi Master against a dangerous warrior from his past. As more clues emerge, they travel down a dark path where sinister forces reveal all is not what it seems.",
    time: "2:30M",
    image:
        "https://media.themoviedb.org/t/p/w600_and_h900_bestv2/9OV6McrRh1BAnrak3yVP9xYuUId.jpg",
    storage: 1.2,
  ),
  Popular(
    id: 2,
    title: "A Mad Max Saga",
    description:
        "As the world fell, young Furiosa is snatched from the Green Place of Many Mothers and falls into the hands of a great Biker Horde led by the Warlord Dementus. Sweeping through the Wasteland they come across the Citadel presided over by The Immortan Joe. While the two Tyrants war for dominance, Furiosa must survive many trials as she puts together the means to find her way home.",
    time: "2h 29m",
    image:
        "https://media.themoviedb.org/t/p/w600_and_h900_bestv2/dBxxtfhC4vYrxB2fLsSxOTY2dQc.jpg",
    storage: 3.2,
  ),
  Popular(
    id: 3,
    title: "Dune: Part Two",
    description:
        "As the world fell, young Furiosa is snatched from the Green Place of Many Mothers and falls into the hands of a great Biker Horde led by the Warlord Dementus. Sweeping through the Wasteland they come across the Citadel presided over by The Immortan Joe. While the two Tyrants war for dominance, Furiosa must survive many trials as she puts together the means to find her way home.",
    time: "2h 47m",
    image:
        "https://media.themoviedb.org/t/p/w600_and_h900_bestv2/1pdfLvkbY9ohJlCjQH2CZjjYVvJ.jpg",
    storage: 4.1,
  ),
  Popular(
    id: 4,
    title: "Atlas (2024)",
    description:
        "A brilliant counterterrorism analyst with a deep distrust of AI discovers it might be her only hope when a mission to capture a renegade robot goes awry.",
    time: "2h 11M",
    image:
        "https://media.themoviedb.org/t/p/w600_and_h900_bestv2/bcM2Tl5HlsvPBnL8DKP9Ie6vU4r.jpg",
    storage: 3.4,
  ),
  Popular(
    id: 5,
    title: "The New Empire",
    description:
        "Following their explosive showdown, Godzilla and Kong must reunite against a colossal undiscovered threat hidden within our world, challenging their very existence – and our own.",
    time: "1h 55m",
    image:
        "https://media.themoviedb.org/t/p/w600_and_h900_bestv2/z1p34vh7dEOnLDmyCrlUVLuoDzd.jpg",
    storage: 3.4,
  ),
  Popular(
    id: 6,
    title: "Kingdom of the Planet of the Apes",
    description:
        "Several generations in the future following Caesar's reign, apes are now the dominant species and live harmoniously while humans have been reduced to living in the shadows. As a new tyrannical ape leader builds his empire, one young ape undertakes a harrowing journey that will cause him to question all that he has known about the past and to make choices that will define a future for apes and humans alike.",
    time: "2h 25m",
    image:
        "https://media.themoviedb.org/t/p/w600_and_h900_bestv2/gKkl37BQuKTanygYQG1pyYgLVgf.jpg",
    storage: 3.4,
  ),
  Popular(
    id: 7,
    title: "The Acolyte (2024)",
    description:
        "A brilliant counterterrorism analyst with a deep distrust of AI discovers it might be her only hope when a mission to capture a renegade robot goes awry.",
    time: "1h 55m",
    image:
        "https://media.themoviedb.org/t/p/w600_and_h900_bestv2/bcM2Tl5HlsvPBnL8DKP9Ie6vU4r.jpg",
    storage: 1.6,
  ),
];
