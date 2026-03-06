// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'exec_action_patch.dart';
import 'httpget_action_patch.dart';
import 'tcpsocket_action_patch.dart';

/// Handler defines a specific action that should be taken
class HandlerPatch {
  /// One and only one of the following should be specified. Exec specifies the action to take.
  final pulumi.Input<ExecActionPatch>? exec;
  /// HTTPGet specifies the http request to perform.
  final pulumi.Input<HTTPGetActionPatch>? httpGet;
  /// TCPSocket specifies an action involving a TCP port. TCP hooks not yet supported
  final pulumi.Input<TCPSocketActionPatch>? tcpSocket;

  /// Creates a new [HandlerPatch].
  /// [exec] One and only one of the following should be specified. Exec specifies the action to take.
  /// [httpGet] HTTPGet specifies the http request to perform.
  /// [tcpSocket] TCPSocket specifies an action involving a TCP port. TCP hooks not yet supported
  const HandlerPatch({
    this.exec,
    this.httpGet,
    this.tcpSocket,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'exec': ?pulumi.Input.mapOptionalInputValue<ExecActionPatch, Map<String, dynamic>>(exec, (value) => value.toMap()),
      'httpGet': ?pulumi.Input.mapOptionalInputValue<HTTPGetActionPatch, Map<String, dynamic>>(httpGet, (value) => value.toMap()),
      'tcpSocket': ?pulumi.Input.mapOptionalInputValue<TCPSocketActionPatch, Map<String, dynamic>>(tcpSocket, (value) => value.toMap()),
    };
  }

  factory HandlerPatch.fromMap(Map<String, dynamic> map) {
    return HandlerPatch(
      exec: (() { final guardedValue = map['exec']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ExecActionPatch.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      httpGet: (() { final guardedValue = map['httpGet']; if (guardedValue == null) return null; return pulumi.Input.fromValue(HTTPGetActionPatch.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      tcpSocket: (() { final guardedValue = map['tcpSocket']; if (guardedValue == null) return null; return pulumi.Input.fromValue(TCPSocketActionPatch.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

