// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class SpringbootappsPropertiesApplicationConfigurations {
  /// The application config file name.
  final pulumi.Input<String> key;
  /// The application config file content, only contains config keys.
  final pulumi.Input<String>? value;

  /// Creates a new [SpringbootappsPropertiesApplicationConfigurations].
  /// [key] The application config file name.
  /// [value] The application config file content, only contains config keys.
  SpringbootappsPropertiesApplicationConfigurations({
    required this.key,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'key': key,
      'value': ?value,
    };
  }

  factory SpringbootappsPropertiesApplicationConfigurations.fromMap(Map<String, dynamic> map) {
    return SpringbootappsPropertiesApplicationConfigurations(
      key: (map['key'] as String).input(),
      value: map['value'] == null ? null : (map['value']! as String).input(),
    );
  }
}

