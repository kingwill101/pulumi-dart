// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class LocalUserSshAuthorizedKey {
  /// The description of this SSH authorized key.
  final pulumi.Input<String>? description;
  /// The public key value of this SSH authorized key.
  final pulumi.Input<String> key;

  /// Creates a new [LocalUserSshAuthorizedKey].
  /// [description] The description of this SSH authorized key.
  /// [key] The public key value of this SSH authorized key.
  const LocalUserSshAuthorizedKey({
    this.description,
    required this.key,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'key': key,
    };
  }

  factory LocalUserSshAuthorizedKey.fromMap(Map<String, dynamic> map) {
    return LocalUserSshAuthorizedKey(
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      key: pulumi.Input.fromValue(map['key'] as String),
    );
  }
}
