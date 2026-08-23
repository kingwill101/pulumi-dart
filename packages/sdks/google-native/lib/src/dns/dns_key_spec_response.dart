// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Parameters for DnsKey key generation. Used for generating initial keys for a new ManagedZone and as default when adding a new DnsKey.
class DnsKeySpecResponse {
  /// String mnemonic specifying the DNSSEC algorithm of this key.
  final pulumi.Input<String> algorithm;
  /// Length of the keys in bits.
  final pulumi.Input<int> keyLength;
  /// Specifies whether this is a key signing key (KSK) or a zone signing key (ZSK). Key signing keys have the Secure Entry Point flag set and, when active, are only used to sign resource record sets of type DNSKEY. Zone signing keys do not have the Secure Entry Point flag set and are used to sign all other types of resource record sets.
  final pulumi.Input<String> keyType;
  final pulumi.Input<String> kind;

  /// Creates a new [DnsKeySpecResponse].
  /// [algorithm] String mnemonic specifying the DNSSEC algorithm of this key.
  /// [keyLength] Length of the keys in bits.
  /// [keyType] Specifies whether this is a key signing key (KSK) or a zone signing key (ZSK). Key signing keys have the Secure Entry Point flag set and, when active, are only used to sign resource record sets of type DNSKEY. Zone signing keys do not have the Secure Entry Point flag set and are used to sign all other types of resource record sets.
  /// [kind] Required.
  const DnsKeySpecResponse({
    required this.algorithm,
    required this.keyLength,
    required this.keyType,
    required this.kind,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'algorithm': algorithm,
      'keyLength': keyLength,
      'keyType': keyType,
      'kind': kind,
    };
  }

  factory DnsKeySpecResponse.fromMap(Map<String, dynamic> map) {
    return DnsKeySpecResponse(
      algorithm: pulumi.Input.fromValue(map['algorithm'] as String),
      keyLength: pulumi.Input.fromValue(map['keyLength'] as int),
      keyType: pulumi.Input.fromValue(map['keyType'] as String),
      kind: pulumi.Input.fromValue(map['kind'] as String),
    );
  }
}
