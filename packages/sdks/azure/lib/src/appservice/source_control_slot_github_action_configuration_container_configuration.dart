// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class SourceControlSlotGithubActionConfigurationContainerConfiguration {
  /// The image name for the build. Changing this forces a new resource to be created.
  final pulumi.Input<String> imageName;
  /// The password used to upload the image to the container registry. Changing this forces a new resource to be created.
  final pulumi.Input<String>? registryPassword;
  /// The server URL for the container registry where the build will be hosted. Changing this forces a new resource to be created.
  final pulumi.Input<String> registryUrl;
  /// The username used to upload the image to the container registry. Changing this forces a new resource to be created.
  final pulumi.Input<String>? registryUsername;

  /// Creates a new [SourceControlSlotGithubActionConfigurationContainerConfiguration].
  /// [imageName] The image name for the build. Changing this forces a new resource to be created.
  /// [registryPassword] The password used to upload the image to the container registry. Changing this forces a new resource to be created.
  /// [registryUrl] The server URL for the container registry where the build will be hosted. Changing this forces a new resource to be created.
  /// [registryUsername] The username used to upload the image to the container registry. Changing this forces a new resource to be created.
  const SourceControlSlotGithubActionConfigurationContainerConfiguration({
    required this.imageName,
    this.registryPassword,
    required this.registryUrl,
    this.registryUsername,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'imageName': imageName,
      'registryPassword': ?registryPassword,
      'registryUrl': registryUrl,
      'registryUsername': ?registryUsername,
    };
  }

  factory SourceControlSlotGithubActionConfigurationContainerConfiguration.fromMap(Map<String, dynamic> map) {
    return SourceControlSlotGithubActionConfigurationContainerConfiguration(
      imageName: pulumi.Input.fromValue(map['imageName'] as String),
      registryPassword: (() { final guardedValue = map['registryPassword']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      registryUrl: pulumi.Input.fromValue(map['registryUrl'] as String),
      registryUsername: (() { final guardedValue = map['registryUsername']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
