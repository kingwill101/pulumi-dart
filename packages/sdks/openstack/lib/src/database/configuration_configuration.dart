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
      name: pulumi.Input.fromValue(map['name'] as String),
      stringType: (() {
        final guardedValue = map['stringType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      value: pulumi.Input.fromValue(map['value'] as String),
    );
  }
}
