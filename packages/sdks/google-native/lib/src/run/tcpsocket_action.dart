// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// TCPSocketAction describes an action based on opening a socket
class TCPSocketAction {
  /// Not supported by Cloud Run.
  final pulumi.Input<String>? host;

  /// Port number to access on the container. Number must be in the range 1 to 65535.
  final pulumi.Input<int>? port;

  /// Creates a new [TCPSocketAction].
  /// [host] Not supported by Cloud Run.
  /// [port] Port number to access on the container. Number must be in the range 1 to 65535.
  TCPSocketAction({this.host, this.port});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'host': ?host, 'port': ?port};
  }

  factory TCPSocketAction.fromMap(Map<String, dynamic> map) {
    return TCPSocketAction(
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
