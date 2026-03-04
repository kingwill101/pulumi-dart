// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'exec_action_patch.dart';
import 'grpcaction_patch.dart';
import 'httpget_action_patch.dart';
import 'tcpsocket_action_patch.dart';

/// Probe describes a health check to be performed against a container to determine whether it is alive or ready to receive traffic.
class ProbePatch {
  /// Exec specifies a command to execute in the container.
  final pulumi.Input<ExecActionPatch>? exec;

  /// Minimum consecutive failures for the probe to be considered failed after having succeeded. Defaults to 3. Minimum value is 1.
  final pulumi.Input<int>? failureThreshold;

  /// GRPC specifies a GRPC HealthCheckRequest.
  final pulumi.Input<GRPCActionPatch>? grpc;

  /// HTTPGet specifies an HTTP GET request to perform.
  final pulumi.Input<HTTPGetActionPatch>? httpGet;

  /// Number of seconds after the container has started before liveness probes are initiated. More info: https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle#container-probes
  final pulumi.Input<int>? initialDelaySeconds;

  /// How often (in seconds) to perform the probe. Default to 10 seconds. Minimum value is 1.
  final pulumi.Input<int>? periodSeconds;

  /// Minimum consecutive successes for the probe to be considered successful after having failed. Defaults to 1. Must be 1 for liveness and startup. Minimum value is 1.
  final pulumi.Input<int>? successThreshold;

  /// TCPSocket specifies a connection to a TCP port.
  final pulumi.Input<TCPSocketActionPatch>? tcpSocket;

  /// Optional duration in seconds the pod needs to terminate gracefully upon probe failure. The grace period is the duration in seconds after the processes running in the pod are sent a termination signal and the time when the processes are forcibly halted with a kill signal. Set this value longer than the expected cleanup time for your process. If this value is nil, the pod's terminationGracePeriodSeconds will be used. Otherwise, this value overrides the value provided by the pod spec. Value must be non-negative integer. The value zero indicates stop immediately via the kill signal (no opportunity to shut down). This is a beta field and requires enabling ProbeTerminationGracePeriod feature gate. Minimum value is 1. spec.terminationGracePeriodSeconds is used if unset.
  final pulumi.Input<int>? terminationGracePeriodSeconds;

  /// Number of seconds after which the probe times out. Defaults to 1 second. Minimum value is 1. More info: https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle#container-probes
  final pulumi.Input<int>? timeoutSeconds;

  /// Creates a new [ProbePatch].
  /// [exec] Exec specifies a command to execute in the container.
  /// [failureThreshold] Minimum consecutive failures for the probe to be considered failed after having succeeded. Defaults to 3. Minimum value is 1.
  /// [grpc] GRPC specifies a GRPC HealthCheckRequest.
  /// [httpGet] HTTPGet specifies an HTTP GET request to perform.
  /// [initialDelaySeconds] Number of seconds after the container has started before liveness probes are initiated. More info: https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle#container-probes
  /// [periodSeconds] How often (in seconds) to perform the probe. Default to 10 seconds. Minimum value is 1.
  /// [successThreshold] Minimum consecutive successes for the probe to be considered successful after having failed. Defaults to 1. Must be 1 for liveness and startup. Minimum value is 1.
  /// [tcpSocket] TCPSocket specifies a connection to a TCP port.
  /// [terminationGracePeriodSeconds] Optional duration in seconds the pod needs to terminate gracefully upon probe failure. The grace period is the duration in seconds after the processes running in the pod are sent a termination signal and the time when the processes are forcibly halted with a kill signal. Set this value longer than the expected cleanup time for your process. If this value is nil, the pod's terminationGracePeriodSeconds will be used. Otherwise, this value overrides the value provided by the pod spec. Value must be non-negative integer. The value zero indicates stop immediately via the kill signal (no opportunity to shut down). This is a beta field and requires enabling ProbeTerminationGracePeriod feature gate. Minimum value is 1. spec.terminationGracePeriodSeconds is used if unset.
  /// [timeoutSeconds] Number of seconds after which the probe times out. Defaults to 1 second. Minimum value is 1. More info: https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle#container-probes
  ProbePatch({
    this.exec,
    this.failureThreshold,
    this.grpc,
    this.httpGet,
    this.initialDelaySeconds,
    this.periodSeconds,
    this.successThreshold,
    this.tcpSocket,
    this.terminationGracePeriodSeconds,
    this.timeoutSeconds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'exec':
          ?pulumi.Input.mapOptionalInputValue<
            ExecActionPatch,
            Map<String, dynamic>
          >(exec, (value) => value.toMap()),
      'failureThreshold': ?failureThreshold,
      'grpc':
          ?pulumi.Input.mapOptionalInputValue<
            GRPCActionPatch,
            Map<String, dynamic>
          >(grpc, (value) => value.toMap()),
      'httpGet':
          ?pulumi.Input.mapOptionalInputValue<
            HTTPGetActionPatch,
            Map<String, dynamic>
          >(httpGet, (value) => value.toMap()),
      'initialDelaySeconds': ?initialDelaySeconds,
      'periodSeconds': ?periodSeconds,
      'successThreshold': ?successThreshold,
      'tcpSocket':
          ?pulumi.Input.mapOptionalInputValue<
            TCPSocketActionPatch,
            Map<String, dynamic>
          >(tcpSocket, (value) => value.toMap()),
      'terminationGracePeriodSeconds': ?terminationGracePeriodSeconds,
      'timeoutSeconds': ?timeoutSeconds,
    };
  }

  factory ProbePatch.fromMap(Map<String, dynamic> map) {
    return ProbePatch(
      exec: (() {
        final guardedValue = map['exec'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ExecActionPatch.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      failureThreshold: (() {
        final guardedValue = map['failureThreshold'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      grpc: (() {
        final guardedValue = map['grpc'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          GRPCActionPatch.fromMap(
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
      initialDelaySeconds: (() {
        final guardedValue = map['initialDelaySeconds'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      periodSeconds: (() {
        final guardedValue = map['periodSeconds'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      successThreshold: (() {
        final guardedValue = map['successThreshold'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
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
      terminationGracePeriodSeconds: (() {
        final guardedValue = map['terminationGracePeriodSeconds'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      timeoutSeconds: (() {
        final guardedValue = map['timeoutSeconds'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
    );
  }
}
