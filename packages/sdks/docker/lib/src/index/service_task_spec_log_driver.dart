// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ServiceTaskSpecLogDriver {
  /// The logging driver to use
  final pulumi.Input<String> name;
  /// The options for the logging driver
  final pulumi.Input<Map<String, String>>? options;

  /// Creates a new [ServiceTaskSpecLogDriver].
  /// [name] The logging driver to use
  /// [options] The options for the logging driver
  ServiceTaskSpecLogDriver({
    required this.name,
    this.options,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'options': ?options,
    };
  }

  factory ServiceTaskSpecLogDriver.fromMap(Map<String, dynamic> map) {
    return ServiceTaskSpecLogDriver(
      name: pulumi.Input.fromValue(map['name'] as String),
      options: (() { final guardedValue = map['options']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}

