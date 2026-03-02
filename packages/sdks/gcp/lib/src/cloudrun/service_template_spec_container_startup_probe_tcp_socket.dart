// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ServiceTemplateSpecContainerStartupProbeTcpSocket {
  /// Port number to access on the container. Number must be in the range 1 to 65535.
  /// If not specified, defaults to the same value as container.ports[0].containerPort.
  final pulumi.Input<int>? port;

  /// Creates a new [ServiceTemplateSpecContainerStartupProbeTcpSocket].
  /// [port] Port number to access on the container. Number must be in the range 1 to 65535.
  ServiceTemplateSpecContainerStartupProbeTcpSocket({
    this.port,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'port': ?port,
    };
  }

  factory ServiceTemplateSpecContainerStartupProbeTcpSocket.fromMap(Map<String, dynamic> map) {
    return ServiceTemplateSpecContainerStartupProbeTcpSocket(
      port: map['port'] == null ? null : (map['port'] as int).input(),
    );
  }
}

