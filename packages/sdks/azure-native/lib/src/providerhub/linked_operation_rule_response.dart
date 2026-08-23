// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class LinkedOperationRuleResponse {
  /// Depends on types.
  final pulumi.Input<List<String>>? dependsOnTypes;
  /// The linked action.
  final pulumi.Input<String> linkedAction;
  /// The linked operation.
  final pulumi.Input<String> linkedOperation;

  /// Creates a new [LinkedOperationRuleResponse].
  /// [dependsOnTypes] Depends on types.
  /// [linkedAction] The linked action.
  /// [linkedOperation] The linked operation.
  const LinkedOperationRuleResponse({
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

  factory LinkedOperationRuleResponse.fromMap(Map<String, dynamic> map) {
    return LinkedOperationRuleResponse(
      dependsOnTypes: (() { final guardedValue = map['dependsOnTypes']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      linkedAction: pulumi.Input.fromValue(map['linkedAction'] as String),
      linkedOperation: pulumi.Input.fromValue(map['linkedOperation'] as String),
    );
  }
}
