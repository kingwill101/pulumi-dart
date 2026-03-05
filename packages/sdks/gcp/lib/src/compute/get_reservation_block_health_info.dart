// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetReservationBlockHealthInfo {
  /// The number of sub-blocks that are degraded.
  final pulumi.Input<int> degradedSubBlockCount;
  /// The health status of the reservation block.
  final pulumi.Input<String> healthStatus;
  /// The number of sub-blocks that are healthy.
  final pulumi.Input<int> healthySubBlockCount;

  /// Creates a new [GetReservationBlockHealthInfo].
  /// [degradedSubBlockCount] The number of sub-blocks that are degraded.
  /// [healthStatus] The health status of the reservation block.
  /// [healthySubBlockCount] The number of sub-blocks that are healthy.
  GetReservationBlockHealthInfo({
    required this.degradedSubBlockCount,
    required this.healthStatus,
    required this.healthySubBlockCount,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'degradedSubBlockCount': degradedSubBlockCount,
      'healthStatus': healthStatus,
      'healthySubBlockCount': healthySubBlockCount,
    };
  }

  factory GetReservationBlockHealthInfo.fromMap(Map<String, dynamic> map) {
    return GetReservationBlockHealthInfo(
      degradedSubBlockCount: pulumi.Input.fromValue(map['degradedSubBlockCount'] as int),
      healthStatus: pulumi.Input.fromValue(map['healthStatus'] as String),
      healthySubBlockCount: pulumi.Input.fromValue(map['healthySubBlockCount'] as int),
    );
  }
}

