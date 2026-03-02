// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetReservationSubBlockHealthInfo {
  /// The number of degraded hosts in the reservation sub-block.
  final pulumi.Input<int> degradedHostCount;
  /// The number of degraded infrastructure (e.g. NVLink domain) in the reservation sub-block.
  final pulumi.Input<int> degradedInfraCount;
  /// The health status of the reservation sub-block.
  final pulumi.Input<String> healthStatus;
  /// The number of healthy hosts in the reservation sub-block.
  final pulumi.Input<int> healthyHostCount;
  /// The number of healthy infrastructure (e.g. NVLink domain) in the reservation sub-block.
  final pulumi.Input<int> healthyInfraCount;

  /// Creates a new [GetReservationSubBlockHealthInfo].
  /// [degradedHostCount] The number of degraded hosts in the reservation sub-block.
  /// [degradedInfraCount] The number of degraded infrastructure (e.g. NVLink domain) in the reservation sub-block.
  /// [healthStatus] The health status of the reservation sub-block.
  /// [healthyHostCount] The number of healthy hosts in the reservation sub-block.
  /// [healthyInfraCount] The number of healthy infrastructure (e.g. NVLink domain) in the reservation sub-block.
  GetReservationSubBlockHealthInfo({
    required this.degradedHostCount,
    required this.degradedInfraCount,
    required this.healthStatus,
    required this.healthyHostCount,
    required this.healthyInfraCount,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'degradedHostCount': degradedHostCount,
      'degradedInfraCount': degradedInfraCount,
      'healthStatus': healthStatus,
      'healthyHostCount': healthyHostCount,
      'healthyInfraCount': healthyInfraCount,
    };
  }

  factory GetReservationSubBlockHealthInfo.fromMap(Map<String, dynamic> map) {
    return GetReservationSubBlockHealthInfo(
      degradedHostCount: (map['degradedHostCount'] as int).input(),
      degradedInfraCount: (map['degradedInfraCount'] as int).input(),
      healthStatus: (map['healthStatus'] as String).input(),
      healthyHostCount: (map['healthyHostCount'] as int).input(),
      healthyInfraCount: (map['healthyInfraCount'] as int).input(),
    );
  }
}

