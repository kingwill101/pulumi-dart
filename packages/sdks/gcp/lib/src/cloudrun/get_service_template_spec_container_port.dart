// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetServiceTemplateSpecContainerPort {
  /// Port number the container listens on. This must be a valid port number (between 1 and 65535). Defaults to "8080".
  final pulumi.Input<int> containerPort;
  /// Name must be unique within a Google Cloud project and region.
  /// Is required when creating resources. Name is primarily intended
  /// for creation idempotence and configuration definition. Cannot be updated.
  /// More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/names/#names
  final pulumi.Input<String> name;
  /// Protocol for port. Must be "TCP". Defaults to "TCP".
  final pulumi.Input<String> protocol;

  /// Creates a new [GetServiceTemplateSpecContainerPort].
  /// [containerPort] Port number the container listens on. This must be a valid port number (between 1 and 65535). Defaults to "8080".
  /// [name] Name must be unique within a Google Cloud project and region.
  /// [protocol] Protocol for port. Must be "TCP". Defaults to "TCP".
  const GetServiceTemplateSpecContainerPort({
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
      containerPort: pulumi.Input.fromValue((map['containerPort'] as num).toInt()),
      name: pulumi.Input.fromValue(map['name'] as String),
      protocol: pulumi.Input.fromValue(map['protocol'] as String),
    );
  }
}
