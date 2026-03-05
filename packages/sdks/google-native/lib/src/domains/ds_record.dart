// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ds_record_algorithm.dart';
import 'ds_record_digest_type.dart';

/// Defines a Delegation Signer (DS) record, which is needed to enable DNSSEC for a domain. It contains a digest (hash) of a DNSKEY record that must be present in the domain's DNS zone.
class DsRecord {
  /// The algorithm used to generate the referenced DNSKEY.
  final pulumi.Input<DsRecordAlgorithm>? algorithm;
  /// The digest generated from the referenced DNSKEY.
  final pulumi.Input<String>? digest;
  /// The hash function used to generate the digest of the referenced DNSKEY.
  final pulumi.Input<DsRecordDigestType>? digestType;
  /// The key tag of the record. Must be set in range 0 -- 65535.
  final pulumi.Input<int>? keyTag;

  /// Creates a new [DsRecord].
  /// [algorithm] The algorithm used to generate the referenced DNSKEY.
  /// [digest] The digest generated from the referenced DNSKEY.
  /// [digestType] The hash function used to generate the digest of the referenced DNSKEY.
  /// [keyTag] The key tag of the record. Must be set in range 0 -- 65535.
  DsRecord({
    this.algorithm,
    this.digest,
    this.digestType,
    this.keyTag,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'algorithm': ?pulumi.Input.mapOptionalInputValue<DsRecordAlgorithm, String>(algorithm, (value) => value.wireValue),
      'digest': ?digest,
      'digestType': ?pulumi.Input.mapOptionalInputValue<DsRecordDigestType, String>(digestType, (value) => value.wireValue),
      'keyTag': ?keyTag,
    };
  }

  factory DsRecord.fromMap(Map<String, dynamic> map) {
    return DsRecord(
      algorithm: (() { final guardedValue = map['algorithm']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DsRecordAlgorithm.fromValue(guardedValue as String)); })(),
      digest: (() { final guardedValue = map['digest']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      digestType: (() { final guardedValue = map['digestType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DsRecordDigestType.fromValue(guardedValue as String)); })(),
      keyTag: (() { final guardedValue = map['keyTag']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}

