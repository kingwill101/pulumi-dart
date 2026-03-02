// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetReservationResourceStatusHealthInfo {
  /// The number of reservation blocks that are degraded.
  final pulumi.Input<int> degradedBlockCount;
  /// The health status of the reservation.
  final pulumi.Input<String> healthStatus;
  /// The number of reservation blocks that are healthy.
  final pulumi.Input<int> healthyBlockCount;

  /// Creates a new [GetReservationResourceStatusHealthInfo].
  /// [degradedBlockCount] The number of reservation blocks that are degraded.
  /// [healthStatus] The health status of the reservation.
  /// [healthyBlockCount] The number of reservation blocks that are healthy.
  GetReservationResourceStatusHealthInfo({
    required this.degradedBlockCount,
    required this.healthStatus,
    required this.healthyBlockCount,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'degradedBlockCount': degradedBlockCount,
      'healthStatus': healthStatus,
      'healthyBlockCount': healthyBlockCount,
    };
  }

  factory GetReservationResourceStatusHealthInfo.fromMap(Map<String, dynamic> map) {
    return GetReservationResourceStatusHealthInfo(
      degradedBlockCount: (map['degradedBlockCount'] as int).input(),
      healthStatus: (map['healthStatus'] as String).input(),
      healthyBlockCount: (map['healthyBlockCount'] as int).input(),
    );
  }
}

