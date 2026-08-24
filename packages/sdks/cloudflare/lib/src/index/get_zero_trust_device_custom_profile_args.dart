// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_zero_trust_device_custom_profile_get_zero_trust_device_custom_profile_args_doc}
/// Arguments for getZeroTrustDeviceCustomProfile.
/// {@endtemplate}
/// {@macro pulumi_index_get_zero_trust_device_custom_profile_get_zero_trust_device_custom_profile_args_doc}
class GetZeroTrustDeviceCustomProfileArgs {
  final pulumi.Input<String?>? accountId;
  final pulumi.Input<String> policyId;

  /// Creates a new [GetZeroTrustDeviceCustomProfileArgs].
  /// [accountId] Optional.
  /// [policyId] Required.
  const GetZeroTrustDeviceCustomProfileArgs({
    this.accountId,
    required this.policyId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'policyId': policyId,
    };
  }

  factory GetZeroTrustDeviceCustomProfileArgs.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustDeviceCustomProfileArgs(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      policyId: pulumi.Input.fromValue(map['policyId'] as String),
    );
  }
}
