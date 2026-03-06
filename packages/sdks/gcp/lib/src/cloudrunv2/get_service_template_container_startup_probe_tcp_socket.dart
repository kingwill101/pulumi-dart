// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetServiceTemplateContainerStartupProbeTcpSocket {
  /// Port number to access on the container. Must be in the range 1 to 65535.
  /// If not specified, defaults to the same value as container.ports[0].containerPort.
  final pulumi.Input<int> port;

  /// Creates a new [GetServiceTemplateContainerStartupProbeTcpSocket].
  /// [port] Port number to access on the container. Must be in the range 1 to 65535.
  const GetServiceTemplateContainerStartupProbeTcpSocket({
    required this.port,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'port': port,
    };
  }

  factory GetServiceTemplateContainerStartupProbeTcpSocket.fromMap(Map<String, dynamic> map) {
    return GetServiceTemplateContainerStartupProbeTcpSocket(
      port: pulumi.Input.fromValue(map['port'] as int),
    );
  }
}

