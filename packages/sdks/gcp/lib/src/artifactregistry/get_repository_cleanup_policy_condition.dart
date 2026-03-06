// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetRepositoryCleanupPolicyCondition {
  /// Match versions newer than a duration.
  final pulumi.Input<String> newerThan;
  /// Match versions older than a duration.
  final pulumi.Input<String> olderThan;
  /// Match versions by package prefix. Applied on any prefix match.
  final pulumi.Input<List<String>> packageNamePrefixes;
  /// Match versions by tag prefix. Applied on any prefix match.
  final pulumi.Input<List<String>> tagPrefixes;
  /// Match versions by tag status. Default value: "ANY" Possible values: ["TAGGED", "UNTAGGED", "ANY"]
  final pulumi.Input<String> tagState;
  /// Match versions by version name prefix. Applied on any prefix match.
  final pulumi.Input<List<String>> versionNamePrefixes;

  /// Creates a new [GetRepositoryCleanupPolicyCondition].
  /// [newerThan] Match versions newer than a duration.
  /// [olderThan] Match versions older than a duration.
  /// [packageNamePrefixes] Match versions by package prefix. Applied on any prefix match.
  /// [tagPrefixes] Match versions by tag prefix. Applied on any prefix match.
  /// [tagState] Match versions by tag status. Default value: "ANY" Possible values: ["TAGGED", "UNTAGGED", "ANY"]
  /// [versionNamePrefixes] Match versions by version name prefix. Applied on any prefix match.
  const GetRepositoryCleanupPolicyCondition({
    required this.newerThan,
    required this.olderThan,
    required this.packageNamePrefixes,
    required this.tagPrefixes,
    required this.tagState,
    required this.versionNamePrefixes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'newerThan': newerThan,
      'olderThan': olderThan,
      'packageNamePrefixes': packageNamePrefixes,
      'tagPrefixes': tagPrefixes,
      'tagState': tagState,
      'versionNamePrefixes': versionNamePrefixes,
    };
  }

  factory GetRepositoryCleanupPolicyCondition.fromMap(Map<String, dynamic> map) {
    return GetRepositoryCleanupPolicyCondition(
      newerThan: pulumi.Input.fromValue(map['newerThan'] as String),
      olderThan: pulumi.Input.fromValue(map['olderThan'] as String),
      packageNamePrefixes: pulumi.Input.fromValue((map['packageNamePrefixes'] as List).cast<String>()),
      tagPrefixes: pulumi.Input.fromValue((map['tagPrefixes'] as List).cast<String>()),
      tagState: pulumi.Input.fromValue(map['tagState'] as String),
      versionNamePrefixes: pulumi.Input.fromValue((map['versionNamePrefixes'] as List).cast<String>()),
    );
  }
}

