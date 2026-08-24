// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'zero_trust_device_custom_profile_local_domain_fallback_domain.dart';

/// Input properties used for looking up and filtering ZeroTrustDeviceCustomProfileLocalDomainFallback resources.
class ZeroTrustDeviceCustomProfileLocalDomainFallbackState {
  final pulumi.Input<String?>? accountId;
  final pulumi.Input<List<ZeroTrustDeviceCustomProfileLocalDomainFallbackDomain>?>? domains;
  final pulumi.Input<String?>? policyId;

  /// Creates a new [ZeroTrustDeviceCustomProfileLocalDomainFallbackState].
  /// [accountId] Optional.
  /// [domains] Optional.
  /// [policyId] Optional.
  const ZeroTrustDeviceCustomProfileLocalDomainFallbackState({
    this.accountId,
    this.domains,
    this.policyId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'domains': ?pulumi.Input.mapOptionalInputValue<List<ZeroTrustDeviceCustomProfileLocalDomainFallbackDomain>, List<Map<String, dynamic>>>(domains, (value) => pulumi.Input.encodeList<ZeroTrustDeviceCustomProfileLocalDomainFallbackDomain, Map<String, dynamic>>(value, (value) => value.toMap())),
      'policyId': ?policyId,
    };
  }

  factory ZeroTrustDeviceCustomProfileLocalDomainFallbackState.fromMap(Map<String, dynamic> map) {
    return ZeroTrustDeviceCustomProfileLocalDomainFallbackState(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      domains: (() { final guardedValue = map['domains']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ZeroTrustDeviceCustomProfileLocalDomainFallbackDomain>(guardedValue, (value) => ZeroTrustDeviceCustomProfileLocalDomainFallbackDomain.fromMap((value as Map).cast<String, dynamic>()))); })(),
      policyId: (() { final guardedValue = map['policyId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
