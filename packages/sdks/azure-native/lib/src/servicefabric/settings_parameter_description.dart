// ignore_for_file: unused_element, unnecessary_cast


/// Describes a parameter in fabric settings of the cluster.
class SettingsParameterDescription {
  /// The parameter name of fabric setting.
  final String name;
  /// The parameter value of fabric setting.
  final String value;

  /// Creates a new [SettingsParameterDescription].
  /// [name] The parameter name of fabric setting.
  /// [value] The parameter value of fabric setting.
  SettingsParameterDescription({
    required this.name,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'value': value,
    };
  }

  factory SettingsParameterDescription.fromMap(Map<String, dynamic> map) {
    return SettingsParameterDescription(
      name: map['name'] as String,
      value: map['value'] as String,
    );
  }
}

