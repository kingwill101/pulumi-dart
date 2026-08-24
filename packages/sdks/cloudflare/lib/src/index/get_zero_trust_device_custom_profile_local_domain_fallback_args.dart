// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_zero_trust_device_custom_profile_local_domain_fallback_get_zero_trust_device_custom_profile_local_domain_fallback_args_doc}
/// Arguments for getZeroTrustDeviceCustomProfileLocalDomainFallback.
/// {@endtemplate}
/// {@macro pulumi_index_get_zero_trust_device_custom_profile_local_domain_fallback_get_zero_trust_device_custom_profile_local_domain_fallback_args_doc}
class GetZeroTrustDeviceCustomProfileLocalDomainFallbackArgs {
  final pulumi.Input<String?>? accountId;
  final pulumi.Input<String> policyId;

  /// Creates a new [GetZeroTrustDeviceCustomProfileLocalDomainFallbackArgs].
  /// [accountId] Optional.
  /// [policyId] Required.
  const GetZeroTrustDeviceCustomProfileLocalDomainFallbackArgs({
    this.accountId,
    required this.policyId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'policyId': policyId,
    };
  }

  factory GetZeroTrustDeviceCustomProfileLocalDomainFallbackArgs.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustDeviceCustomProfileLocalDomainFallbackArgs(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      policyId: pulumi.Input.fromValue(map['policyId'] as String),
    );
  }
}
