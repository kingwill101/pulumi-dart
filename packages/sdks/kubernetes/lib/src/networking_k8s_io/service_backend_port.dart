// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// ServiceBackendPort is the service port being referenced.
class ServiceBackendPort {
  /// name is the name of the port on the Service. This is a mutually exclusive setting with "Number".
  final pulumi.Input<String>? name;
  /// number is the numerical port number (e.g. 80) on the Service. This is a mutually exclusive setting with "Name".
  final pulumi.Input<int>? number;

  /// Creates a new [ServiceBackendPort].
  /// [name] name is the name of the port on the Service. This is a mutually exclusive setting with "Number".
  /// [number] number is the numerical port number (e.g. 80) on the Service. This is a mutually exclusive setting with "Name".
  ServiceBackendPort({
    this.name,
    this.number,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'number': ?number,
    };
  }

  factory ServiceBackendPort.fromMap(Map<String, dynamic> map) {
    return ServiceBackendPort(
      name: map['name'] == null ? null : (map['name'] as String).input(),
      number: map['number'] == null ? null : (map['number'] as int).input(),
    );
  }
}

