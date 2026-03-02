// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The GitHub action container configuration.
class GitHubActionContainerConfiguration {
  /// The image name for the build.
  final pulumi.Input<String>? imageName;
  /// The password used to upload the image to the container registry.
  final pulumi.Input<String>? password;
  /// The server URL for the container registry where the build will be hosted.
  final pulumi.Input<String>? serverUrl;
  /// The username used to upload the image to the container registry.
  final pulumi.Input<String>? username;

  /// Creates a new [GitHubActionContainerConfiguration].
  /// [imageName] The image name for the build.
  /// [password] The password used to upload the image to the container registry.
  /// [serverUrl] The server URL for the container registry where the build will be hosted.
  /// [username] The username used to upload the image to the container registry.
  GitHubActionContainerConfiguration({
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
      imageName: map['imageName'] == null ? null : (map['imageName']! as String).input(),
      password: map['password'] == null ? null : (map['password']! as String).input(),
      serverUrl: map['serverUrl'] == null ? null : (map['serverUrl']! as String).input(),
      username: map['username'] == null ? null : (map['username']! as String).input(),
    );
  }
}

