// ignore_for_file: unused_element, unnecessary_cast


class LinkedOperationRule {
  /// Depends on types.
  final List<String>? dependsOnTypes;
  /// The linked action.
  final String linkedAction;
  /// The linked operation.
  final String linkedOperation;

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
      dependsOnTypes: map['dependsOnTypes'] == null ? null : (map['dependsOnTypes'] as List).cast<String>(),
      linkedAction: map['linkedAction'] as String,
      linkedOperation: map['linkedOperation'] as String,
    );
  }
}

