// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The GitHub action container configuration.
class GitHubActionContainerConfiguration {
  /// The image name for the build.
  final pulumi.Input<String?>? imageName;
  /// The password used to upload the image to the container registry.
  final pulumi.Input<String?>? password;
  /// The server URL for the container registry where the build will be hosted.
  final pulumi.Input<String?>? serverUrl;
  /// The username used to upload the image to the container registry.
  final pulumi.Input<String?>? username;

  /// Creates a new [GitHubActionContainerConfiguration].
  /// [imageName] The image name for the build.
  /// [password] The password used to upload the image to the container registry.
  /// [serverUrl] The server URL for the container registry where the build will be hosted.
  /// [username] The username used to upload the image to the container registry.
  const GitHubActionContainerConfiguration({
    this.imageName,
    this.password,
    this.serverUrl,
    this.username,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'imageName': ?imageName,
      'password': ?password,
      'serverUrl': ?serverUrl,
      'username': ?username,
    };
  }

  factory GitHubActionContainerConfiguration.fromMap(Map<String, dynamic> map) {
    return GitHubActionContainerConfiguration(
      imageName: (() { final guardedValue = map['imageName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      password: (() { final guardedValue = map['password']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      serverUrl: (() { final guardedValue = map['serverUrl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      username: (() { final guardedValue = map['username']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
