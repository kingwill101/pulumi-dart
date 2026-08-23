// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Define user session group by clause variables.
class GroupByVariable {
  /// User Session clause variable.
  final pulumi.Input<String> variableName;

  /// Creates a new [GroupByVariable].
  /// [variableName] User Session clause variable.
  const GroupByVariable({
    required this.variableName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'variableName': variableName,
    };
  }

  factory GroupByVariable.fromMap(Map<String, dynamic> map) {
    return GroupByVariable(
      variableName: pulumi.Input.fromValue(map['variableName'] as String),
    );
  }
}
