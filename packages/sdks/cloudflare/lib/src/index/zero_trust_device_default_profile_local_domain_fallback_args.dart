// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'zero_trust_device_default_profile_local_domain_fallback_domain.dart';

/// {@template pulumi_index_zero_trust_device_default_profile_local_domain_fallback_zero_trust_device_default_profile_local_domain_fallback_args_doc}
/// The set of arguments for ZeroTrustDeviceDefaultProfileLocalDomainFallback.
/// {@endtemplate}
/// {@macro pulumi_index_zero_trust_device_default_profile_local_domain_fallback_zero_trust_device_default_profile_local_domain_fallback_args_doc}
class ZeroTrustDeviceDefaultProfileLocalDomainFallbackArgs {
  final pulumi.Input<String> accountId;
  final pulumi.Input<List<ZeroTrustDeviceDefaultProfileLocalDomainFallbackDomain>> domains;

  /// Creates a new [ZeroTrustDeviceDefaultProfileLocalDomainFallbackArgs].
  /// [accountId] Required.
  /// [domains] Required.
  const ZeroTrustDeviceDefaultProfileLocalDomainFallbackArgs({
    required this.accountId,
    required this.domains,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': accountId,
      'domains': pulumi.Input.mapInputValue<List<ZeroTrustDeviceDefaultProfileLocalDomainFallbackDomain>, List<Map<String, dynamic>>>(domains, (value) => pulumi.Input.encodeList<ZeroTrustDeviceDefaultProfileLocalDomainFallbackDomain, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory ZeroTrustDeviceDefaultProfileLocalDomainFallbackArgs.fromMap(Map<String, dynamic> map) {
    return ZeroTrustDeviceDefaultProfileLocalDomainFallbackArgs(
      accountId: pulumi.Input.fromValue(map['accountId'] as String),
      domains: pulumi.Input.fromValue(pulumi.Input.decodeList<ZeroTrustDeviceDefaultProfileLocalDomainFallbackDomain>(map['domains']!, (value) => ZeroTrustDeviceDefaultProfileLocalDomainFallbackDomain.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}
