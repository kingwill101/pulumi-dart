// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'job_template_template_container_startup_probe_grpc.dart';
import 'job_template_template_container_startup_probe_http_get.dart';
import 'job_template_template_container_startup_probe_tcp_socket.dart';

class JobTemplateTemplateContainerStartupProbe {
  /// Minimum consecutive failures for the probe to be considered failed after
  /// having succeeded. Defaults to 3. Minimum value is 1.
  final pulumi.Input<int?>? failureThreshold;
  /// GRPC specifies an action involving a GRPC port.
  /// Structure is documented below.
  final pulumi.Input<JobTemplateTemplateContainerStartupProbeGrpc?>? grpc;
  /// HttpGet specifies the http request to perform.
  /// Structure is documented below.
  final pulumi.Input<JobTemplateTemplateContainerStartupProbeHttpGet?>? httpGet;
  /// Number of seconds after the container has started before the probe is
  /// initiated.
  /// Defaults to 0 seconds. Minimum value is 0. Maximum value is 240.
  final pulumi.Input<int?>? initialDelaySeconds;
  /// How often (in seconds) to perform the probe.
  /// Default to 10 seconds. Minimum value is 1. Maximum value is 240.
  final pulumi.Input<int?>? periodSeconds;
  /// TcpSocket specifies an action involving a TCP port.
  /// Structure is documented below.
  final pulumi.Input<JobTemplateTemplateContainerStartupProbeTcpSocket?>? tcpSocket;
  /// Number of seconds after which the probe times out.
  /// Defaults to 1 second. Minimum value is 1. Maximum value is 3600.
  /// Must be smaller than periodSeconds.
  final pulumi.Input<int?>? timeoutSeconds;

  /// Creates a new [JobTemplateTemplateContainerStartupProbe].
  /// [failureThreshold] Minimum consecutive failures for the probe to be considered failed after
  /// [grpc] GRPC specifies an action involving a GRPC port.
  /// [httpGet] HttpGet specifies the http request to perform.
  /// [initialDelaySeconds] Number of seconds after the container has started before the probe is
  /// [periodSeconds] How often (in seconds) to perform the probe.
  /// [tcpSocket] TcpSocket specifies an action involving a TCP port.
  /// [timeoutSeconds] Number of seconds after which the probe times out.
  const JobTemplateTemplateContainerStartupProbe({
    this.failureThreshold,
    this.grpc,
    this.httpGet,
    this.initialDelaySeconds,
    this.periodSeconds,
    this.tcpSocket,
    this.timeoutSeconds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'failureThreshold': ?failureThreshold,
      'grpc': ?pulumi.Input.mapOptionalInputValue<JobTemplateTemplateContainerStartupProbeGrpc, Map<String, dynamic>>(grpc, (value) => value.toMap()),
      'httpGet': ?pulumi.Input.mapOptionalInputValue<JobTemplateTemplateContainerStartupProbeHttpGet, Map<String, dynamic>>(httpGet, (value) => value.toMap()),
      'initialDelaySeconds': ?initialDelaySeconds,
      'periodSeconds': ?periodSeconds,
      'tcpSocket': ?pulumi.Input.mapOptionalInputValue<JobTemplateTemplateContainerStartupProbeTcpSocket, Map<String, dynamic>>(tcpSocket, (value) => value.toMap()),
      'timeoutSeconds': ?timeoutSeconds,
    };
  }

  factory JobTemplateTemplateContainerStartupProbe.fromMap(Map<String, dynamic> map) {
    return JobTemplateTemplateContainerStartupProbe(
      failureThreshold: (() { final guardedValue = map['failureThreshold']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      grpc: (() { final guardedValue = map['grpc']; if (guardedValue == null) return null; return pulumi.Input.fromValue(JobTemplateTemplateContainerStartupProbeGrpc.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      httpGet: (() { final guardedValue = map['httpGet']; if (guardedValue == null) return null; return pulumi.Input.fromValue(JobTemplateTemplateContainerStartupProbeHttpGet.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      initialDelaySeconds: (() { final guardedValue = map['initialDelaySeconds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      periodSeconds: (() { final guardedValue = map['periodSeconds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      tcpSocket: (() { final guardedValue = map['tcpSocket']; if (guardedValue == null) return null; return pulumi.Input.fromValue(JobTemplateTemplateContainerStartupProbeTcpSocket.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      timeoutSeconds: (() { final guardedValue = map['timeoutSeconds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
    );
  }
}
