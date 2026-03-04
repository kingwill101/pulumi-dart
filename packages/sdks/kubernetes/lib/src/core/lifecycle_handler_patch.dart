// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'exec_action_patch.dart';
import 'httpget_action_patch.dart';
import 'sleep_action_patch.dart';
import 'tcpsocket_action_patch.dart';

/// LifecycleHandler defines a specific action that should be taken in a lifecycle hook. One and only one of the fields, except TCPSocket must be specified.
class LifecycleHandlerPatch {
  /// Exec specifies a command to execute in the container.
  final pulumi.Input<ExecActionPatch>? exec;

  /// HTTPGet specifies an HTTP GET request to perform.
  final pulumi.Input<HTTPGetActionPatch>? httpGet;

  /// Sleep represents a duration that the container should sleep.
  final pulumi.Input<SleepActionPatch>? sleep;

  /// Deprecated. TCPSocket is NOT supported as a LifecycleHandler and kept for backward compatibility. There is no validation of this field and lifecycle hooks will fail at runtime when it is specified.
  final pulumi.Input<TCPSocketActionPatch>? tcpSocket;

  /// Creates a new [LifecycleHandlerPatch].
  /// [exec] Exec specifies a command to execute in the container.
  /// [httpGet] HTTPGet specifies an HTTP GET request to perform.
  /// [sleep] Sleep represents a duration that the container should sleep.
  /// [tcpSocket] Deprecated. TCPSocket is NOT supported as a LifecycleHandler and kept for backward compatibility. There is no validation of this field and lifecycle hooks will fail at runtime when it is specified.
  LifecycleHandlerPatch({this.exec, this.httpGet, this.sleep, this.tcpSocket});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'exec':
          ?pulumi.Input.mapOptionalInputValue<
            ExecActionPatch,
            Map<String, dynamic>
          >(exec, (value) => value.toMap()),
      'httpGet':
          ?pulumi.Input.mapOptionalInputValue<
            HTTPGetActionPatch,
            Map<String, dynamic>
          >(httpGet, (value) => value.toMap()),
      'sleep':
          ?pulumi.Input.mapOptionalInputValue<
            SleepActionPatch,
            Map<String, dynamic>
          >(sleep, (value) => value.toMap()),
      'tcpSocket':
          ?pulumi.Input.mapOptionalInputValue<
            TCPSocketActionPatch,
            Map<String, dynamic>
          >(tcpSocket, (value) => value.toMap()),
    };
  }

  factory LifecycleHandlerPatch.fromMap(Map<String, dynamic> map) {
    return LifecycleHandlerPatch(
      exec: (() {
        final guardedValue = map['exec'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ExecActionPatch.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      httpGet: (() {
        final guardedValue = map['httpGet'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          HTTPGetActionPatch.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      sleep: (() {
        final guardedValue = map['sleep'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          SleepActionPatch.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      tcpSocket: (() {
        final guardedValue = map['tcpSocket'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          TCPSocketActionPatch.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
    );
  }
}
