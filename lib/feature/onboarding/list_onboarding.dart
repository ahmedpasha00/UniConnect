import 'package:flutter/widgets.dart';

class ListOnboarding {
  final String image;
  final String title;
  final String description;

  ListOnboarding({
    required this.image,
    required this.title,
    required this.description,
  });
}

// دي القائمة اللي هنستدعيها في الصفحة
List<ListOnboarding> onboarding = [
  ListOnboarding(
    image: "assets/images/cap2.png",
    title: "Welcome to UniConnect",
    description:
        "منصتك الجامعية الذكية للتواصل\nالتعلم وإدارة حياتك الأكاديمية بسهولة",
  ),
  ListOnboarding(
    image: "assets/images/cap2.png",
    title: "Stay Connected",
    description:
        "تواصل مع زملاءك ودكاترتك\n شارك الملفات والملاحظات، وابقَ على اطلاع بآخر الأخبار الجامعية",
  ),
  ListOnboarding(
    image: "assets/images/cap2.png",
    title: "Smart & Simple",
    description:
        "واجهة سهلة الاستخدام، أدوات قوي\n وتجربة سريعة تساعدك تركز على اللي يهمك فعلاً",
  ),
];
