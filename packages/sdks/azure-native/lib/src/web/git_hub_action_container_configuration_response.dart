// ignore_for_file: unused_element, unnecessary_cast


/// The GitHub action container configuration.
class GitHubActionContainerConfigurationResponse {
  /// The image name for the build.
  final String? imageName;
  /// The password used to upload the image to the container registry.
  final String? password;
  /// The server URL for the container registry where the build will be hosted.
  final String? serverUrl;
  /// The username used to upload the image to the container registry.
  final String? username;

  /// Creates a new [GitHubActionContainerConfigurationResponse].
  /// [imageName] The image name for the build.
  /// [password] The password used to upload the image to the container registry.
  /// [serverUrl] The server URL for the container registry where the build will be hosted.
  /// [username] The username used to upload the image to the container registry.
  GitHubActionContainerConfigurationResponse({
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

  factory GitHubActionContainerConfigurationResponse.fromMap(Map<String, dynamic> map) {
    return GitHubActionContainerConfigurationResponse(
      imageName: map['imageName'] == null ? null : map['imageName'] as String,
      password: map['password'] == null ? null : map['password'] as String,
      serverUrl: map['serverUrl'] == null ? null : map['serverUrl'] as String,
      username: map['username'] == null ? null : map['username'] as String,
    );
  }
}

