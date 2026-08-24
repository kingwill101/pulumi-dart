// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_zero_trust_device_default_profile_local_domain_fallback_get_zero_trust_device_default_profile_local_domain_fallback_args_doc}
/// Arguments for getZeroTrustDeviceDefaultProfileLocalDomainFallback.
/// {@endtemplate}
/// {@macro pulumi_index_get_zero_trust_device_default_profile_local_domain_fallback_get_zero_trust_device_default_profile_local_domain_fallback_args_doc}
class GetZeroTrustDeviceDefaultProfileLocalDomainFallbackArgs {
  final pulumi.Input<String?>? accountId;

  /// Creates a new [GetZeroTrustDeviceDefaultProfileLocalDomainFallbackArgs].
  /// [accountId] Optional.
  const GetZeroTrustDeviceDefaultProfileLocalDomainFallbackArgs({
    this.accountId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
    };
  }

  factory GetZeroTrustDeviceDefaultProfileLocalDomainFallbackArgs.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustDeviceDefaultProfileLocalDomainFallbackArgs(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
