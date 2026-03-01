// ignore_for_file: unused_element, unnecessary_cast


/// Parameter to pass to ARM template
class ArmTemplateParameter {
  /// name of the parameter.
  final String? name;
  /// value for the parameter. In Jtoken
  final String? value;

  /// Creates a new [ArmTemplateParameter].
  /// [name] name of the parameter.
  /// [value] value for the parameter. In Jtoken
  ArmTemplateParameter({
    this.name,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'value': ?value,
    };
  }

  factory ArmTemplateParameter.fromMap(Map<String, dynamic> map) {
    return ArmTemplateParameter(
      name: map['name'] == null ? null : map['name'] as String,
      value: map['value'] == null ? null : map['value'] as String,
    );
  }
}

