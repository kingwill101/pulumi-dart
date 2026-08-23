// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// TCPSocketAction describes an action based on opening a socket
class GoogleCloudRunV2TCPSocketAction {
  /// Port number to access on the container. Must be in the range 1 to 65535. If not specified, defaults to the exposed port of the container, which is the value of container.ports[0].containerPort.
  final pulumi.Input<int>? port;

  /// Creates a new [GoogleCloudRunV2TCPSocketAction].
  /// [port] Port number to access on the container. Must be in the range 1 to 65535. If not specified, defaults to the exposed port of the container, which is the value of container.ports[0].containerPort.
  const GoogleCloudRunV2TCPSocketAction({
    this.port,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'port': ?port,
    };
  }

  factory GoogleCloudRunV2TCPSocketAction.fromMap(Map<String, dynamic> map) {
    return GoogleCloudRunV2TCPSocketAction(
      port: (() { final guardedValue = map['port']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}
