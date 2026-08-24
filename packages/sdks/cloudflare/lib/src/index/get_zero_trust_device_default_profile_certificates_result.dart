// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getZeroTrustDeviceDefaultProfileCertificates.
class GetZeroTrustDeviceDefaultProfileCertificatesResult {
  /// The current status of the device policy certificate provisioning feature for WARP clients.
  final bool? enabled;
  final String? zoneId;

  /// Creates a new [GetZeroTrustDeviceDefaultProfileCertificatesResult].
  /// [enabled] The current status of the device policy certificate provisioning feature for WARP clients.
  /// [zoneId] Optional.
  const GetZeroTrustDeviceDefaultProfileCertificatesResult({
    this.enabled,
    this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': ?enabled,
      'zoneId': ?zoneId,
    };
  }

  factory GetZeroTrustDeviceDefaultProfileCertificatesResult.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustDeviceDefaultProfileCertificatesResult(
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      zoneId: (() { final guardedValue = map['zoneId']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
