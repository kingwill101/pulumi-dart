// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'zero_trust_device_custom_profile_local_domain_fallback_domain.dart';

/// {@template pulumi_index_zero_trust_device_custom_profile_local_domain_fallback_zero_trust_device_custom_profile_local_domain_fallback_args_doc}
/// The set of arguments for ZeroTrustDeviceCustomProfileLocalDomainFallback.
/// {@endtemplate}
/// {@macro pulumi_index_zero_trust_device_custom_profile_local_domain_fallback_zero_trust_device_custom_profile_local_domain_fallback_args_doc}
class ZeroTrustDeviceCustomProfileLocalDomainFallbackArgs {
  final pulumi.Input<String> accountId;
  final pulumi.Input<List<ZeroTrustDeviceCustomProfileLocalDomainFallbackDomain>> domains;
  final pulumi.Input<String> policyId;

  /// Creates a new [ZeroTrustDeviceCustomProfileLocalDomainFallbackArgs].
  /// [accountId] Required.
  /// [domains] Required.
  /// [policyId] Required.
  const ZeroTrustDeviceCustomProfileLocalDomainFallbackArgs({
    required this.accountId,
    required this.domains,
    required this.policyId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': accountId,
      'domains': pulumi.Input.mapInputValue<List<ZeroTrustDeviceCustomProfileLocalDomainFallbackDomain>, List<Map<String, dynamic>>>(domains, (value) => pulumi.Input.encodeList<ZeroTrustDeviceCustomProfileLocalDomainFallbackDomain, Map<String, dynamic>>(value, (value) => value.toMap())),
      'policyId': policyId,
    };
  }

  factory ZeroTrustDeviceCustomProfileLocalDomainFallbackArgs.fromMap(Map<String, dynamic> map) {
    return ZeroTrustDeviceCustomProfileLocalDomainFallbackArgs(
      accountId: pulumi.Input.fromValue(map['accountId'] as String),
      domains: pulumi.Input.fromValue(pulumi.Input.decodeList<ZeroTrustDeviceCustomProfileLocalDomainFallbackDomain>(map['domains']!, (value) => ZeroTrustDeviceCustomProfileLocalDomainFallbackDomain.fromMap((value as Map).cast<String, dynamic>()))),
      policyId: pulumi.Input.fromValue(map['policyId'] as String),
    );
  }
}
