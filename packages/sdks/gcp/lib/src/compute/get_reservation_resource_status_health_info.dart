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
      degradedBlockCount: pulumi.Input.fromValue(map['degradedBlockCount'] as int),
      healthStatus: pulumi.Input.fromValue(map['healthStatus'] as String),
      healthyBlockCount: pulumi.Input.fromValue(map['healthyBlockCount'] as int),
    );
  }
}

