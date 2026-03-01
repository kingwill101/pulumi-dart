// ignore_for_file: unused_element, unnecessary_cast


class AlertCompoundConditionComponentCondition {
  /// The identifier that will be used in the compound alert condition's `trigger_expression` (e.g., 'a', 'b', 'c', 'd', 'e').
  final String alias;
  /// The ID of the existing alert condition to use as a component.
  final String id;

  /// Creates a new [AlertCompoundConditionComponentCondition].
  /// [alias] The identifier that will be used in the compound alert condition's `trigger_expression` (e.g., 'a', 'b', 'c', 'd', 'e').
  /// [id] The ID of the existing alert condition to use as a component.
  AlertCompoundConditionComponentCondition({
    required this.alias,
    required this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'alias': alias,
      'id': id,
    };
  }

  factory AlertCompoundConditionComponentCondition.fromMap(Map<String, dynamic> map) {
    return AlertCompoundConditionComponentCondition(
      alias: map['alias'] as String,
      id: map['id'] as String,
    );
  }
}

