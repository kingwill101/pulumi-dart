// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class SshPublicKey {
  /// The SSH public key data.
  final pulumi.Input<String> keyData;

  /// Creates a new [SshPublicKey].
  /// [keyData] The SSH public key data.
  SshPublicKey({
    required this.keyData,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'keyData': keyData,
    };
  }

  factory SshPublicKey.fromMap(Map<String, dynamic> map) {
    return SshPublicKey(
      keyData: pulumi.Input.fromValue(map['keyData'] as String),
    );
  }
}

