// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class SshPublicKeyResponse {
  /// The SSH public key data.
  final pulumi.Input<String> keyData;

  /// Creates a new [SshPublicKeyResponse].
  /// [keyData] The SSH public key data.
  SshPublicKeyResponse({
    required this.keyData,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'keyData': keyData,
    };
  }

  factory SshPublicKeyResponse.fromMap(Map<String, dynamic> map) {
    return SshPublicKeyResponse(
      keyData: pulumi.Input.fromValue(map['keyData'] as String),
    );
  }
}

