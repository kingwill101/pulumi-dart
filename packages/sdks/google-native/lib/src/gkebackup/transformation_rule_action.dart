// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'transformation_rule_action_op.dart';

/// TransformationRuleAction defines a TransformationRule action based on the JSON Patch RFC (https://www.rfc-editor.org/rfc/rfc6902)
class TransformationRuleAction {
  /// Optional. A string containing a JSON Pointer value that references the location in the target document to move the value from.
  final pulumi.Input<String>? fromPath;
  /// op specifies the operation to perform.
  final pulumi.Input<TransformationRuleActionOp> op;
  /// Optional. A string containing a JSON-Pointer value that references a location within the target document where the operation is performed.
  final pulumi.Input<String>? path;
  /// Optional. A string that specifies the desired value in string format to use for transformation.
  final pulumi.Input<String>? value;

  /// Creates a new [TransformationRuleAction].
  /// [fromPath] Optional. A string containing a JSON Pointer value that references the location in the target document to move the value from.
  /// [op] op specifies the operation to perform.
  /// [path] Optional. A string containing a JSON-Pointer value that references a location within the target document where the operation is performed.
  /// [value] Optional. A string that specifies the desired value in string format to use for transformation.
  TransformationRuleAction({
    this.fromPath,
    required this.op,
    this.path,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fromPath': ?fromPath,
      'op': pulumi.Input.mapInputValue<TransformationRuleActionOp, String>(op, (value) => value.wireValue),
      'path': ?path,
      'value': ?value,
    };
  }

  factory TransformationRuleAction.fromMap(Map<String, dynamic> map) {
    return TransformationRuleAction(
      fromPath: (() { final guardedValue = map['fromPath']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      op: pulumi.Input.fromValue(TransformationRuleActionOp.fromValue(map['op']! as String)),
      path: (() { final guardedValue = map['path']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

