import 'package:flutter/material.dart';

class OnBoardingInstructions {
  final String image, title, subtitle;

  OnBoardingInstructions(this.image, this.title, this.subtitle);
}

class MyColors {
  static const grey = Color(0xfff3f3f3),
      orange = Color(0xffffb755),
      red = Color(0xffed5568),
      lightGreen = Color(0xffdbf3e8),
      darkGreen = Color(0xff4ac18e),
      blue = Color(0xff40beee);
}

class DoctorInfo {
  final String name,
      image,
      type,
      reviewCount,
      about,
      workingHours,
      patientsCount,
      experience,
      certifications;
  final double reviews;

  DoctorInfo({
    this.name,
    this.image,
    this.type,
    this.reviews,
    this.reviewCount,
    this.about,
    this.workingHours,
    this.patientsCount,
    this.experience,
    this.certifications,
  });
}

List<DoctorInfo> doctorInfo = [
  DoctorInfo(
    image:
        "https://image.freepik.com/vecteurs-libre/contexte-du-docteur_1270-84.jpg",
    about:
        "Incidunt placeat eos magni quas quam in dignissimos. Asperiores porro distinctio nemo excepturi labore?",
    certifications: "10",
    experience: "15",
    name: "Dr Cybdom Tech",
    patientsCount: "385",
    reviewCount: "1320",
    reviews: 4.3,
    type: "General Practitioner",
    workingHours: "Mon - Fri 09:00 - 17:00",
  ),
  DoctorInfo(
    image:
        "https://image.freepik.com/vecteurs-libre/contexte-du-docteur_1270-84.jpg",
    about:
        "Incidunt placeat eos magni quas quam in dignissimos. Asperiores porro distinctio nemo excepturi labore?",
    certifications: "10",
    experience: "15",
    name: "Dr Cybdom Tech",
    patientsCount: "385",
    reviewCount: "1320",
    reviews: 4.3,
    type: "General Practitioner",
    workingHours: "Mon - Fri 09:00 - 17:00",
  ),
  DoctorInfo(
    image:
        "https://image.freepik.com/vecteurs-libre/contexte-du-docteur_1270-84.jpg",
    about:
        "Incidunt placeat eos magni quas quam in dignissimos. Asperiores porro distinctio nemo excepturi labore?",
    certifications: "10",
    experience: "15",
    name: "Dr Cybdom Tech",
    patientsCount: "385",
    reviewCount: "1320",
    reviews: 4.3,
    type: "General Practitioner",
    workingHours: "Mon - Fri 09:00 - 17:00",
  ),
];

List<OnBoardingInstructions> onBoardingInstructions = [
  OnBoardingInstructions(
    "assets/images/onboarding2.png",
    "Call a doctor to visit you",
    "Incidunt placeat eos magni quas quam in dignissimos. Asperiores porro distinctio nemo excepturi labore?",
  ),
  OnBoardingInstructions(
    "assets/images/onboarding3.png",
    "Call a doctor to visit you",
    "Incidunt placeat eos magni quas quam in dignissimos. Asperiores porro distinctio nemo excepturi labore?",
  ),
];

List<Map<String, dynamic>> categories = [
  {
    'icon': 'assets/icons/doctor.png',
    'title': 'General Practitioner',
    'color': MyColors.red,
  },
  {
    'icon': 'assets/icons/tooth.png',
    'title': 'Dental Surgeon',
    'color': MyColors.orange,
  },
];

String avatar =
    "https://pbs.twimg.com/profile_images/1233356631188082689/qcmTohZh_400x400.jpg";
