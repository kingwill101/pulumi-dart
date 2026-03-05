// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class RepositoryCleanupPolicyMostRecentVersions {
  /// Minimum number of versions to keep.
  final pulumi.Input<int>? keepCount;
  /// Match versions by package prefix. Applied on any prefix match.
  final pulumi.Input<List<String>>? packageNamePrefixes;

  /// Creates a new [RepositoryCleanupPolicyMostRecentVersions].
  /// [keepCount] Minimum number of versions to keep.
  /// [packageNamePrefixes] Match versions by package prefix. Applied on any prefix match.
  RepositoryCleanupPolicyMostRecentVersions({
    this.keepCount,
    this.packageNamePrefixes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'keepCount': ?keepCount,
      'packageNamePrefixes': ?packageNamePrefixes,
    };
  }

  factory RepositoryCleanupPolicyMostRecentVersions.fromMap(Map<String, dynamic> map) {
    return RepositoryCleanupPolicyMostRecentVersions(
      keepCount: (() { final guardedValue = map['keepCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      packageNamePrefixes: (() { final guardedValue = map['packageNamePrefixes']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}

