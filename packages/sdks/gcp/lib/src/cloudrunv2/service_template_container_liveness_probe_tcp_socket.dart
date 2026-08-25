// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ServiceTemplateContainerLivenessProbeTcpSocket {
  /// Port number to access on the container. Must be in the range 1 to 65535.
  /// If not specified, defaults to the same value as container.ports[0].containerPort.
  final pulumi.Input<int> port;

  /// Creates a new [ServiceTemplateContainerLivenessProbeTcpSocket].
  /// [port] Port number to access on the container. Must be in the range 1 to 65535.
  const ServiceTemplateContainerLivenessProbeTcpSocket({
    required this.port,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'port': port,
    };
  }

  factory ServiceTemplateContainerLivenessProbeTcpSocket.fromMap(Map<String, dynamic> map) {
    return ServiceTemplateContainerLivenessProbeTcpSocket(
      port: pulumi.Input.fromValue((map['port'] as num).toInt()),
    );
  }
}
