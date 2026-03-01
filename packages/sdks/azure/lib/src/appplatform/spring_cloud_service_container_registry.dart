// ignore_for_file: unused_element, unnecessary_cast


class SpringCloudServiceContainerRegistry {
  /// Specifies the name of the container registry.
  final String name;
  /// Specifies the password of the container registry.
  final String password;
  /// Specifies the login server of the container registry.
  final String server;
  /// Specifies the username of the container registry.
  final String username;

  /// Creates a new [SpringCloudServiceContainerRegistry].
  /// [name] Specifies the name of the container registry.
  /// [password] Specifies the password of the container registry.
  /// [server] Specifies the login server of the container registry.
  /// [username] Specifies the username of the container registry.
  SpringCloudServiceContainerRegistry({
    required this.name,
    required this.password,
    required this.server,
    required this.username,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'password': password,
      'server': server,
      'username': username,
    };
  }

  factory SpringCloudServiceContainerRegistry.fromMap(Map<String, dynamic> map) {
    return SpringCloudServiceContainerRegistry(
      name: map['name'] as String,
      password: map['password'] as String,
      server: map['server'] as String,
      username: map['username'] as String,
    );
  }
}

