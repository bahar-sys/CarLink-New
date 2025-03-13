import 'package:cloud_firestore/cloud_firestore.dart';

class RecommendationService {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  Future<List<Map<String, dynamic>>> getTopRatedServices() async {
    final snapshot = await _firestore.collection('reviews').get();
    final reviews = snapshot.docs.map((doc) => doc.data()).toList();

    // حساب متوسط التقييم لكل خدمة
    Map<String, double> serviceRatings = {};
    Map<String, int> serviceCounts = {};

    for (var review in reviews) {
      final serviceId = review['serviceId'];
      if (!serviceRatings.containsKey(serviceId)) {
        serviceRatings[serviceId] = 0.0;
        serviceCounts[serviceId] = 0;
      }
      serviceRatings[serviceId] = serviceRatings[serviceId]! + review['rating'];
      serviceCounts[serviceId] = serviceCounts[serviceId]! + 1;
    }

    // حساب المتوسط لكل خدمة
    Map<String, double> averageRatings = {};
    serviceRatings.forEach((serviceId, totalRating) {
      averageRatings[serviceId] = totalRating / serviceCounts[serviceId]!;
    });

    // فرز الخدمات حسب التقييم المتوسط
    List<MapEntry<String, double>> sortedServices =
        averageRatings.entries.toList()
          ..sort((a, b) => b.value.compareTo(a.value));

    // إرجاع الخدمات الأعلى تقييمًا
    return sortedServices
        .take(5)
        .map((entry) => {'serviceId': entry.key, 'rating': entry.value})
        .toList();
  }
}
