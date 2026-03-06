// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetSshKeysSshKey {
  /// The fingerprint of the public key of the ssh key.
  final pulumi.Input<String> fingerprint;
  /// The ID of the ssh key.
  final pulumi.Input<int> id;
  /// The name of the ssh key.
  final pulumi.Input<String> name;
  /// The public key of the ssh key.
  final pulumi.Input<String> publicKey;

  /// Creates a new [GetSshKeysSshKey].
  /// [fingerprint] The fingerprint of the public key of the ssh key.
  /// [id] The ID of the ssh key.
  /// [name] The name of the ssh key.
  /// [publicKey] The public key of the ssh key.
  const GetSshKeysSshKey({
    required this.fingerprint,
    required this.id,
    required this.name,
    required this.publicKey,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fingerprint': fingerprint,
      'id': id,
      'name': name,
      'publicKey': publicKey,
    };
  }

  factory GetSshKeysSshKey.fromMap(Map<String, dynamic> map) {
    return GetSshKeysSshKey(
      fingerprint: pulumi.Input.fromValue(map['fingerprint'] as String),
      id: pulumi.Input.fromValue(map['id'] as int),
      name: pulumi.Input.fromValue(map['name'] as String),
      publicKey: pulumi.Input.fromValue(map['publicKey'] as String),
    );
  }
}

