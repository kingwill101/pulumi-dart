// ignore_for_file: unused_element, unnecessary_cast


/// The SAP Availability Zone Pair.
class SAPAvailabilityZonePairResponse {
  /// The zone A.
  final double? zoneA;
  /// The zone B.
  final double? zoneB;

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
      zoneA: map['zoneA'] == null ? null : map['zoneA'] as double,
      zoneB: map['zoneB'] == null ? null : map['zoneB'] as double,
    );
  }
}

