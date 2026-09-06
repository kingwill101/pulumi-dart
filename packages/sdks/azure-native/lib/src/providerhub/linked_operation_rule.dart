// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class LinkedOperationRule {
  /// Depends on types.
  final pulumi.Input<List<String>?>? dependsOnTypes;
  /// The linked action.
  final pulumi.Input<dynamic> linkedAction;
  /// The linked operation.
  final pulumi.Input<dynamic> linkedOperation;

  /// Creates a new [LinkedOperationRule].
  /// [dependsOnTypes] Depends on types.
  /// [linkedAction] The linked action.
  /// [linkedOperation] The linked operation.
  const LinkedOperationRule({
    this.dependsOnTypes,
    required this.linkedAction,
    required this.linkedOperation,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dependsOnTypes': ?dependsOnTypes,
      'linkedAction': linkedAction,
      'linkedOperation': linkedOperation,
    };
  }

  factory LinkedOperationRule.fromMap(Map<String, dynamic> map) {
    return LinkedOperationRule(
      dependsOnTypes: (() { final guardedValue = map['dependsOnTypes']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      linkedAction: pulumi.Input.fromValue(map['linkedAction']),
      linkedOperation: pulumi.Input.fromValue(map['linkedOperation']),
    );
  }
}
