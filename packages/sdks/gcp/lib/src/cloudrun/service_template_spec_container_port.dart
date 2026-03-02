// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ServiceTemplateSpecContainerPort {
  /// Port number the container listens on. This must be a valid port number (between 1 and 65535). Defaults to "8080".
  final pulumi.Input<int>? containerPort;
  /// If specified, used to specify which protocol to use. Allowed values are "http1" (HTTP/1) and "h2c" (HTTP/2 end-to-end). Defaults to "http1".
  final pulumi.Input<String>? name;
  /// Protocol for port. Must be "TCP". Defaults to "TCP".
  final pulumi.Input<String>? protocol;

  /// Creates a new [ServiceTemplateSpecContainerPort].
  /// [containerPort] Port number the container listens on. This must be a valid port number (between 1 and 65535). Defaults to "8080".
  /// [name] If specified, used to specify which protocol to use. Allowed values are "http1" (HTTP/1) and "h2c" (HTTP/2 end-to-end). Defaults to "http1".
  /// [protocol] Protocol for port. Must be "TCP". Defaults to "TCP".
  ServiceTemplateSpecContainerPort({
    this.containerPort,
    this.name,
    this.protocol,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'containerPort': ?containerPort,
      'name': ?name,
      'protocol': ?protocol,
    };
  }

  factory ServiceTemplateSpecContainerPort.fromMap(Map<String, dynamic> map) {
    return ServiceTemplateSpecContainerPort(
      containerPort: map['containerPort'] == null ? null : (map['containerPort'] as int).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      protocol: map['protocol'] == null ? null : (map['protocol'] as String).input(),
    );
  }
}

