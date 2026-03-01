// ignore_for_file: unused_element, unnecessary_cast


class GetWindowsFunctionAppSiteCredential {
  /// The name of this Windows Function App.
  final String name;
  /// The Site Credentials Password used for publishing.
  final String password;

  /// Creates a new [GetWindowsFunctionAppSiteCredential].
  /// [name] The name of this Windows Function App.
  /// [password] The Site Credentials Password used for publishing.
  GetWindowsFunctionAppSiteCredential({
    required this.name,
    required this.password,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'password': password,
    };
  }

  factory GetWindowsFunctionAppSiteCredential.fromMap(Map<String, dynamic> map) {
    return GetWindowsFunctionAppSiteCredential(
      name: map['name'] as String,
      password: map['password'] as String,
    );
  }
}

