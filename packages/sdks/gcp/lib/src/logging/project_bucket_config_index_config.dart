// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ProjectBucketConfigIndexConfig {
  /// The LogEntry field path to index.
  /// Note that some paths are automatically indexed, and other paths are not eligible for indexing. See [indexing documentation](https://cloud.google.com/logging/docs/analyze/custom-index) for details.
  final pulumi.Input<String> fieldPath;
  /// The type of data in this index. Allowed types include `INDEX_TYPE_UNSPECIFIED`, `INDEX_TYPE_STRING` and `INDEX_TYPE_INTEGER`.
  final pulumi.Input<String> type;

  /// Creates a new [ProjectBucketConfigIndexConfig].
  /// [fieldPath] The LogEntry field path to index.
  /// [type] The type of data in this index. Allowed types include `INDEX_TYPE_UNSPECIFIED`, `INDEX_TYPE_STRING` and `INDEX_TYPE_INTEGER`.
  ProjectBucketConfigIndexConfig({
    required this.fieldPath,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fieldPath': fieldPath,
      'type': type,
    };
  }

  factory ProjectBucketConfigIndexConfig.fromMap(Map<String, dynamic> map) {
    return ProjectBucketConfigIndexConfig(
      fieldPath: (map['fieldPath'] as String).input(),
      type: (map['type'] as String).input(),
    );
  }
}

