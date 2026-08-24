// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'zero_trust_local_fallback_domain_domain.dart';

/// Input properties used for looking up and filtering ZeroTrustLocalFallbackDomain resources.
class ZeroTrustLocalFallbackDomainState {
  final pulumi.Input<String?>? accountId;
  final pulumi.Input<List<ZeroTrustLocalFallbackDomainDomain>?>? domains;
  final pulumi.Input<String?>? policyId;

  /// Creates a new [ZeroTrustLocalFallbackDomainState].
  /// [accountId] Optional.
  /// [domains] Optional.
  /// [policyId] Optional.
  const ZeroTrustLocalFallbackDomainState({
    this.accountId,
    this.domains,
    this.policyId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'domains': ?pulumi.Input.mapOptionalInputValue<List<ZeroTrustLocalFallbackDomainDomain>, List<Map<String, dynamic>>>(domains, (value) => pulumi.Input.encodeList<ZeroTrustLocalFallbackDomainDomain, Map<String, dynamic>>(value, (value) => value.toMap())),
      'policyId': ?policyId,
    };
  }

  factory ZeroTrustLocalFallbackDomainState.fromMap(Map<String, dynamic> map) {
    return ZeroTrustLocalFallbackDomainState(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      domains: (() { final guardedValue = map['domains']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ZeroTrustLocalFallbackDomainDomain>(guardedValue, (value) => ZeroTrustLocalFallbackDomainDomain.fromMap((value as Map).cast<String, dynamic>()))); })(),
      policyId: (() { final guardedValue = map['policyId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
