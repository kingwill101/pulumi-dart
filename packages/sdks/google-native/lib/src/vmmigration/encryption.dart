// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Encryption message describes the details of the applied encryption.
class Encryption {
  /// The name of the encryption key that is stored in Google Cloud KMS.
  final pulumi.Input<String> kmsKey;

  /// Creates a new [Encryption].
  /// [kmsKey] The name of the encryption key that is stored in Google Cloud KMS.
  Encryption({required this.kmsKey});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'kmsKey': kmsKey};
  }

  factory Encryption.fromMap(Map<String, dynamic> map) {
    return Encryption(kmsKey: pulumi.Input.fromValue(map['kmsKey'] as String));
  }
}
