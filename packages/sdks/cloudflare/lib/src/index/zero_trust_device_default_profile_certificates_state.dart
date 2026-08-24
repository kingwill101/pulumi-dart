// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering ZeroTrustDeviceDefaultProfileCertificates resources.
class ZeroTrustDeviceDefaultProfileCertificatesState {
  /// The current status of the device policy certificate provisioning feature for WARP clients.
  final pulumi.Input<bool?>? enabled;
  final pulumi.Input<String?>? zoneId;

  /// Creates a new [ZeroTrustDeviceDefaultProfileCertificatesState].
  /// [enabled] The current status of the device policy certificate provisioning feature for WARP clients.
  /// [zoneId] Optional.
  const ZeroTrustDeviceDefaultProfileCertificatesState({
    this.enabled,
    this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': ?enabled,
      'zoneId': ?zoneId,
    };
  }

  factory ZeroTrustDeviceDefaultProfileCertificatesState.fromMap(Map<String, dynamic> map) {
    return ZeroTrustDeviceDefaultProfileCertificatesState(
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      zoneId: (() { final guardedValue = map['zoneId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
