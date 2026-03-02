// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class SourceControlGithubActionConfigurationContainerConfiguration {
  /// The image name for the build. Changing this forces a new resource to be created.
  final pulumi.Input<String> imageName;
  /// The password used to upload the image to the container registry. Changing this forces a new resource to be created.
  final pulumi.Input<String>? registryPassword;
  /// The server URL for the container registry where the build will be hosted. Changing this forces a new resource to be created.
  final pulumi.Input<String> registryUrl;
  /// The username used to upload the image to the container registry. Changing this forces a new resource to be created.
  final pulumi.Input<String>? registryUsername;

  /// Creates a new [SourceControlGithubActionConfigurationContainerConfiguration].
  /// [imageName] The image name for the build. Changing this forces a new resource to be created.
  /// [registryPassword] The password used to upload the image to the container registry. Changing this forces a new resource to be created.
  /// [registryUrl] The server URL for the container registry where the build will be hosted. Changing this forces a new resource to be created.
  /// [registryUsername] The username used to upload the image to the container registry. Changing this forces a new resource to be created.
  SourceControlGithubActionConfigurationContainerConfiguration({
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

  factory SourceControlGithubActionConfigurationContainerConfiguration.fromMap(Map<String, dynamic> map) {
    return SourceControlGithubActionConfigurationContainerConfiguration(
      imageName: (map['imageName'] as String).input(),
      registryPassword: map['registryPassword'] == null ? null : (map['registryPassword']! as String).input(),
      registryUrl: (map['registryUrl'] as String).input(),
      registryUsername: map['registryUsername'] == null ? null : (map['registryUsername']! as String).input(),
    );
  }
}

