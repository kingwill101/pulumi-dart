// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class SshPublicKeyResponse {
  /// Optional. It is used to store the function/usage of the key
  final pulumi.Input<String>? description;

  /// Ssh public key base64 encoded. The format should be: '&lt;keyType&gt; &lt;keyData&gt;', e.g. ssh-rsa AAAABBBB
  final pulumi.Input<String>? key;

  /// Creates a new [SshPublicKeyResponse].
  /// [description] Optional. It is used to store the function/usage of the key
  /// [key] Ssh public key base64 encoded. The format should be: '&lt;keyType&gt; &lt;keyData&gt;', e.g. ssh-rsa AAAABBBB
  SshPublicKeyResponse({this.description, this.key});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'description': ?description, 'key': ?key};
  }

  factory SshPublicKeyResponse.fromMap(Map<String, dynamic> map) {
    return SshPublicKeyResponse(
      description: (() {
        final guardedValue = map['description'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      key: (() {
        final guardedValue = map['key'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
