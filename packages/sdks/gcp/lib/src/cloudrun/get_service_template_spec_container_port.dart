// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetServiceTemplateSpecContainerPort {
  /// Port number the container listens on. This must be a valid port number (between 1 and 65535). Defaults to "8080".
  final pulumi.Input<int> containerPort;
  /// The name of the Cloud Run Service.
  final pulumi.Input<String> name;
  /// Protocol for port. Must be "TCP". Defaults to "TCP".
  final pulumi.Input<String> protocol;

  /// Creates a new [GetServiceTemplateSpecContainerPort].
  /// [containerPort] Port number the container listens on. This must be a valid port number (between 1 and 65535). Defaults to "8080".
  /// [name] The name of the Cloud Run Service.
  /// [protocol] Protocol for port. Must be "TCP". Defaults to "TCP".
  GetServiceTemplateSpecContainerPort({
    required this.containerPort,
    required this.name,
    required this.protocol,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'containerPort': containerPort,
      'name': name,
      'protocol': protocol,
    };
  }

  factory GetServiceTemplateSpecContainerPort.fromMap(Map<String, dynamic> map) {
    return GetServiceTemplateSpecContainerPort(
      containerPort: pulumi.Input.fromValue(map['containerPort'] as int),
      name: pulumi.Input.fromValue(map['name'] as String),
      protocol: pulumi.Input.fromValue(map['protocol'] as String),
    );
  }
}

