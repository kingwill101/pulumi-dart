// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// TCPSocketAction describes an action based on opening a socket
class GoogleCloudRunV2TCPSocketActionResponse {
  /// Port number to access on the container. Must be in the range 1 to 65535. If not specified, defaults to the exposed port of the container, which is the value of container.ports[0].containerPort.
  final pulumi.Input<int> port;

  /// Creates a new [GoogleCloudRunV2TCPSocketActionResponse].
  /// [port] Port number to access on the container. Must be in the range 1 to 65535. If not specified, defaults to the exposed port of the container, which is the value of container.ports[0].containerPort.
  const GoogleCloudRunV2TCPSocketActionResponse({
    required this.port,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'port': port,
    };
  }

  factory GoogleCloudRunV2TCPSocketActionResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudRunV2TCPSocketActionResponse(
      port: pulumi.Input.fromValue(map['port'] as int),
    );
  }
}

