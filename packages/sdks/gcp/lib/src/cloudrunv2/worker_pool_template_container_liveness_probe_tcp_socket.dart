// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class WorkerPoolTemplateContainerLivenessProbeTcpSocket {
  /// Optional. Port number to access on the container. Must be in the range 1 to 65535. If not specified, defaults to the exposed port of the container, which is the value of container.ports[0].containerPort.
  final pulumi.Input<int>? port;

  /// Creates a new [WorkerPoolTemplateContainerLivenessProbeTcpSocket].
  /// [port] Optional. Port number to access on the container. Must be in the range 1 to 65535. If not specified, defaults to the exposed port of the container, which is the value of container.ports[0].containerPort.
  WorkerPoolTemplateContainerLivenessProbeTcpSocket({
    this.port,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'port': ?port,
    };
  }

  factory WorkerPoolTemplateContainerLivenessProbeTcpSocket.fromMap(Map<String, dynamic> map) {
    return WorkerPoolTemplateContainerLivenessProbeTcpSocket(
      port: map['port'] == null ? null : (map['port']! as int).input(),
    );
  }
}

