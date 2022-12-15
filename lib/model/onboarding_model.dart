class OnboardingModel {
  final String title;
  final String image;
  final String desc;

  OnboardingModel({
    required this.title,
    required this.image,
    required this.desc,
  });
}

List<OnboardingModel> contents = [
  OnboardingModel(
    title: "Track Your work and get the result",
    image: "assets/shop2.png",
    desc: "Remember to keep track of your professional accomplishments.",
  ),
  OnboardingModel(
    title: "Stay organized with team",
    image: "assets/shop4.png",
    desc:
    "But understanding the contributions our colleagues make to our teams and companies.",
  ),
  OnboardingModel(
    title: "Get notified when work happens",
    image: "assets/shop.png",
    desc:
    "Take control of notifications, collaborate live or on your own time.",
  ),
];