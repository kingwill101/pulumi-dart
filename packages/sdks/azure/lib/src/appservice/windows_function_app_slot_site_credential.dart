// ignore_for_file: unused_element, unnecessary_cast


class WindowsFunctionAppSlotSiteCredential {
  /// The Site Credentials Username used for publishing.
  final String? name;
  /// The Site Credentials Password used for publishing.
  final String? password;

  /// Creates a new [WindowsFunctionAppSlotSiteCredential].
  /// [name] The Site Credentials Username used for publishing.
  /// [password] The Site Credentials Password used for publishing.
  WindowsFunctionAppSlotSiteCredential({
    this.name,
    this.password,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'password': ?password,
    };
  }

  factory WindowsFunctionAppSlotSiteCredential.fromMap(Map<String, dynamic> map) {
    return WindowsFunctionAppSlotSiteCredential(
      name: map['name'] == null ? null : map['name'] as String,
      password: map['password'] == null ? null : map['password'] as String,
    );
  }
}

