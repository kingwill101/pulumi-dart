// ignore_for_file: unused_element, unnecessary_cast


/// Describes a parameter in fabric settings of the cluster.
class SettingsParameterDescriptionResponse {
  /// The parameter name of fabric setting.
  final String name;
  /// The parameter value of fabric setting.
  final String value;

  /// Creates a new [SettingsParameterDescriptionResponse].
  /// [name] The parameter name of fabric setting.
  /// [value] The parameter value of fabric setting.
  SettingsParameterDescriptionResponse({
    required this.name,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'value': value,
    };
  }

  factory SettingsParameterDescriptionResponse.fromMap(Map<String, dynamic> map) {
    return SettingsParameterDescriptionResponse(
      name: map['name'] as String,
      value: map['value'] as String,
    );
  }
}

