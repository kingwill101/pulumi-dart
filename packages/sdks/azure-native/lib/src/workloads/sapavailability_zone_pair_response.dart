// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The SAP Availability Zone Pair.
class SAPAvailabilityZonePairResponse {
  /// The zone A.
  final pulumi.Input<double>? zoneA;
  /// The zone B.
  final pulumi.Input<double>? zoneB;

  /// Creates a new [SAPAvailabilityZonePairResponse].
  /// [zoneA] The zone A.
  /// [zoneB] The zone B.
  SAPAvailabilityZonePairResponse({
    this.zoneA,
    this.zoneB,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'zoneA': ?zoneA,
      'zoneB': ?zoneB,
    };
  }

  factory SAPAvailabilityZonePairResponse.fromMap(Map<String, dynamic> map) {
    return SAPAvailabilityZonePairResponse(
      zoneA: map['zoneA'] == null ? null : (map['zoneA'] as double).input(),
      zoneB: map['zoneB'] == null ? null : (map['zoneB'] as double).input(),
    );
  }
}

