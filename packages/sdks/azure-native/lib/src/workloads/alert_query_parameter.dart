// ignore_for_file: unused_element, unnecessary_cast


/// Defines the Alert Query Parameter.
class AlertQueryParameter {
  /// The name of the alert query parameter.
  final String? name;
  /// The value of the alert query parameter.
  final String? value;

  /// Creates a new [AlertQueryParameter].
  /// [name] The name of the alert query parameter.
  /// [value] The value of the alert query parameter.
  AlertQueryParameter({
    this.name,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'value': ?value,
    };
  }

  factory AlertQueryParameter.fromMap(Map<String, dynamic> map) {
    return AlertQueryParameter(
      name: map['name'] == null ? null : map['name'] as String,
      value: map['value'] == null ? null : map['value'] as String,
    );
  }
}

