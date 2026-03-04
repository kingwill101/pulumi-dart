// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// TCPSocketAction describes an action based on opening a socket
class TCPSocketAction {
  /// Optional: Host name to connect to, defaults to the pod IP.
  final pulumi.Input<String>? host;

  /// Number or name of the port to access on the container. Number must be in the range 1 to 65535. Name must be an IANA_SVC_NAME.
  final pulumi.Input<int> port;

  /// Creates a new [TCPSocketAction].
  /// [host] Optional: Host name to connect to, defaults to the pod IP.
  /// [port] Number or name of the port to access on the container. Number must be in the range 1 to 65535. Name must be an IANA_SVC_NAME.
  TCPSocketAction({this.host, required this.port});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'host': ?host, 'port': port};
  }

  factory TCPSocketAction.fromMap(Map<String, dynamic> map) {
    return TCPSocketAction(
      host: (() {
        final guardedValue = map['host'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      port: pulumi.Input.fromValue(map['port'] as int),
    );
  }
}
