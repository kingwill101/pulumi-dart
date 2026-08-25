// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class CryptoKeyPrimary {
  /// The resource name for the CryptoKey.
  final pulumi.Input<String?>? name;
  /// (Output)
  /// The current state of the CryptoKeyVersion.
  final pulumi.Input<String?>? state;

  /// Creates a new [CryptoKeyPrimary].
  /// [name] The resource name for the CryptoKey.
  /// [state] (Output)
  const CryptoKeyPrimary({
    this.name,
    this.state,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'state': ?state,
    };
  }

  factory CryptoKeyPrimary.fromMap(Map<String, dynamic> map) {
    return CryptoKeyPrimary(
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
