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
    title: "Track Your Transaction and get the product",
    image: "assets/shop2.png",
    desc: "Remember to keep track of your professional accomplishments.",
  ),
  OnboardingModel(
    title: "Select Any Product You Want",
    image: "assets/shop4.png",
    desc: "Oreder will deliver as soon as possible.",
  ),
  OnboardingModel(
    title: "Get started and Buy Now ",
    image: "assets/shop.png",
    desc:
    "Yalla Buy Now any product you want  ",
  ),
];