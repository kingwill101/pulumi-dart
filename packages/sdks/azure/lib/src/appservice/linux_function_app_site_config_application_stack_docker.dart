// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class LinuxFunctionAppSiteConfigApplicationStackDocker {
  /// The name of the Docker image to use.
  final pulumi.Input<String> imageName;
  /// The image tag of the image to use.
  final pulumi.Input<String> imageTag;
  /// The password for the account to use to connect to the registry.
  ///
  /// > **Note:** This value is required if `container_registry_use_managed_identity` is not set to `true`.
  final pulumi.Input<String>? registryPassword;
  /// The URL of the docker registry.
  final pulumi.Input<String> registryUrl;
  /// The username to use for connections to the registry.
  ///
  /// > **Note:** This value is required if `container_registry_use_managed_identity` is not set to `true`.
  final pulumi.Input<String>? registryUsername;

  /// Creates a new [LinuxFunctionAppSiteConfigApplicationStackDocker].
  /// [imageName] The name of the Docker image to use.
  /// [imageTag] The image tag of the image to use.
  /// [registryPassword] The password for the account to use to connect to the registry.
  /// [registryUrl] The URL of the docker registry.
  /// [registryUsername] The username to use for connections to the registry.
  LinuxFunctionAppSiteConfigApplicationStackDocker({
    required this.imageName,
    required this.imageTag,
    this.registryPassword,
    required this.registryUrl,
    this.registryUsername,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'imageName': imageName,
      'imageTag': imageTag,
      'registryPassword': ?registryPassword,
      'registryUrl': registryUrl,
      'registryUsername': ?registryUsername,
    };
  }

  factory LinuxFunctionAppSiteConfigApplicationStackDocker.fromMap(Map<String, dynamic> map) {
    return LinuxFunctionAppSiteConfigApplicationStackDocker(
      imageName: (map['imageName'] as String).input(),
      imageTag: (map['imageTag'] as String).input(),
      registryPassword: map['registryPassword'] == null ? null : (map['registryPassword']! as String).input(),
      registryUrl: (map['registryUrl'] as String).input(),
      registryUsername: map['registryUsername'] == null ? null : (map['registryUsername']! as String).input(),
    );
  }
}

