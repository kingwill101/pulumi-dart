// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'dns_key_spec_algorithm_dns_v1beta2.dart';
import 'dns_key_spec_key_type_dns_v1beta2.dart';

/// Parameters for DnsKey key generation. Used for generating initial keys for a new ManagedZone and as default when adding a new DnsKey.
class DnsKeySpecDnsV1beta2 {
  /// String mnemonic specifying the DNSSEC algorithm of this key.
  final pulumi.Input<DnsKeySpecAlgorithmDnsV1beta2>? algorithm;

  /// Length of the keys in bits.
  final pulumi.Input<int>? keyLength;

  /// Specifies whether this is a key signing key (KSK) or a zone signing key (ZSK). Key signing keys have the Secure Entry Point flag set and, when active, are only used to sign resource record sets of type DNSKEY. Zone signing keys do not have the Secure Entry Point flag set and are used to sign all other types of resource record sets.
  final pulumi.Input<DnsKeySpecKeyTypeDnsV1beta2>? keyType;
  final pulumi.Input<String>? kind;

  /// Creates a new [DnsKeySpecDnsV1beta2].
  /// [algorithm] String mnemonic specifying the DNSSEC algorithm of this key.
  /// [keyLength] Length of the keys in bits.
  /// [keyType] Specifies whether this is a key signing key (KSK) or a zone signing key (ZSK). Key signing keys have the Secure Entry Point flag set and, when active, are only used to sign resource record sets of type DNSKEY. Zone signing keys do not have the Secure Entry Point flag set and are used to sign all other types of resource record sets.
  /// [kind] Optional.
  DnsKeySpecDnsV1beta2({
    this.algorithm,
    this.keyLength,
    this.keyType,
    this.kind,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'algorithm':
          ?pulumi.Input.mapOptionalInputValue<
            DnsKeySpecAlgorithmDnsV1beta2,
            String
          >(algorithm, (value) => value.wireValue),
      'keyLength': ?keyLength,
      'keyType':
          ?pulumi.Input.mapOptionalInputValue<
            DnsKeySpecKeyTypeDnsV1beta2,
            String
          >(keyType, (value) => value.wireValue),
      'kind': ?kind,
    };
  }

  factory DnsKeySpecDnsV1beta2.fromMap(Map<String, dynamic> map) {
    return DnsKeySpecDnsV1beta2(
      algorithm: (() {
        final guardedValue = map['algorithm'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          DnsKeySpecAlgorithmDnsV1beta2.fromValue(guardedValue as String),
        );
      })(),
      keyLength: (() {
        final guardedValue = map['keyLength'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      keyType: (() {
        final guardedValue = map['keyType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          DnsKeySpecKeyTypeDnsV1beta2.fromValue(guardedValue as String),
        );
      })(),
      kind: (() {
        final guardedValue = map['kind'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
