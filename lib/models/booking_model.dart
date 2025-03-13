class Booking {
  final String id;
  final String userId;
  final String serviceName;
  final DateTime bookingDate;
  final String status;

  Booking({
    required this.id,
    required this.userId,
    required this.serviceName,
    required this.bookingDate,
    required this.status,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'userId': userId,
      'serviceName': serviceName,
      'bookingDate': bookingDate.toIso8601String(),
      'status': status,
    };
  }

  factory Booking.fromMap(Map<String, dynamic> map) {
    return Booking(
      id: map['id'],
      userId: map['userId'],
      serviceName: map['serviceName'],
      bookingDate: DateTime.parse(map['bookingDate']),
      status: map['status'],
    );
  }
}
