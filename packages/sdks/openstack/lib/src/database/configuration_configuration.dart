// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ConfigurationConfiguration {
  /// Configuration parameter name. Changing this creates a new resource.
  final pulumi.Input<String> name;
  /// Whether or not to store configuration parameter value as string. Changing this creates a new resource. See the below note for more information.
  final pulumi.Input<bool>? stringType;
  /// Configuration parameter value. Changing this creates a new resource.
  final pulumi.Input<String> value;

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
      name: (map['name'] as String).input(),
      stringType: map['stringType'] == null ? null : (map['stringType']! as bool).input(),
      value: (map['value'] as String).input(),
    );
  }
}

