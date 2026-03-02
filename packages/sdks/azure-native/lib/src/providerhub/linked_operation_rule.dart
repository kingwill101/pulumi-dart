// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class LinkedOperationRule {
  /// Depends on types.
  final pulumi.Input<List<String>>? dependsOnTypes;
  /// The linked action.
  final pulumi.Input<String> linkedAction;
  /// The linked operation.
  final pulumi.Input<String> linkedOperation;

  /// Creates a new [LinkedOperationRule].
  /// [dependsOnTypes] Depends on types.
  /// [linkedAction] The linked action.
  /// [linkedOperation] The linked operation.
  LinkedOperationRule({
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
      dependsOnTypes: map['dependsOnTypes'] == null ? null : ((map['dependsOnTypes']! as List).cast<String>()).input(),
      linkedAction: (map['linkedAction'] as String).input(),
      linkedOperation: (map['linkedOperation'] as String).input(),
    );
  }
}

