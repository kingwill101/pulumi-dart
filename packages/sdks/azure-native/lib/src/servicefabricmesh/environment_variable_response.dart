// ignore_for_file: unused_element, unnecessary_cast


/// Describes an environment variable for the container.
class EnvironmentVariableResponse {
  /// The name of the environment variable.
  final String? name;
  /// The value of the environment variable.
  final String? value;

  /// Creates a new [EnvironmentVariableResponse].
  /// [name] The name of the environment variable.
  /// [value] The value of the environment variable.
  EnvironmentVariableResponse({
    this.name,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'value': ?value,
    };
  }

  factory EnvironmentVariableResponse.fromMap(Map<String, dynamic> map) {
    return EnvironmentVariableResponse(
      name: map['name'] == null ? null : map['name'] as String,
      value: map['value'] == null ? null : map['value'] as String,
    );
  }
}

