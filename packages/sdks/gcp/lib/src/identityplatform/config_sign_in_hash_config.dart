// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ConfigSignInHashConfig {
  /// Different password hash algorithms used in Identity Toolkit.
  final pulumi.Input<String>? algorithm;
  /// Memory cost for hash calculation. Used by scrypt and other similar password derivation algorithms. See https://tools.ietf.org/html/rfc7914 for explanation of field.
  final pulumi.Input<int>? memoryCost;
  /// How many rounds for hash calculation. Used by scrypt and other similar password derivation algorithms.
  final pulumi.Input<int>? rounds;
  /// Non-printable character to be inserted between the salt and plain text password in base64.
  final pulumi.Input<String>? saltSeparator;
  /// Signer key in base64.
  final pulumi.Input<String>? signerKey;

  /// Creates a new [ConfigSignInHashConfig].
  /// [algorithm] Different password hash algorithms used in Identity Toolkit.
  /// [memoryCost] Memory cost for hash calculation. Used by scrypt and other similar password derivation algorithms. See https://tools.ietf.org/html/rfc7914 for explanation of field.
  /// [rounds] How many rounds for hash calculation. Used by scrypt and other similar password derivation algorithms.
  /// [saltSeparator] Non-printable character to be inserted between the salt and plain text password in base64.
  /// [signerKey] Signer key in base64.
  ConfigSignInHashConfig({
    this.algorithm,
    this.memoryCost,
    this.rounds,
    this.saltSeparator,
    this.signerKey,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'algorithm': ?algorithm,
      'memoryCost': ?memoryCost,
      'rounds': ?rounds,
      'saltSeparator': ?saltSeparator,
      'signerKey': ?signerKey,
    };
  }

  factory ConfigSignInHashConfig.fromMap(Map<String, dynamic> map) {
    return ConfigSignInHashConfig(
      algorithm: map['algorithm'] == null ? null : (map['algorithm']! as String).input(),
      memoryCost: map['memoryCost'] == null ? null : (map['memoryCost']! as int).input(),
      rounds: map['rounds'] == null ? null : (map['rounds']! as int).input(),
      saltSeparator: map['saltSeparator'] == null ? null : (map['saltSeparator']! as String).input(),
      signerKey: map['signerKey'] == null ? null : (map['signerKey']! as String).input(),
    );
  }
}

