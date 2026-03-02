// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Represents a single Zypper package repository. This repository is added to a repo file that is stored at `/etc/zypp/repos.d/google_osconfig.repo`.
class ZypperRepository {
  /// The location of the repository directory.
  final pulumi.Input<String> baseUrl;
  /// The display name of the repository.
  final pulumi.Input<String>? displayName;
  /// URIs of GPG keys.
  final pulumi.Input<List<String>>? gpgKeys;
  /// A one word, unique name for this repository. This is the `repo id` in the zypper config file and also the `display_name` if `display_name` is omitted. This id is also used as the unique identifier when checking for guest policy conflicts.
  final pulumi.Input<String> id;

  /// Creates a new [ZypperRepository].
  /// [baseUrl] The location of the repository directory.
  /// [displayName] The display name of the repository.
  /// [gpgKeys] URIs of GPG keys.
  /// [id] A one word, unique name for this repository. This is the `repo id` in the zypper config file and also the `display_name` if `display_name` is omitted. This id is also used as the unique identifier when checking for guest policy conflicts.
  ZypperRepository({
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

  factory ZypperRepository.fromMap(Map<String, dynamic> map) {
    return ZypperRepository(
      baseUrl: (map['baseUrl'] as String).input(),
      displayName: map['displayName'] == null ? null : (map['displayName']! as String).input(),
      gpgKeys: map['gpgKeys'] == null ? null : ((map['gpgKeys']! as List).cast<String>()).input(),
      id: (map['id'] as String).input(),
    );
  }
}

