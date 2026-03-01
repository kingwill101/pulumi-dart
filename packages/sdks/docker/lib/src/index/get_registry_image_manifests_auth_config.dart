// ignore_for_file: unused_element, unnecessary_cast


class GetRegistryImageManifestsAuthConfig {
  /// The address of the Docker registry.
  final String address;
  /// The password for the Docker registry.
  final String password;
  /// The username for the Docker registry.
  final String username;

  /// Creates a new [GetRegistryImageManifestsAuthConfig].
  /// [address] The address of the Docker registry.
  /// [password] The password for the Docker registry.
  /// [username] The username for the Docker registry.
  GetRegistryImageManifestsAuthConfig({
    required this.address,
    required this.password,
    required this.username,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'address': address,
      'password': password,
      'username': username,
    };
  }

  factory GetRegistryImageManifestsAuthConfig.fromMap(Map<String, dynamic> map) {
    return GetRegistryImageManifestsAuthConfig(
      address: map['address'] as String,
      password: map['password'] as String,
      username: map['username'] as String,
    );
  }
}

