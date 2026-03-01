// ignore_for_file: unused_element, unnecessary_cast


class AuthorizationServerTokenBodyParameter {
  /// The Name of the Parameter.
  final String name;
  /// The Value of the Parameter.
  final String value;

  /// Creates a new [AuthorizationServerTokenBodyParameter].
  /// [name] The Name of the Parameter.
  /// [value] The Value of the Parameter.
  AuthorizationServerTokenBodyParameter({
    required this.name,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'value': value,
    };
  }

  factory AuthorizationServerTokenBodyParameter.fromMap(Map<String, dynamic> map) {
    return AuthorizationServerTokenBodyParameter(
      name: map['name'] as String,
      value: map['value'] as String,
    );
  }
}

