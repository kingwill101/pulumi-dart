// ignore_for_file: unused_element, unnecessary_cast


class LocalUserSshAuthorizedKey {
  /// The description of this SSH authorized key.
  final String? description;
  /// The public key value of this SSH authorized key.
  final String key;

  /// Creates a new [LocalUserSshAuthorizedKey].
  /// [description] The description of this SSH authorized key.
  /// [key] The public key value of this SSH authorized key.
  LocalUserSshAuthorizedKey({
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
      description: map['description'] == null ? null : map['description'] as String,
      key: map['key'] as String,
    );
  }
}

