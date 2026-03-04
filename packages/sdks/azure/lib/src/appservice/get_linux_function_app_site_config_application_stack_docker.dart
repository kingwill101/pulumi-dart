// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetLinuxFunctionAppSiteConfigApplicationStackDocker {
  /// The name of the Docker image used.
  final pulumi.Input<String> imageName;

  /// The image tag of the image used.
  final pulumi.Input<String> imageTag;

  /// The password for the account to use to connect to the registry.
  final pulumi.Input<String> registryPassword;

  /// The URL of the docker registry.
  final pulumi.Input<String> registryUrl;

  /// The username used for connections to the registry.
  final pulumi.Input<String> registryUsername;

  /// Creates a new [GetLinuxFunctionAppSiteConfigApplicationStackDocker].
  /// [imageName] The name of the Docker image used.
  /// [imageTag] The image tag of the image used.
  /// [registryPassword] The password for the account to use to connect to the registry.
  /// [registryUrl] The URL of the docker registry.
  /// [registryUsername] The username used for connections to the registry.
  GetLinuxFunctionAppSiteConfigApplicationStackDocker({
    required this.imageName,
    required this.imageTag,
    required this.registryPassword,
    required this.registryUrl,
    required this.registryUsername,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'imageName': imageName,
      'imageTag': imageTag,
      'registryPassword': registryPassword,
      'registryUrl': registryUrl,
      'registryUsername': registryUsername,
    };
  }

  factory GetLinuxFunctionAppSiteConfigApplicationStackDocker.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetLinuxFunctionAppSiteConfigApplicationStackDocker(
      imageName: pulumi.Input.fromValue(map['imageName'] as String),
      imageTag: pulumi.Input.fromValue(map['imageTag'] as String),
      registryPassword: pulumi.Input.fromValue(
        map['registryPassword'] as String,
      ),
      registryUrl: pulumi.Input.fromValue(map['registryUrl'] as String),
      registryUsername: pulumi.Input.fromValue(
        map['registryUsername'] as String,
      ),
    );
  }
}
