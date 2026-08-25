// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetRepositoryCleanupPolicyMostRecentVersion {
  /// Minimum number of versions to keep.
  final pulumi.Input<int> keepCount;
  /// Match versions by package prefix. Applied on any prefix match.
  final pulumi.Input<List<String>> packageNamePrefixes;

  /// Creates a new [GetRepositoryCleanupPolicyMostRecentVersion].
  /// [keepCount] Minimum number of versions to keep.
  /// [packageNamePrefixes] Match versions by package prefix. Applied on any prefix match.
  const GetRepositoryCleanupPolicyMostRecentVersion({
    required this.keepCount,
    required this.packageNamePrefixes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'keepCount': keepCount,
      'packageNamePrefixes': packageNamePrefixes,
    };
  }

  factory GetRepositoryCleanupPolicyMostRecentVersion.fromMap(Map<String, dynamic> map) {
    return GetRepositoryCleanupPolicyMostRecentVersion(
      keepCount: pulumi.Input.fromValue((map['keepCount'] as num).toInt()),
      packageNamePrefixes: pulumi.Input.fromValue((map['packageNamePrefixes'] as List).cast<String>()),
    );
  }
}
