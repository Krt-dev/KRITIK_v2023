import "package:kritik_version_2023/components/classEstablishment.dart";
import "package:kritik_version_2023/components/services.dart";

ReviewService reviewService = ReviewService();
adding() {
  reviewService.addItem(Reviews("Rhunnan", "Chowi have the best food in town",
      20, "assets/images/chowi.png", "Chowi"));
}

//for initial users
List<User> users = [];
//for initial reviews
List<Reviews> reviews = [];
//OOP list style
List<Establishment> establishmentData = [
  Establishment(
      "assets/images/chowi.png",
      "Chowi",
      "Tabunok, Cebu",
      "Beach",
      "Welcome to Uncle Brew, where the art of coffee meets an unforgettable vibe, creating a haven for coffee enthusiasts and those seeking a cozy escape. At Uncle Brew, we redefine the coffee experience with a blend of exceptional brews and an ambiance that feels like a warm embrace",
      "Basak San Nicolas",
      "Uncle Brew is a hidden gem that combines exceptional coffee with an inviting ambiance, creating a delightful haven for coffee lovers and social butterflies alike. The rich and diverse menu offers a symphony of flavors, from robust espresso blends to meticulously crafted pour-over selections. Each sip is a journey through the nuances of high-quality beans, expertly brewed by skilled baristas. Users happily commended the ambiance at Uncle Brew, it is a harmonious blend of rustic charm and modern comfort. ",
      [
        Reviews("Rhunnan", "Chowi have the best food in town", 20,
            "assets/images/rhuns.jpg", "Chowi"),
        Reviews("Hugh", "Chowi have the best food in town", 20,
            "assets/images/hughs.jpg", "Chowi"),
        Reviews("Kurt", "Chowi have the best food in town", 20,
            "assets/images/kurts.jpg", "Chowi"),
      ]),
  Establishment(
      "assets/images/profile.png",
      "Jollibee",
      "Tabunok, Cebu",
      "Restaurant",
      "Welcome to Uncle Brew, where the art of coffee meets an unforgettable vibe, creating a haven for coffee enthusiasts and those seeking a cozy escape. At Uncle Brew, we redefine the coffee experience with a blend of exceptional brews and an ambiance that feels like a warm embrace",
      "Basak San Nicolas",
      "Uncle Brew is a hidden gem that combines exceptional coffee with an inviting ambiance, creating a delightful haven for coffee lovers and social butterflies alike. The rich and diverse menu offers a symphony of flavors, from robust espresso blends to meticulously crafted pour-over selections. Each sip is a journey through the nuances of high-quality beans, expertly brewed by skilled baristas. Users happily commended the ambiance at Uncle Brew, it is a harmonious blend of rustic charm and modern comfort. ",
      [
        Reviews("Rhunnan", "Chowi have the best food in town", 5,
            "assets/images/rhuns.jpg", "Jollibee"),
        Reviews("Hugh", "Chowi have the best food in town", 5,
            "assets/images/hughs.jpg", "Jollibee"),
        Reviews("Kurt", "Chowi have the best food in town", 5,
            "assets/images/kurts.jpg", "Jollibee")
      ]),
  Establishment(
      "assets/images/shomay.png",
      "BoraBora",
      "Tabunok, Cebu",
      "Beach",
      "Welcome to Uncle Brew, where the art of coffee meets an unforgettable vibe, creating a haven for coffee enthusiasts and those seeking a cozy escape. At Uncle Brew, we redefine the coffee experience with a blend of exceptional brews and an ambiance that feels like a warm embrace",
      "Basak San Nicolas",
      "Uncle Brew is a hidden gem that combines exceptional coffee with an inviting ambiance, creating a delightful haven for coffee lovers and social butterflies alike. The rich and diverse menu offers a symphony of flavors, from robust espresso blends to meticulously crafted pour-over selections. Each sip is a journey through the nuances of high-quality beans, expertly brewed by skilled baristas. Users happily commended the ambiance at Uncle Brew, it is a harmonious blend of rustic charm and modern comfort. ",
      [
        Reviews("Rhunnan", "Chowi have the best food in town", 5,
            "assets/images/rhuns.jpg", "BoraBora"),
        Reviews("Hugh", "Chowi have the best food in town", 5,
            "assets/images/hughs.jpg", "BoraBora"),
        Reviews("Kurt", "Chowi have the best food in town", 5,
            "assets/images/kurts.jpg", "BoraBora")
      ]),
];
