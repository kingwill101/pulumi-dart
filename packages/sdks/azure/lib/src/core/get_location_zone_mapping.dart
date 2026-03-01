// ignore_for_file: unused_element, unnecessary_cast


class GetLocationZoneMapping {
  /// The logical zone id for the availability zone
  final String logicalZone;
  /// The fully qualified physical zone id of availability zone to which logical zone id is mapped to
  final String physicalZone;

  /// Creates a new [GetLocationZoneMapping].
  /// [logicalZone] The logical zone id for the availability zone
  /// [physicalZone] The fully qualified physical zone id of availability zone to which logical zone id is mapped to
  GetLocationZoneMapping({
    required this.logicalZone,
    required this.physicalZone,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'logicalZone': logicalZone,
      'physicalZone': physicalZone,
    };
  }

  factory GetLocationZoneMapping.fromMap(Map<String, dynamic> map) {
    return GetLocationZoneMapping(
      logicalZone: map['logicalZone'] as String,
      physicalZone: map['physicalZone'] as String,
    );
  }
}

