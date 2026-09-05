// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class LinuxFunctionAppSlotSiteConfigApplicationStackDocker {
  /// The name of the Docker image to use.
  final pulumi.Input<String> imageName;
  /// The image tag of the image to use.
  final pulumi.Input<String> imageTag;
  /// The password for the account to use to connect to the registry.
  ///
  /// &gt; **Note:** This value is required if `containerRegistryUseManagedIdentity` is not set to `true`.
  final pulumi.Input<String?>? registryPassword;
  /// The URL of the docker registry.
  final pulumi.Input<String> registryUrl;
  /// The username to use for connections to the registry.
  ///
  /// &gt; **Note:** This value is required if `containerRegistryUseManagedIdentity` is not set to `true`.
  final pulumi.Input<String?>? registryUsername;

  /// Creates a new [LinuxFunctionAppSlotSiteConfigApplicationStackDocker].
  /// [imageName] The name of the Docker image to use.
  /// [imageTag] The image tag of the image to use.
  /// [registryPassword] The password for the account to use to connect to the registry.
  /// [registryUrl] The URL of the docker registry.
  /// [registryUsername] The username to use for connections to the registry.
  const LinuxFunctionAppSlotSiteConfigApplicationStackDocker({
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

  factory LinuxFunctionAppSlotSiteConfigApplicationStackDocker.fromMap(Map<String, dynamic> map) {
    return LinuxFunctionAppSlotSiteConfigApplicationStackDocker(
      imageName: pulumi.Input.fromValue(map['imageName'] as String),
      imageTag: pulumi.Input.fromValue(map['imageTag'] as String),
      registryPassword: (() { final guardedValue = map['registryPassword']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      registryUrl: pulumi.Input.fromValue(map['registryUrl'] as String),
      registryUsername: (() { final guardedValue = map['registryUsername']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
