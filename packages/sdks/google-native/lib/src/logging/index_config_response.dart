// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Configuration for an indexed field.
class IndexConfigResponse {
  /// The timestamp when the index was last modified.This is used to return the timestamp, and will be ignored if supplied during update.
  final pulumi.Input<String> createTime;
  /// The LogEntry field path to index.Note that some paths are automatically indexed, and other paths are not eligible for indexing. See indexing documentation( https://cloud.google.com/logging/docs/view/advanced-queries#indexed-fields) for details.For example: jsonPayload.request.status
  final pulumi.Input<String> fieldPath;
  /// The type of data in this index.
  final pulumi.Input<String> type;

  /// Creates a new [IndexConfigResponse].
  /// [createTime] The timestamp when the index was last modified.This is used to return the timestamp, and will be ignored if supplied during update.
  /// [fieldPath] The LogEntry field path to index.Note that some paths are automatically indexed, and other paths are not eligible for indexing. See indexing documentation( https://cloud.google.com/logging/docs/view/advanced-queries#indexed-fields) for details.For example: jsonPayload.request.status
  /// [type] The type of data in this index.
  IndexConfigResponse({
    required this.createTime,
    required this.fieldPath,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': createTime,
      'fieldPath': fieldPath,
      'type': type,
    };
  }

  factory IndexConfigResponse.fromMap(Map<String, dynamic> map) {
    return IndexConfigResponse(
      createTime: (map['createTime'] as String).input(),
      fieldPath: (map['fieldPath'] as String).input(),
      type: (map['type'] as String).input(),
    );
  }
}

