// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'index_config_type.dart';

/// Configuration for an indexed field.
class IndexConfig {
  /// The LogEntry field path to index.Note that some paths are automatically indexed, and other paths are not eligible for indexing. See indexing documentation( https://cloud.google.com/logging/docs/view/advanced-queries#indexed-fields) for details.For example: jsonPayload.request.status
  final pulumi.Input<String> fieldPath;
  /// The type of data in this index.
  final pulumi.Input<IndexConfigType> type;

  /// Creates a new [IndexConfig].
  /// [fieldPath] The LogEntry field path to index.Note that some paths are automatically indexed, and other paths are not eligible for indexing. See indexing documentation( https://cloud.google.com/logging/docs/view/advanced-queries#indexed-fields) for details.For example: jsonPayload.request.status
  /// [type] The type of data in this index.
  const IndexConfig({
    required this.fieldPath,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fieldPath': fieldPath,
      'type': pulumi.Input.mapInputValue<IndexConfigType, String>(type, (value) => value.wireValue),
    };
  }

  factory IndexConfig.fromMap(Map<String, dynamic> map) {
    return IndexConfig(
      fieldPath: pulumi.Input.fromValue(map['fieldPath'] as String),
      type: pulumi.Input.fromValue(IndexConfigType.fromValue(map['type']! as String)),
    );
  }
}

