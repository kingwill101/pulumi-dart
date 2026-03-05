// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class SqlContainerIndexingPolicyIncludedPath {
  /// Path for which the indexing behaviour applies to.
  final pulumi.Input<String> path;

  /// Creates a new [SqlContainerIndexingPolicyIncludedPath].
  /// [path] Path for which the indexing behaviour applies to.
  SqlContainerIndexingPolicyIncludedPath({
    required this.path,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'path': path,
    };
  }

  factory SqlContainerIndexingPolicyIncludedPath.fromMap(Map<String, dynamic> map) {
    return SqlContainerIndexingPolicyIncludedPath(
      path: pulumi.Input.fromValue(map['path'] as String),
    );
  }
}

