// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DomainOsInitEnv {
  /// Defines the name of an environment variable to set during domain initialization.
  final pulumi.Input<String> name;
  /// Specifies the value associated with an environment variable for the init process.
  final pulumi.Input<String> value;

  /// Creates a new [DomainOsInitEnv].
  /// [name] Defines the name of an environment variable to set during domain initialization.
  /// [value] Specifies the value associated with an environment variable for the init process.
  const DomainOsInitEnv({
    required this.name,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'value': value,
    };
  }

  factory DomainOsInitEnv.fromMap(Map<String, dynamic> map) {
    return DomainOsInitEnv(
      name: pulumi.Input.fromValue(map['name'] as String),
      value: pulumi.Input.fromValue(map['value'] as String),
    );
  }
}
