// ignore_for_file: unused_element, unnecessary_cast


class EnvironmentVariableResponse {
  /// Environment variable name
  final String name;
  /// Environment variable value
  final String value;

  /// Creates a new [EnvironmentVariableResponse].
  /// [name] Environment variable name
  /// [value] Environment variable value
  EnvironmentVariableResponse({
    required this.name,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'value': value,
    };
  }

  factory EnvironmentVariableResponse.fromMap(Map<String, dynamic> map) {
    return EnvironmentVariableResponse(
      name: map['name'] as String,
      value: map['value'] as String,
    );
  }
}

