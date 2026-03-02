// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class JobStatistics2ReservationUsageItemResponse {
  /// [Output only] Reservation name or "unreserved" for on-demand resources usage.
  final pulumi.Input<String> name;
  /// [Output only] Slot-milliseconds the job spent in the given reservation.
  final pulumi.Input<String> slotMs;

  /// Creates a new [JobStatistics2ReservationUsageItemResponse].
  /// [name] [Output only] Reservation name or "unreserved" for on-demand resources usage.
  /// [slotMs] [Output only] Slot-milliseconds the job spent in the given reservation.
  JobStatistics2ReservationUsageItemResponse({
    required this.name,
    required this.slotMs,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'slotMs': slotMs,
    };
  }

  factory JobStatistics2ReservationUsageItemResponse.fromMap(Map<String, dynamic> map) {
    return JobStatistics2ReservationUsageItemResponse(
      name: (map['name'] as String).input(),
      slotMs: (map['slotMs'] as String).input(),
    );
  }
}

