// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetKMSCryptoKeyPrimary {
  /// The CryptoKey's name.
  /// A CryptoKey’s name belonging to the specified Google Cloud Platform KeyRing and match the regular expression `[a-zA-Z0-9_-]{1,63}`
  final pulumi.Input<String> name;
  /// The current state of the CryptoKeyVersion.
  final pulumi.Input<String> state;

  /// Creates a new [GetKMSCryptoKeyPrimary].
  /// [name] The CryptoKey's name.
  /// [state] The current state of the CryptoKeyVersion.
  GetKMSCryptoKeyPrimary({
    required this.name,
    required this.state,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'state': state,
    };
  }

  factory GetKMSCryptoKeyPrimary.fromMap(Map<String, dynamic> map) {
    return GetKMSCryptoKeyPrimary(
      name: pulumi.Input.fromValue(map['name'] as String),
      state: pulumi.Input.fromValue(map['state'] as String),
    );
  }
}

