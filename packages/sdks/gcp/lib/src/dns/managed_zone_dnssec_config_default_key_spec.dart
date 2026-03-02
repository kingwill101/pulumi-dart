// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ManagedZoneDnssecConfigDefaultKeySpec {
  /// String mnemonic specifying the DNSSEC algorithm of this key
  /// Possible values are: `ecdsap256sha256`, `ecdsap384sha384`, `rsasha1`, `rsasha256`, `rsasha512`.
  final pulumi.Input<String>? algorithm;
  /// Length of the keys in bits
  final pulumi.Input<int>? keyLength;
  /// Specifies whether this is a key signing key (KSK) or a zone
  /// signing key (ZSK). Key signing keys have the Secure Entry
  /// Point flag set and, when active, will only be used to sign
  /// resource record sets of type DNSKEY. Zone signing keys do
  /// not have the Secure Entry Point flag set and will be used
  /// to sign all other types of resource record sets.
  /// Possible values are: `keySigning`, `zoneSigning`.
  final pulumi.Input<String>? keyType;
  /// Identifies what kind of resource this is
  final pulumi.Input<String>? kind;

  /// Creates a new [ManagedZoneDnssecConfigDefaultKeySpec].
  /// [algorithm] String mnemonic specifying the DNSSEC algorithm of this key
  /// [keyLength] Length of the keys in bits
  /// [keyType] Specifies whether this is a key signing key (KSK) or a zone
  /// [kind] Identifies what kind of resource this is
  ManagedZoneDnssecConfigDefaultKeySpec({
    this.algorithm,
    this.keyLength,
    this.keyType,
    this.kind,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'algorithm': ?algorithm,
      'keyLength': ?keyLength,
      'keyType': ?keyType,
      'kind': ?kind,
    };
  }

  factory ManagedZoneDnssecConfigDefaultKeySpec.fromMap(Map<String, dynamic> map) {
    return ManagedZoneDnssecConfigDefaultKeySpec(
      algorithm: map['algorithm'] == null ? null : (map['algorithm'] as String).input(),
      keyLength: map['keyLength'] == null ? null : (map['keyLength'] as int).input(),
      keyType: map['keyType'] == null ? null : (map['keyType'] as String).input(),
      kind: map['kind'] == null ? null : (map['kind'] as String).input(),
    );
  }
}

