// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class SshPublicKey {
  /// Optional. It is used to store the function/usage of the key
  final pulumi.Input<String>? description;
  /// Ssh public key base64 encoded. The format should be: '<keyType> <keyData>', e.g. ssh-rsa AAAABBBB
  final pulumi.Input<String>? key;

  /// Creates a new [SshPublicKey].
  /// [description] Optional. It is used to store the function/usage of the key
  /// [key] Ssh public key base64 encoded. The format should be: '<keyType> <keyData>', e.g. ssh-rsa AAAABBBB
  SshPublicKey({
    this.description,
    this.key,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'key': ?key,
    };
  }

  factory SshPublicKey.fromMap(Map<String, dynamic> map) {
    return SshPublicKey(
      description: map['description'] == null ? null : (map['description']! as String).input(),
      key: map['key'] == null ? null : (map['key']! as String).input(),
    );
  }
}

