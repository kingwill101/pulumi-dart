// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class QueryTemplateRoutine {
  /// SQL query logic.
  final pulumi.Input<String>? definitionBody;
  /// Type of routine (e.g., TABLE_VALUED_FUNCTION).
  /// Possible values are: `TABLE_VALUED_FUNCTION`.
  final pulumi.Input<String>? routineType;

  /// Creates a new [QueryTemplateRoutine].
  /// [definitionBody] SQL query logic.
  /// [routineType] Type of routine (e.g., TABLE_VALUED_FUNCTION).
  const QueryTemplateRoutine({
    this.definitionBody,
    this.routineType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'definitionBody': ?definitionBody,
      'routineType': ?routineType,
    };
  }

  factory QueryTemplateRoutine.fromMap(Map<String, dynamic> map) {
    return QueryTemplateRoutine(
      definitionBody: (() { final guardedValue = map['definitionBody']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      routineType: (() { final guardedValue = map['routineType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
