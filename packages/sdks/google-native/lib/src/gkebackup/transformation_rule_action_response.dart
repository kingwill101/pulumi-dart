// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// TransformationRuleAction defines a TransformationRule action based on the JSON Patch RFC (https://www.rfc-editor.org/rfc/rfc6902)
class TransformationRuleActionResponse {
  /// Optional. A string containing a JSON Pointer value that references the location in the target document to move the value from.
  final pulumi.Input<String> fromPath;

  /// op specifies the operation to perform.
  final pulumi.Input<String> op;

  /// Optional. A string containing a JSON-Pointer value that references a location within the target document where the operation is performed.
  final pulumi.Input<String> path;

  /// Optional. A string that specifies the desired value in string format to use for transformation.
  final pulumi.Input<String> value;

  /// Creates a new [TransformationRuleActionResponse].
  /// [fromPath] Optional. A string containing a JSON Pointer value that references the location in the target document to move the value from.
  /// [op] op specifies the operation to perform.
  /// [path] Optional. A string containing a JSON-Pointer value that references a location within the target document where the operation is performed.
  /// [value] Optional. A string that specifies the desired value in string format to use for transformation.
  TransformationRuleActionResponse({
    required this.fromPath,
    required this.op,
    required this.path,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fromPath': fromPath,
      'op': op,
      'path': path,
      'value': value,
    };
  }

  factory TransformationRuleActionResponse.fromMap(Map<String, dynamic> map) {
    return TransformationRuleActionResponse(
      fromPath: pulumi.Input.fromValue(map['fromPath'] as String),
      op: pulumi.Input.fromValue(map['op'] as String),
      path: pulumi.Input.fromValue(map['path'] as String),
      value: pulumi.Input.fromValue(map['value'] as String),
    );
  }
}
