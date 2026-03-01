// ignore_for_file: unused_element, unnecessary_cast


class Registry {
  /// The registry's address (e.g. "docker.io").
  final String address;
  /// Password or token for the registry.
  final String? password;
  /// Username for the registry.
  final String? username;

  /// Creates a new [Registry].
  /// [address] The registry's address (e.g. "docker.io").
  /// [password] Password or token for the registry.
  /// [username] Username for the registry.
  Registry({
    required this.address,
    this.password,
    this.username,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'address': address,
      'password': ?password,
      'username': ?username,
    };
  }

  factory Registry.fromMap(Map<String, dynamic> map) {
    return Registry(
      address: map['address'] as String,
      password: map['password'] == null ? null : map['password'] as String,
      username: map['username'] == null ? null : map['username'] as String,
    );
  }
}

