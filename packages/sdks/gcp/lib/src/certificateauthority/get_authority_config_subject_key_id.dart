// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetAuthorityConfigSubjectKeyId {
  /// The value of the KeyId in lowercase hexadecimal.
  final pulumi.Input<String> keyId;

  /// Creates a new [GetAuthorityConfigSubjectKeyId].
  /// [keyId] The value of the KeyId in lowercase hexadecimal.
  const GetAuthorityConfigSubjectKeyId({
    required this.keyId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'keyId': keyId,
    };
  }

  factory GetAuthorityConfigSubjectKeyId.fromMap(Map<String, dynamic> map) {
    return GetAuthorityConfigSubjectKeyId(
      keyId: pulumi.Input.fromValue(map['keyId'] as String),
    );
  }
}

