class EnvironmentalReport {
  final String id;
  final String carId;
  final double fuelConsumption; // استهلاك الوقود باللتر لكل 100 كم
  final double emissions; // الانبعاثات الكربونية بالكيلوجرام لكل 100 كم
  final DateTime date;

  EnvironmentalReport({
    required this.id,
    required this.carId,
    required this.fuelConsumption,
    required this.emissions,
    required this.date,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'carId': carId,
      'fuelConsumption': fuelConsumption,
      'emissions': emissions,
      'date': date.toIso8601String(),
    };
  }

  factory EnvironmentalReport.fromMap(Map<String, dynamic> map) {
    return EnvironmentalReport(
      id: map['id'],
      carId: map['carId'],
      fuelConsumption: map['fuelConsumption'].toDouble(),
      emissions: map['emissions'].toDouble(),
      date: DateTime.parse(map['date']),
    );
  }
}
