// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class SqlContainerIndexingPolicyExcludedPath {
  /// Path that is excluded from indexing.
  final pulumi.Input<String> path;

  /// Creates a new [SqlContainerIndexingPolicyExcludedPath].
  /// [path] Path that is excluded from indexing.
  SqlContainerIndexingPolicyExcludedPath({
    required this.path,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'path': path,
    };
  }

  factory SqlContainerIndexingPolicyExcludedPath.fromMap(Map<String, dynamic> map) {
    return SqlContainerIndexingPolicyExcludedPath(
      path: pulumi.Input.fromValue(map['path'] as String),
    );
  }
}

