// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Represents a single Yum package repository. This repository is added to a repo file that is stored at `/etc/yum.repos.d/google_osconfig.repo`.
class YumRepositoryResponse {
  /// The location of the repository directory.
  final pulumi.Input<String> baseUrl;
  /// The display name of the repository.
  final pulumi.Input<String> displayName;
  /// URIs of GPG keys.
  final pulumi.Input<List<String>> gpgKeys;

  /// Creates a new [YumRepositoryResponse].
  /// [baseUrl] The location of the repository directory.
  /// [displayName] The display name of the repository.
  /// [gpgKeys] URIs of GPG keys.
  const YumRepositoryResponse({
    required this.baseUrl,
    required this.displayName,
    required this.gpgKeys,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'baseUrl': baseUrl,
      'displayName': displayName,
      'gpgKeys': gpgKeys,
    };
  }

  factory YumRepositoryResponse.fromMap(Map<String, dynamic> map) {
    return YumRepositoryResponse(
      baseUrl: pulumi.Input.fromValue(map['baseUrl'] as String),
      displayName: pulumi.Input.fromValue(map['displayName'] as String),
      gpgKeys: pulumi.Input.fromValue((map['gpgKeys'] as List).cast<String>()),
    );
  }
}
