// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Represents a single yum package repository. These are added to a repo file that is managed at `/etc/yum.repos.d/google_osconfig.repo`.
class OSPolicyResourceRepositoryResourceYumRepositoryOsconfigV1alpha {
  /// The location of the repository directory.
  final pulumi.Input<String> baseUrl;

  /// The display name of the repository.
  final pulumi.Input<String>? displayName;

  /// URIs of GPG keys.
  final pulumi.Input<List<String>>? gpgKeys;

  /// A one word, unique name for this repository. This is the `repo id` in the yum config file and also the `display_name` if `display_name` is omitted. This id is also used as the unique identifier when checking for resource conflicts.
  final pulumi.Input<String> id;

  /// Creates a new [OSPolicyResourceRepositoryResourceYumRepositoryOsconfigV1alpha].
  /// [baseUrl] The location of the repository directory.
  /// [displayName] The display name of the repository.
  /// [gpgKeys] URIs of GPG keys.
  /// [id] A one word, unique name for this repository. This is the `repo id` in the yum config file and also the `display_name` if `display_name` is omitted. This id is also used as the unique identifier when checking for resource conflicts.
  OSPolicyResourceRepositoryResourceYumRepositoryOsconfigV1alpha({
    required this.baseUrl,
    this.displayName,
    this.gpgKeys,
    required this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'baseUrl': baseUrl,
      'displayName': ?displayName,
      'gpgKeys': ?gpgKeys,
      'id': id,
    };
  }

  factory OSPolicyResourceRepositoryResourceYumRepositoryOsconfigV1alpha.fromMap(
    Map<String, dynamic> map,
  ) {
    return OSPolicyResourceRepositoryResourceYumRepositoryOsconfigV1alpha(
      baseUrl: pulumi.Input.fromValue(map['baseUrl'] as String),
      displayName: (() {
        final guardedValue = map['displayName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      gpgKeys: (() {
        final guardedValue = map['gpgKeys'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      id: pulumi.Input.fromValue(map['id'] as String),
    );
  }
}
