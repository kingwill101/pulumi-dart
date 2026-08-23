// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'exec_action.dart';
import 'httpget_action.dart';
import 'tcpsocket_action.dart';

/// Handler defines a specific action that should be taken
class Handler {
  /// One and only one of the following should be specified. Exec specifies the action to take.
  final pulumi.Input<ExecAction>? exec;
  /// HTTPGet specifies the http request to perform.
  final pulumi.Input<HTTPGetAction>? httpGet;
  /// TCPSocket specifies an action involving a TCP port. TCP hooks not yet supported
  final pulumi.Input<TCPSocketAction>? tcpSocket;

  /// Creates a new [Handler].
  /// [exec] One and only one of the following should be specified. Exec specifies the action to take.
  /// [httpGet] HTTPGet specifies the http request to perform.
  /// [tcpSocket] TCPSocket specifies an action involving a TCP port. TCP hooks not yet supported
  const Handler({
    this.exec,
    this.httpGet,
    this.tcpSocket,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'exec': ?pulumi.Input.mapOptionalInputValue<ExecAction, Map<String, dynamic>>(exec, (value) => value.toMap()),
      'httpGet': ?pulumi.Input.mapOptionalInputValue<HTTPGetAction, Map<String, dynamic>>(httpGet, (value) => value.toMap()),
      'tcpSocket': ?pulumi.Input.mapOptionalInputValue<TCPSocketAction, Map<String, dynamic>>(tcpSocket, (value) => value.toMap()),
    };
  }

  factory Handler.fromMap(Map<String, dynamic> map) {
    return Handler(
      exec: (() { final guardedValue = map['exec']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ExecAction.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      httpGet: (() { final guardedValue = map['httpGet']; if (guardedValue == null) return null; return pulumi.Input.fromValue(HTTPGetAction.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      tcpSocket: (() { final guardedValue = map['tcpSocket']; if (guardedValue == null) return null; return pulumi.Input.fromValue(TCPSocketAction.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
