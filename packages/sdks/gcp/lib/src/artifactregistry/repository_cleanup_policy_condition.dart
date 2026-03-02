// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class RepositoryCleanupPolicyCondition {
  /// Match versions newer than a duration.
  final pulumi.Input<String>? newerThan;
  /// Match versions older than a duration.
  final pulumi.Input<String>? olderThan;
  /// Match versions by package prefix. Applied on any prefix match.
  final pulumi.Input<List<String>>? packageNamePrefixes;
  /// Match versions by tag prefix. Applied on any prefix match.
  final pulumi.Input<List<String>>? tagPrefixes;
  /// Match versions by tag status.
  /// Default value is `ANY`.
  /// Possible values are: `TAGGED`, `UNTAGGED`, `ANY`.
  final pulumi.Input<String>? tagState;
  /// Match versions by version name prefix. Applied on any prefix match.
  final pulumi.Input<List<String>>? versionNamePrefixes;

  /// Creates a new [RepositoryCleanupPolicyCondition].
  /// [newerThan] Match versions newer than a duration.
  /// [olderThan] Match versions older than a duration.
  /// [packageNamePrefixes] Match versions by package prefix. Applied on any prefix match.
  /// [tagPrefixes] Match versions by tag prefix. Applied on any prefix match.
  /// [tagState] Match versions by tag status.
  /// [versionNamePrefixes] Match versions by version name prefix. Applied on any prefix match.
  RepositoryCleanupPolicyCondition({
    this.newerThan,
    this.olderThan,
    this.packageNamePrefixes,
    this.tagPrefixes,
    this.tagState,
    this.versionNamePrefixes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'newerThan': ?newerThan,
      'olderThan': ?olderThan,
      'packageNamePrefixes': ?packageNamePrefixes,
      'tagPrefixes': ?tagPrefixes,
      'tagState': ?tagState,
      'versionNamePrefixes': ?versionNamePrefixes,
    };
  }

  factory RepositoryCleanupPolicyCondition.fromMap(Map<String, dynamic> map) {
    return RepositoryCleanupPolicyCondition(
      newerThan: map['newerThan'] == null ? null : (map['newerThan']! as String).input(),
      olderThan: map['olderThan'] == null ? null : (map['olderThan']! as String).input(),
      packageNamePrefixes: map['packageNamePrefixes'] == null ? null : ((map['packageNamePrefixes']! as List).cast<String>()).input(),
      tagPrefixes: map['tagPrefixes'] == null ? null : ((map['tagPrefixes']! as List).cast<String>()).input(),
      tagState: map['tagState'] == null ? null : (map['tagState']! as String).input(),
      versionNamePrefixes: map['versionNamePrefixes'] == null ? null : ((map['versionNamePrefixes']! as List).cast<String>()).input(),
    );
  }
}

