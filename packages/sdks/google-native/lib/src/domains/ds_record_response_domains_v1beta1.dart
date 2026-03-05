// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Defines a Delegation Signer (DS) record, which is needed to enable DNSSEC for a domain. It contains a digest (hash) of a DNSKEY record that must be present in the domain's DNS zone.
class DsRecordResponseDomainsV1beta1 {
  /// The algorithm used to generate the referenced DNSKEY.
  final pulumi.Input<String> algorithm;
  /// The digest generated from the referenced DNSKEY.
  final pulumi.Input<String> digest;
  /// The hash function used to generate the digest of the referenced DNSKEY.
  final pulumi.Input<String> digestType;
  /// The key tag of the record. Must be set in range 0 -- 65535.
  final pulumi.Input<int> keyTag;

  /// Creates a new [DsRecordResponseDomainsV1beta1].
  /// [algorithm] The algorithm used to generate the referenced DNSKEY.
  /// [digest] The digest generated from the referenced DNSKEY.
  /// [digestType] The hash function used to generate the digest of the referenced DNSKEY.
  /// [keyTag] The key tag of the record. Must be set in range 0 -- 65535.
  DsRecordResponseDomainsV1beta1({
    required this.algorithm,
    required this.digest,
    required this.digestType,
    required this.keyTag,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'algorithm': algorithm,
      'digest': digest,
      'digestType': digestType,
      'keyTag': keyTag,
    };
  }

  factory DsRecordResponseDomainsV1beta1.fromMap(Map<String, dynamic> map) {
    return DsRecordResponseDomainsV1beta1(
      algorithm: pulumi.Input.fromValue(map['algorithm'] as String),
      digest: pulumi.Input.fromValue(map['digest'] as String),
      digestType: pulumi.Input.fromValue(map['digestType'] as String),
      keyTag: pulumi.Input.fromValue(map['keyTag'] as int),
    );
  }
}

