// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'zero_trust_local_fallback_domain_domain.dart';

/// {@template pulumi_index_zero_trust_local_fallback_domain_zero_trust_local_fallback_domain_args_doc}
/// The set of arguments for ZeroTrustLocalFallbackDomain.
/// {@endtemplate}
/// {@macro pulumi_index_zero_trust_local_fallback_domain_zero_trust_local_fallback_domain_args_doc}
class ZeroTrustLocalFallbackDomainArgs {
  final pulumi.Input<String> accountId;
  final pulumi.Input<List<ZeroTrustLocalFallbackDomainDomain>> domains;
  final pulumi.Input<String> policyId;

  /// Creates a new [ZeroTrustLocalFallbackDomainArgs].
  /// [accountId] Required.
  /// [domains] Required.
  /// [policyId] Required.
  const ZeroTrustLocalFallbackDomainArgs({
    required this.accountId,
    required this.domains,
    required this.policyId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': accountId,
      'domains': pulumi.Input.mapInputValue<List<ZeroTrustLocalFallbackDomainDomain>, List<Map<String, dynamic>>>(domains, (value) => pulumi.Input.encodeList<ZeroTrustLocalFallbackDomainDomain, Map<String, dynamic>>(value, (value) => value.toMap())),
      'policyId': policyId,
    };
  }

  factory ZeroTrustLocalFallbackDomainArgs.fromMap(Map<String, dynamic> map) {
    return ZeroTrustLocalFallbackDomainArgs(
      accountId: pulumi.Input.fromValue(map['accountId'] as String),
      domains: pulumi.Input.fromValue(pulumi.Input.decodeList<ZeroTrustLocalFallbackDomainDomain>(map['domains']!, (value) => ZeroTrustLocalFallbackDomainDomain.fromMap((value as Map).cast<String, dynamic>()))),
      policyId: pulumi.Input.fromValue(map['policyId'] as String),
    );
  }
}
