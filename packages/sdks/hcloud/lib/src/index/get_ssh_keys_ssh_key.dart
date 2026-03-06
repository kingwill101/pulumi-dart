// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetSshKeysSshKey {
  /// Fingerprint of the SSH Key.
  final pulumi.Input<String> fingerprint;
  /// ID of the SSH Key.
  final pulumi.Input<int> id;
  /// User-defined [labels](https://docs.hetzner.cloud/reference/cloud#labels) (key-value pairs) for the resource.
  final pulumi.Input<Map<String, String>> labels;
  /// Name of the SSH Key.
  final pulumi.Input<String> name;
  /// Public key of the SSH Key pair.
  final pulumi.Input<String> publicKey;

  /// Creates a new [GetSshKeysSshKey].
  /// [fingerprint] Fingerprint of the SSH Key.
  /// [id] ID of the SSH Key.
  /// [labels] User-defined [labels](https://docs.hetzner.cloud/reference/cloud#labels) (key-value pairs) for the resource.
  /// [name] Name of the SSH Key.
  /// [publicKey] Public key of the SSH Key pair.
  const GetSshKeysSshKey({
    required this.fingerprint,
    required this.id,
    required this.labels,
    required this.name,
    required this.publicKey,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fingerprint': fingerprint,
      'id': id,
      'labels': labels,
      'name': name,
      'publicKey': publicKey,
    };
  }

  factory GetSshKeysSshKey.fromMap(Map<String, dynamic> map) {
    return GetSshKeysSshKey(
      fingerprint: pulumi.Input.fromValue(map['fingerprint'] as String),
      id: pulumi.Input.fromValue(map['id'] as int),
      labels: pulumi.Input.fromValue((map['labels'] as Map).cast<String, String>()),
      name: pulumi.Input.fromValue(map['name'] as String),
      publicKey: pulumi.Input.fromValue(map['publicKey'] as String),
    );
  }
}

