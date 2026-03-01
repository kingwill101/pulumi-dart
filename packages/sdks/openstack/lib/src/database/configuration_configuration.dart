// ignore_for_file: unused_element, unnecessary_cast


class ConfigurationConfiguration {
  /// Configuration parameter name. Changing this creates a new resource.
  final String name;
  /// Whether or not to store configuration parameter value as string. Changing this creates a new resource. See the below note for more information.
  final bool? stringType;
  /// Configuration parameter value. Changing this creates a new resource.
  final String value;

  /// Creates a new [ConfigurationConfiguration].
  /// [name] Configuration parameter name. Changing this creates a new resource.
  /// [stringType] Whether or not to store configuration parameter value as string. Changing this creates a new resource. See the below note for more information.
  /// [value] Configuration parameter value. Changing this creates a new resource.
  ConfigurationConfiguration({
    required this.name,
    this.stringType,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'stringType': ?stringType,
      'value': value,
    };
  }

  factory ConfigurationConfiguration.fromMap(Map<String, dynamic> map) {
    return ConfigurationConfiguration(
      name: map['name'] as String,
      stringType: map['stringType'] == null ? null : map['stringType'] as bool,
      value: map['value'] as String,
    );
  }
}

