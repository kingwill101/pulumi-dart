// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AuthorityConfigSubjectKeyId {
  /// The value of the KeyId in lowercase hexadecimal.
  ///
  /// &lt;a name="nestedConfigX509Config"&gt;&lt;/a&gt;The `x509Config` block supports:
  final pulumi.Input<String?>? keyId;

  /// Creates a new [AuthorityConfigSubjectKeyId].
  /// [keyId] The value of the KeyId in lowercase hexadecimal.
  const AuthorityConfigSubjectKeyId({
    this.keyId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'keyId': ?keyId,
    };
  }

  factory AuthorityConfigSubjectKeyId.fromMap(Map<String, dynamic> map) {
    return AuthorityConfigSubjectKeyId(
      keyId: (() { final guardedValue = map['keyId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
