// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ServiceTemplateContainerPorts {
  /// Port number the container listens on. This must be a valid TCP port number, 0 < containerPort < 65536.
  final pulumi.Input<int>? containerPort;
  /// If specified, used to specify which protocol to use. Allowed values are "http1" and "h2c".
  final pulumi.Input<String>? name;

  /// Creates a new [ServiceTemplateContainerPorts].
  /// [containerPort] Port number the container listens on. This must be a valid TCP port number, 0 < containerPort < 65536.
  /// [name] If specified, used to specify which protocol to use. Allowed values are "http1" and "h2c".
  ServiceTemplateContainerPorts({
    this.containerPort,
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'containerPort': ?containerPort,
      'name': ?name,
    };
  }

  factory ServiceTemplateContainerPorts.fromMap(Map<String, dynamic> map) {
    return ServiceTemplateContainerPorts(
      containerPort: map['containerPort'] == null ? null : (map['containerPort']! as int).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
    );
  }
}

