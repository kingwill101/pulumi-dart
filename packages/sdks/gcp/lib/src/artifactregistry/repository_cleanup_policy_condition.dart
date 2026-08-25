// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class RepositoryCleanupPolicyCondition {
  /// Match versions newer than a duration.
  final pulumi.Input<String?>? newerThan;
  /// Match versions older than a duration.
  final pulumi.Input<String?>? olderThan;
  /// Match versions by package prefix. Applied on any prefix match.
  final pulumi.Input<List<String>?>? packageNamePrefixes;
  /// Match versions by tag prefix. Applied on any prefix match.
  final pulumi.Input<List<String>?>? tagPrefixes;
  /// Match versions by tag status.
  /// Default value is `ANY`.
  /// Possible values are: `TAGGED`, `UNTAGGED`, `ANY`.
  final pulumi.Input<String?>? tagState;
  /// Match versions by version name prefix. Applied on any prefix match.
  final pulumi.Input<List<String>?>? versionNamePrefixes;

  /// Creates a new [RepositoryCleanupPolicyCondition].
  /// [newerThan] Match versions newer than a duration.
  /// [olderThan] Match versions older than a duration.
  /// [packageNamePrefixes] Match versions by package prefix. Applied on any prefix match.
  /// [tagPrefixes] Match versions by tag prefix. Applied on any prefix match.
  /// [tagState] Match versions by tag status.
  /// [versionNamePrefixes] Match versions by version name prefix. Applied on any prefix match.
  const RepositoryCleanupPolicyCondition({
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
      newerThan: (() { final guardedValue = map['newerThan']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      olderThan: (() { final guardedValue = map['olderThan']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      packageNamePrefixes: (() { final guardedValue = map['packageNamePrefixes']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      tagPrefixes: (() { final guardedValue = map['tagPrefixes']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      tagState: (() { final guardedValue = map['tagState']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      versionNamePrefixes: (() { final guardedValue = map['versionNamePrefixes']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}
