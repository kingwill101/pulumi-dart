// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getOriginCloudRegion.
class GetOriginCloudRegionResult {
  /// The ID of this resource.
  final String? id;
  /// Time this mapping was last modified.
  final String? modifiedOn;
  final String? originIp;
  /// Cloud vendor region identifier.
  final String? region;
  /// Cloud vendor hosting the origin.
  /// Available values: "aws", "azure", "gcp", "oci".
  final String? vendor;
  /// Identifier.
  final String? zoneId;

  /// Creates a new [GetOriginCloudRegionResult].
  /// [id] The ID of this resource.
  /// [modifiedOn] Time this mapping was last modified.
  /// [originIp] Optional.
  /// [region] Cloud vendor region identifier.
  /// [vendor] Cloud vendor hosting the origin.
  /// [zoneId] Identifier.
  const GetOriginCloudRegionResult({
    this.id,
    this.modifiedOn,
    this.originIp,
    this.region,
    this.vendor,
    this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
      'modifiedOn': ?modifiedOn,
      'originIp': ?originIp,
      'region': ?region,
      'vendor': ?vendor,
      'zoneId': ?zoneId,
    };
  }

  factory GetOriginCloudRegionResult.fromMap(Map<String, dynamic> map) {
    return GetOriginCloudRegionResult(
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      modifiedOn: (() { final guardedValue = map['modifiedOn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      originIp: (() { final guardedValue = map['originIp']; if (guardedValue == null) return null; return guardedValue as String; })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
      vendor: (() { final guardedValue = map['vendor']; if (guardedValue == null) return null; return guardedValue as String; })(),
      zoneId: (() { final guardedValue = map['zoneId']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
