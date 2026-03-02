// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class RegistrationDnsSettingsCustomDnsDsRecord {
  /// The algorithm used to generate the referenced DNSKEY.
  final pulumi.Input<String>? algorithm;
  /// The digest generated from the referenced DNSKEY.
  final pulumi.Input<String>? digest;
  /// The hash function used to generate the digest of the referenced DNSKEY.
  final pulumi.Input<String>? digestType;
  /// The key tag of the record. Must be set in range 0 -- 65535.
  final pulumi.Input<int>? keyTag;

  /// Creates a new [RegistrationDnsSettingsCustomDnsDsRecord].
  /// [algorithm] The algorithm used to generate the referenced DNSKEY.
  /// [digest] The digest generated from the referenced DNSKEY.
  /// [digestType] The hash function used to generate the digest of the referenced DNSKEY.
  /// [keyTag] The key tag of the record. Must be set in range 0 -- 65535.
  RegistrationDnsSettingsCustomDnsDsRecord({
    this.algorithm,
    this.digest,
    this.digestType,
    this.keyTag,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'algorithm': ?algorithm,
      'digest': ?digest,
      'digestType': ?digestType,
      'keyTag': ?keyTag,
    };
  }

  factory RegistrationDnsSettingsCustomDnsDsRecord.fromMap(Map<String, dynamic> map) {
    return RegistrationDnsSettingsCustomDnsDsRecord(
      algorithm: map['algorithm'] == null ? null : (map['algorithm']! as String).input(),
      digest: map['digest'] == null ? null : (map['digest']! as String).input(),
      digestType: map['digestType'] == null ? null : (map['digestType']! as String).input(),
      keyTag: map['keyTag'] == null ? null : (map['keyTag']! as int).input(),
    );
  }
}

