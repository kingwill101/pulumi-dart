// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class RegistryAuth {
  /// Address of the registry
  final pulumi.Input<String> address;
  /// Setting this to `true` will tell the provider that this registry does not need authentication. Due to the docker internals, the provider will use dummy credentials (see https://github.com/kreuzwerker/terraform-provider-docker/issues/470 for more information). Defaults to `false`.
  final pulumi.Input<bool?>? authDisabled;
  /// Path to docker json file for registry auth. Defaults to `~/.docker/config.json`. If `DOCKER_CONFIG` env variable is set, the value of `DOCKER_CONFIG` is used as the path. `DOCKER_CONFIG` can be set to a directory (as per Docker CLI) or a file path directly. `configFile` has precedence over all other options.
  final pulumi.Input<String?>? configFile;
  /// Plain content of the docker json file for registry auth. `configFileContent` has precedence over username/password.
  final pulumi.Input<String?>? configFileContent;
  /// Password for the registry. Defaults to `DOCKER_REGISTRY_PASS` env variable if set.
  final pulumi.Input<String?>? password;
  /// Username for the registry. Defaults to `DOCKER_REGISTRY_USER` env variable if set.
  final pulumi.Input<String?>? username;

  /// Creates a new [RegistryAuth].
  /// [address] Address of the registry
  /// [authDisabled] Setting this to `true` will tell the provider that this registry does not need authentication. Due to the docker internals, the provider will use dummy credentials (see https://github.com/kreuzwerker/terraform-provider-docker/issues/470 for more information). Defaults to `false`.
  /// [configFile] Path to docker json file for registry auth. Defaults to `~/.docker/config.json`. If `DOCKER_CONFIG` env variable is set, the value of `DOCKER_CONFIG` is used as the path. `DOCKER_CONFIG` can be set to a directory (as per Docker CLI) or a file path directly. `configFile` has precedence over all other options.
  /// [configFileContent] Plain content of the docker json file for registry auth. `configFileContent` has precedence over username/password.
  /// [password] Password for the registry. Defaults to `DOCKER_REGISTRY_PASS` env variable if set.
  /// [username] Username for the registry. Defaults to `DOCKER_REGISTRY_USER` env variable if set.
  const RegistryAuth({
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
      address: pulumi.Input.fromValue(map['address'] as String),
      authDisabled: (() { final guardedValue = map['authDisabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      configFile: (() { final guardedValue = map['configFile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      configFileContent: (() { final guardedValue = map['configFileContent']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      password: (() { final guardedValue = map['password']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      username: (() { final guardedValue = map['username']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
