// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_zero_trust_device_default_profile_certificates_zero_trust_device_default_profile_certificates_args_doc}
/// The set of arguments for ZeroTrustDeviceDefaultProfileCertificates.
/// {@endtemplate}
/// {@macro pulumi_index_zero_trust_device_default_profile_certificates_zero_trust_device_default_profile_certificates_args_doc}
class ZeroTrustDeviceDefaultProfileCertificatesArgs {
  /// The current status of the device policy certificate provisioning feature for WARP clients.
  final pulumi.Input<bool> enabled;
  final pulumi.Input<String> zoneId;

  /// Creates a new [ZeroTrustDeviceDefaultProfileCertificatesArgs].
  /// [enabled] The current status of the device policy certificate provisioning feature for WARP clients.
  /// [zoneId] Required.
  const ZeroTrustDeviceDefaultProfileCertificatesArgs({
    required this.enabled,
    required this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': enabled,
      'zoneId': zoneId,
    };
  }

  factory ZeroTrustDeviceDefaultProfileCertificatesArgs.fromMap(Map<String, dynamic> map) {
    return ZeroTrustDeviceDefaultProfileCertificatesArgs(
      enabled: pulumi.Input.fromValue(map['enabled'] as bool),
      zoneId: pulumi.Input.fromValue(map['zoneId'] as String),
    );
  }
}
