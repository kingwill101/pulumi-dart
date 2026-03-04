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

  factory RegistrationDnsSettingsCustomDnsDsRecord.fromMap(
    Map<String, dynamic> map,
  ) {
    return RegistrationDnsSettingsCustomDnsDsRecord(
      algorithm: (() {
        final guardedValue = map['algorithm'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      digest: (() {
        final guardedValue = map['digest'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      digestType: (() {
        final guardedValue = map['digestType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      keyTag: (() {
        final guardedValue = map['keyTag'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
    );
  }
}
