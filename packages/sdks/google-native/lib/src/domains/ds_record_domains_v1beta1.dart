// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ds_record_algorithm_domains_v1beta1.dart';
import 'ds_record_digest_type_domains_v1beta1.dart';

/// Defines a Delegation Signer (DS) record, which is needed to enable DNSSEC for a domain. It contains a digest (hash) of a DNSKEY record that must be present in the domain's DNS zone.
class DsRecordDomainsV1beta1 {
  /// The algorithm used to generate the referenced DNSKEY.
  final pulumi.Input<DsRecordAlgorithmDomainsV1beta1>? algorithm;
  /// The digest generated from the referenced DNSKEY.
  final pulumi.Input<String>? digest;
  /// The hash function used to generate the digest of the referenced DNSKEY.
  final pulumi.Input<DsRecordDigestTypeDomainsV1beta1>? digestType;
  /// The key tag of the record. Must be set in range 0 -- 65535.
  final pulumi.Input<int>? keyTag;

  /// Creates a new [DsRecordDomainsV1beta1].
  /// [algorithm] The algorithm used to generate the referenced DNSKEY.
  /// [digest] The digest generated from the referenced DNSKEY.
  /// [digestType] The hash function used to generate the digest of the referenced DNSKEY.
  /// [keyTag] The key tag of the record. Must be set in range 0 -- 65535.
  const DsRecordDomainsV1beta1({
    this.algorithm,
    this.digest,
    this.digestType,
    this.keyTag,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'algorithm': ?pulumi.Input.mapOptionalInputValue<DsRecordAlgorithmDomainsV1beta1, String>(algorithm, (value) => value.wireValue),
      'digest': ?digest,
      'digestType': ?pulumi.Input.mapOptionalInputValue<DsRecordDigestTypeDomainsV1beta1, String>(digestType, (value) => value.wireValue),
      'keyTag': ?keyTag,
    };
  }

  factory DsRecordDomainsV1beta1.fromMap(Map<String, dynamic> map) {
    return DsRecordDomainsV1beta1(
      algorithm: (() { final guardedValue = map['algorithm']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DsRecordAlgorithmDomainsV1beta1.fromValue(guardedValue as String)); })(),
      digest: (() { final guardedValue = map['digest']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      digestType: (() { final guardedValue = map['digestType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DsRecordDigestTypeDomainsV1beta1.fromValue(guardedValue as String)); })(),
      keyTag: (() { final guardedValue = map['keyTag']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}

