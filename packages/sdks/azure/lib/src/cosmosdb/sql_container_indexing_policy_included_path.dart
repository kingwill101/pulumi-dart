// ignore_for_file: unused_element, unnecessary_cast


class SqlContainerIndexingPolicyIncludedPath {
  /// Path for which the indexing behaviour applies to.
  final String path;

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
      path: map['path'] as String,
    );
  }
}

