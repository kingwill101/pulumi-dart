// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ImageRepositoryCredentials {
  /// The password or token used to access an image in the target repository.
  final pulumi.Input<String> password;
  /// The URL of the authentication server used to validate the repository credentials.
  final pulumi.Input<String> registryUrl;
  /// The username used to access an image in the target repository.
  final pulumi.Input<String> username;

  /// Creates a new [ImageRepositoryCredentials].
  /// [password] The password or token used to access an image in the target repository.
  /// [registryUrl] The URL of the authentication server used to validate the repository credentials.
  /// [username] The username used to access an image in the target repository.
  ImageRepositoryCredentials({
    required this.password,
    required this.registryUrl,
    required this.username,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'password': password,
      'registryUrl': registryUrl,
      'username': username,
    };
  }

  factory ImageRepositoryCredentials.fromMap(Map<String, dynamic> map) {
    return ImageRepositoryCredentials(
      password: (map['password'] as String).input(),
      registryUrl: (map['registryUrl'] as String).input(),
      username: (map['username'] as String).input(),
    );
  }
}

