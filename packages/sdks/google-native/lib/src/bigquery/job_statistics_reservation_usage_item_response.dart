// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class JobStatisticsReservationUsageItemResponse {
  /// Reservation name or "unreserved" for on-demand resources usage.
  final pulumi.Input<String> name;
  /// Slot-milliseconds the job spent in the given reservation.
  final pulumi.Input<String> slotMs;

  /// Creates a new [JobStatisticsReservationUsageItemResponse].
  /// [name] Reservation name or "unreserved" for on-demand resources usage.
  /// [slotMs] Slot-milliseconds the job spent in the given reservation.
  JobStatisticsReservationUsageItemResponse({
    required this.name,
    required this.slotMs,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'slotMs': slotMs,
    };
  }

  factory JobStatisticsReservationUsageItemResponse.fromMap(Map<String, dynamic> map) {
    return JobStatisticsReservationUsageItemResponse(
      name: pulumi.Input.fromValue(map['name'] as String),
      slotMs: pulumi.Input.fromValue(map['slotMs'] as String),
    );
  }
}

