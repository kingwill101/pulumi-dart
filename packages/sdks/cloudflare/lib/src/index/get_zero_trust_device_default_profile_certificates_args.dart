// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_zero_trust_device_default_profile_certificates_get_zero_trust_device_default_profile_certificates_args_doc}
/// Arguments for getZeroTrustDeviceDefaultProfileCertificates.
/// {@endtemplate}
/// {@macro pulumi_index_get_zero_trust_device_default_profile_certificates_get_zero_trust_device_default_profile_certificates_args_doc}
class GetZeroTrustDeviceDefaultProfileCertificatesArgs {
  final pulumi.Input<String?>? zoneId;

  /// Creates a new [GetZeroTrustDeviceDefaultProfileCertificatesArgs].
  /// [zoneId] Optional.
  const GetZeroTrustDeviceDefaultProfileCertificatesArgs({
    this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'zoneId': ?zoneId,
    };
  }

  factory GetZeroTrustDeviceDefaultProfileCertificatesArgs.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustDeviceDefaultProfileCertificatesArgs(
      zoneId: (() { final guardedValue = map['zoneId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
