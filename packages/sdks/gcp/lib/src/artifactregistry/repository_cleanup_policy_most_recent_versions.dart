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
      keepCount: map['keepCount'] == null ? null : (map['keepCount'] as int).input(),
      packageNamePrefixes: map['packageNamePrefixes'] == null ? null : ((map['packageNamePrefixes'] as List).cast<String>()).input(),
    );
  }
}

