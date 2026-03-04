// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// TCPSocketAction describes an action based on opening a socket
class TCPSocketActionPatch {
  /// Optional: Host name to connect to, defaults to the pod IP.
  final pulumi.Input<String>? host;

  /// Number or name of the port to access on the container. Number must be in the range 1 to 65535. Name must be an IANA_SVC_NAME.
  final pulumi.Input<int>? port;

  /// Creates a new [TCPSocketActionPatch].
  /// [host] Optional: Host name to connect to, defaults to the pod IP.
  /// [port] Number or name of the port to access on the container. Number must be in the range 1 to 65535. Name must be an IANA_SVC_NAME.
  TCPSocketActionPatch({this.host, this.port});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'host': ?host, 'port': ?port};
  }

  factory TCPSocketActionPatch.fromMap(Map<String, dynamic> map) {
    return TCPSocketActionPatch(
      host: (() {
        final guardedValue = map['host'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      port: (() {
        final guardedValue = map['port'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
    );
  }
}
