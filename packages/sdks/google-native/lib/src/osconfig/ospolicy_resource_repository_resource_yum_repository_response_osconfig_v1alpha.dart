// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Represents a single yum package repository. These are added to a repo file that is managed at `/etc/yum.repos.d/google_osconfig.repo`.
class OSPolicyResourceRepositoryResourceYumRepositoryResponseOsconfigV1alpha {
  /// The location of the repository directory.
  final pulumi.Input<String> baseUrl;
  /// The display name of the repository.
  final pulumi.Input<String> displayName;
  /// URIs of GPG keys.
  final pulumi.Input<List<String>> gpgKeys;

  /// Creates a new [OSPolicyResourceRepositoryResourceYumRepositoryResponseOsconfigV1alpha].
  /// [baseUrl] The location of the repository directory.
  /// [displayName] The display name of the repository.
  /// [gpgKeys] URIs of GPG keys.
  const OSPolicyResourceRepositoryResourceYumRepositoryResponseOsconfigV1alpha({
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

  factory OSPolicyResourceRepositoryResourceYumRepositoryResponseOsconfigV1alpha.fromMap(Map<String, dynamic> map) {
    return OSPolicyResourceRepositoryResourceYumRepositoryResponseOsconfigV1alpha(
      baseUrl: pulumi.Input.fromValue(map['baseUrl'] as String),
      displayName: pulumi.Input.fromValue(map['displayName'] as String),
      gpgKeys: pulumi.Input.fromValue((map['gpgKeys'] as List).cast<String>()),
    );
  }
}

