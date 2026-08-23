// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// ContainerPort represents a network port in a single container.
class ContainerPortResponse {
  /// Port number the container listens on. If present, this must be a valid port number, 0 &lt; x &lt; 65536. If not present, it will default to port 8080. For more information, see https://cloud.google.com/run/docs/container-contract#port
  final pulumi.Input<int> containerPort;
  /// If specified, used to specify which protocol to use. Allowed values are "http1" and "h2c".
  final pulumi.Input<String> name;
  /// Protocol for port. Must be "TCP". Defaults to "TCP".
  final pulumi.Input<String> protocol;

  /// Creates a new [ContainerPortResponse].
  /// [containerPort] Port number the container listens on. If present, this must be a valid port number, 0 &lt; x &lt; 65536. If not present, it will default to port 8080. For more information, see https://cloud.google.com/run/docs/container-contract#port
  /// [name] If specified, used to specify which protocol to use. Allowed values are "http1" and "h2c".
  /// [protocol] Protocol for port. Must be "TCP". Defaults to "TCP".
  const ContainerPortResponse({
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

  factory ContainerPortResponse.fromMap(Map<String, dynamic> map) {
    return ContainerPortResponse(
      containerPort: pulumi.Input.fromValue(map['containerPort'] as int),
      name: pulumi.Input.fromValue(map['name'] as String),
      protocol: pulumi.Input.fromValue(map['protocol'] as String),
    );
  }
}
