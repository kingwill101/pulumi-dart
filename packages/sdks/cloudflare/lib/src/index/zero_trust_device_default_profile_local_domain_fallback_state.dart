// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'zero_trust_device_default_profile_local_domain_fallback_domain.dart';

/// Input properties used for looking up and filtering ZeroTrustDeviceDefaultProfileLocalDomainFallback resources.
class ZeroTrustDeviceDefaultProfileLocalDomainFallbackState {
  final pulumi.Input<String?>? accountId;
  final pulumi.Input<List<ZeroTrustDeviceDefaultProfileLocalDomainFallbackDomain>?>? domains;

  /// Creates a new [ZeroTrustDeviceDefaultProfileLocalDomainFallbackState].
  /// [accountId] Optional.
  /// [domains] Optional.
  const ZeroTrustDeviceDefaultProfileLocalDomainFallbackState({
    this.accountId,
    this.domains,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'domains': ?pulumi.Input.mapOptionalInputValue<List<ZeroTrustDeviceDefaultProfileLocalDomainFallbackDomain>, List<Map<String, dynamic>>>(domains, (value) => pulumi.Input.encodeList<ZeroTrustDeviceDefaultProfileLocalDomainFallbackDomain, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory ZeroTrustDeviceDefaultProfileLocalDomainFallbackState.fromMap(Map<String, dynamic> map) {
    return ZeroTrustDeviceDefaultProfileLocalDomainFallbackState(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      domains: (() { final guardedValue = map['domains']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ZeroTrustDeviceDefaultProfileLocalDomainFallbackDomain>(guardedValue, (value) => ZeroTrustDeviceDefaultProfileLocalDomainFallbackDomain.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
