// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_zero_trust_device_default_profile_get_zero_trust_device_default_profile_args_doc}
/// Arguments for getZeroTrustDeviceDefaultProfile.
/// {@endtemplate}
/// {@macro pulumi_index_get_zero_trust_device_default_profile_get_zero_trust_device_default_profile_args_doc}
class GetZeroTrustDeviceDefaultProfileArgs {
  final pulumi.Input<String?>? accountId;

  /// Creates a new [GetZeroTrustDeviceDefaultProfileArgs].
  /// [accountId] Optional.
  const GetZeroTrustDeviceDefaultProfileArgs({
    this.accountId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
    };
  }

  factory GetZeroTrustDeviceDefaultProfileArgs.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustDeviceDefaultProfileArgs(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
