// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class RegistryAuth {
  /// Address of the registry
  final pulumi.Input<String> address;
  final pulumi.Input<bool>? authDisabled;
  /// Path to docker json file for registry auth. Defaults to `~/.docker/config.json`. If `DOCKER_CONFIG` is set, the value of `DOCKER_CONFIG` is used as the path. `config_file` has predencen over all other options.
  final pulumi.Input<String>? configFile;
  /// Plain content of the docker json file for registry auth. `config_file_content` has precedence over username/password.
  final pulumi.Input<String>? configFileContent;
  /// Password for the registry. Defaults to `DOCKER_REGISTRY_PASS` env variable if set.
  final pulumi.Input<String>? password;
  /// Username for the registry. Defaults to `DOCKER_REGISTRY_USER` env variable if set.
  final pulumi.Input<String>? username;

  /// Creates a new [RegistryAuth].
  /// [address] Address of the registry
  /// [authDisabled] Optional.
  /// [configFile] Path to docker json file for registry auth. Defaults to `~/.docker/config.json`. If `DOCKER_CONFIG` is set, the value of `DOCKER_CONFIG` is used as the path. `config_file` has predencen over all other options.
  /// [configFileContent] Plain content of the docker json file for registry auth. `config_file_content` has precedence over username/password.
  /// [password] Password for the registry. Defaults to `DOCKER_REGISTRY_PASS` env variable if set.
  /// [username] Username for the registry. Defaults to `DOCKER_REGISTRY_USER` env variable if set.
  RegistryAuth({
    required this.address,
    this.authDisabled,
    this.configFile,
    this.configFileContent,
    this.password,
    this.username,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'address': address,
      'authDisabled': ?authDisabled,
      'configFile': ?configFile,
      'configFileContent': ?configFileContent,
      'password': ?password,
      'username': ?username,
    };
  }

  factory RegistryAuth.fromMap(Map<String, dynamic> map) {
    return RegistryAuth(
      address: (map['address'] as String).input(),
      authDisabled: map['authDisabled'] == null ? null : (map['authDisabled'] as bool).input(),
      configFile: map['configFile'] == null ? null : (map['configFile'] as String).input(),
      configFileContent: map['configFileContent'] == null ? null : (map['configFileContent'] as String).input(),
      password: map['password'] == null ? null : (map['password'] as String).input(),
      username: map['username'] == null ? null : (map['username'] as String).input(),
    );
  }
}

