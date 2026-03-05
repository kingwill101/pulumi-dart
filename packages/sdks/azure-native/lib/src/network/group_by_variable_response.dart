// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Define user session group by clause variables.
class GroupByVariableResponse {
  /// User Session clause variable.
  final pulumi.Input<String> variableName;

  /// Creates a new [GroupByVariableResponse].
  /// [variableName] User Session clause variable.
  GroupByVariableResponse({
    required this.variableName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'variableName': variableName,
    };
  }

  factory GroupByVariableResponse.fromMap(Map<String, dynamic> map) {
    return GroupByVariableResponse(
      variableName: pulumi.Input.fromValue(map['variableName'] as String),
    );
  }
}

