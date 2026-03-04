// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'exec_action.dart';
import 'httpget_action.dart';
import 'sleep_action.dart';
import 'tcpsocket_action.dart';

/// LifecycleHandler defines a specific action that should be taken in a lifecycle hook. One and only one of the fields, except TCPSocket must be specified.
class LifecycleHandler {
  /// Exec specifies a command to execute in the container.
  final pulumi.Input<ExecAction>? exec;

  /// HTTPGet specifies an HTTP GET request to perform.
  final pulumi.Input<HTTPGetAction>? httpGet;

  /// Sleep represents a duration that the container should sleep.
  final pulumi.Input<SleepAction>? sleep;

  /// Deprecated. TCPSocket is NOT supported as a LifecycleHandler and kept for backward compatibility. There is no validation of this field and lifecycle hooks will fail at runtime when it is specified.
  final pulumi.Input<TCPSocketAction>? tcpSocket;

  /// Creates a new [LifecycleHandler].
  /// [exec] Exec specifies a command to execute in the container.
  /// [httpGet] HTTPGet specifies an HTTP GET request to perform.
  /// [sleep] Sleep represents a duration that the container should sleep.
  /// [tcpSocket] Deprecated. TCPSocket is NOT supported as a LifecycleHandler and kept for backward compatibility. There is no validation of this field and lifecycle hooks will fail at runtime when it is specified.
  LifecycleHandler({this.exec, this.httpGet, this.sleep, this.tcpSocket});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'exec':
          ?pulumi.Input.mapOptionalInputValue<ExecAction, Map<String, dynamic>>(
            exec,
            (value) => value.toMap(),
          ),
      'httpGet':
          ?pulumi.Input.mapOptionalInputValue<
            HTTPGetAction,
            Map<String, dynamic>
          >(httpGet, (value) => value.toMap()),
      'sleep':
          ?pulumi.Input.mapOptionalInputValue<
            SleepAction,
            Map<String, dynamic>
          >(sleep, (value) => value.toMap()),
      'tcpSocket':
          ?pulumi.Input.mapOptionalInputValue<
            TCPSocketAction,
            Map<String, dynamic>
          >(tcpSocket, (value) => value.toMap()),
    };
  }

  factory LifecycleHandler.fromMap(Map<String, dynamic> map) {
    return LifecycleHandler(
      exec: (() {
        final guardedValue = map['exec'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ExecAction.fromMap((guardedValue as Map).cast<String, dynamic>()),
        );
      })(),
      httpGet: (() {
        final guardedValue = map['httpGet'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          HTTPGetAction.fromMap((guardedValue as Map).cast<String, dynamic>()),
        );
      })(),
      sleep: (() {
        final guardedValue = map['sleep'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          SleepAction.fromMap((guardedValue as Map).cast<String, dynamic>()),
        );
      })(),
      tcpSocket: (() {
        final guardedValue = map['tcpSocket'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          TCPSocketAction.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
    );
  }
}
