// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class RestorePlanRestoreConfigTransformationRuleFieldAction {
  /// A string containing a JSON Pointer value that references the
  /// location in the target document to move the value from.
  final pulumi.Input<String>? fromPath;

  /// Specifies the operation to perform.
  /// Possible values are: `REMOVE`, `MOVE`, `COPY`, `ADD`, `TEST`, `REPLACE`.
  final pulumi.Input<String> op;

  /// A string containing a JSON-Pointer value that references a
  /// location within the target document where the operation is performed.
  final pulumi.Input<String>? path;

  /// A string that specifies the desired value in string format
  /// to use for transformation.
  final pulumi.Input<String>? value;

  /// Creates a new [RestorePlanRestoreConfigTransformationRuleFieldAction].
  /// [fromPath] A string containing a JSON Pointer value that references the
  /// [op] Specifies the operation to perform.
  /// [path] A string containing a JSON-Pointer value that references a
  /// [value] A string that specifies the desired value in string format
  RestorePlanRestoreConfigTransformationRuleFieldAction({
    this.fromPath,
    required this.op,
    this.path,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fromPath': ?fromPath,
      'op': op,
      'path': ?path,
      'value': ?value,
    };
  }

  factory RestorePlanRestoreConfigTransformationRuleFieldAction.fromMap(
    Map<String, dynamic> map,
  ) {
    return RestorePlanRestoreConfigTransformationRuleFieldAction(
      fromPath: (() {
        final guardedValue = map['fromPath'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      op: pulumi.Input.fromValue(map['op'] as String),
      path: (() {
        final guardedValue = map['path'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      value: (() {
        final guardedValue = map['value'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
