// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ds_record_algorithm_domains_v1alpha2.dart';
import 'ds_record_digest_type_domains_v1alpha2.dart';

/// Defines a Delegation Signer (DS) record, which is needed to enable DNSSEC for a domain. It contains a digest (hash) of a DNSKEY record that must be present in the domain's DNS zone.
class DsRecordDomainsV1alpha2 {
  /// The algorithm used to generate the referenced DNSKEY.
  final pulumi.Input<DsRecordAlgorithmDomainsV1alpha2>? algorithm;
  /// The digest generated from the referenced DNSKEY.
  final pulumi.Input<String>? digest;
  /// The hash function used to generate the digest of the referenced DNSKEY.
  final pulumi.Input<DsRecordDigestTypeDomainsV1alpha2>? digestType;
  /// The key tag of the record. Must be set in range 0 -- 65535.
  final pulumi.Input<int>? keyTag;

  /// Creates a new [DsRecordDomainsV1alpha2].
  /// [algorithm] The algorithm used to generate the referenced DNSKEY.
  /// [digest] The digest generated from the referenced DNSKEY.
  /// [digestType] The hash function used to generate the digest of the referenced DNSKEY.
  /// [keyTag] The key tag of the record. Must be set in range 0 -- 65535.
  DsRecordDomainsV1alpha2({
    this.algorithm,
    this.digest,
    this.digestType,
    this.keyTag,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'algorithm': ?pulumi.Input.mapOptionalInputValue<DsRecordAlgorithmDomainsV1alpha2, String>(algorithm, (value) => value.value),
      'digest': ?digest,
      'digestType': ?pulumi.Input.mapOptionalInputValue<DsRecordDigestTypeDomainsV1alpha2, String>(digestType, (value) => value.value),
      'keyTag': ?keyTag,
    };
  }

  factory DsRecordDomainsV1alpha2.fromMap(Map<String, dynamic> map) {
    return DsRecordDomainsV1alpha2(
      algorithm: map['algorithm'] == null ? null : (DsRecordAlgorithmDomainsV1alpha2.fromValue(map['algorithm']! as String)).input(),
      digest: map['digest'] == null ? null : (map['digest']! as String).input(),
      digestType: map['digestType'] == null ? null : (DsRecordDigestTypeDomainsV1alpha2.fromValue(map['digestType']! as String)).input(),
      keyTag: map['keyTag'] == null ? null : (map['keyTag']! as int).input(),
    );
  }
}

