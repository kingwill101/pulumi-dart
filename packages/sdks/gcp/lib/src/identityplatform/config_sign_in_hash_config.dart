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
  const ConfigSignInHashConfig({
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
      algorithm: (() { final guardedValue = map['algorithm']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      memoryCost: (() { final guardedValue = map['memoryCost']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      rounds: (() { final guardedValue = map['rounds']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      saltSeparator: (() { final guardedValue = map['saltSeparator']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      signerKey: (() { final guardedValue = map['signerKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
