// ignore_for_file: unused_element, unnecessary_cast


class FactoryGlobalParameter {
  /// Specifies the global parameter name.
  final String name;
  /// Specifies the global parameter type. Possible Values are `Array`, `Bool`, `Float`, `Int`, `Object` or `String`.
  final String type;
  /// Specifies the global parameter value.
  ///
  /// > **Note:** For type `Array` and `Object` it is recommended to use `jsonencode()` for the value
  final String value;

  /// Creates a new [FactoryGlobalParameter].
  /// [name] Specifies the global parameter name.
  /// [type] Specifies the global parameter type. Possible Values are `Array`, `Bool`, `Float`, `Int`, `Object` or `String`.
  /// [value] Specifies the global parameter value.
  FactoryGlobalParameter({
    required this.name,
    required this.type,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'type': type,
      'value': value,
    };
  }

  factory FactoryGlobalParameter.fromMap(Map<String, dynamic> map) {
    return FactoryGlobalParameter(
      name: map['name'] as String,
      type: map['type'] as String,
      value: map['value'] as String,
    );
  }
}

