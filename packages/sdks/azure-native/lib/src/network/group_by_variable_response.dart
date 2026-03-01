// ignore_for_file: unused_element, unnecessary_cast


/// Define user session group by clause variables.
class GroupByVariableResponse {
  /// User Session clause variable.
  final String variableName;

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
      variableName: map['variableName'] as String,
    );
  }
}

