// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'job_template_template_container_startup_probe_grpc.dart';
import 'job_template_template_container_startup_probe_http_get.dart';
import 'job_template_template_container_startup_probe_tcp_socket.dart';

class JobTemplateTemplateContainerStartupProbe {
  /// Minimum consecutive failures for the probe to be considered failed after
  /// having succeeded. Defaults to 3. Minimum value is 1.
  final pulumi.Input<int>? failureThreshold;
  /// GRPC specifies an action involving a GRPC port.
  /// Structure is documented below.
  final pulumi.Input<JobTemplateTemplateContainerStartupProbeGrpc>? grpc;
  /// HttpGet specifies the http request to perform.
  /// Structure is documented below.
  final pulumi.Input<JobTemplateTemplateContainerStartupProbeHttpGet>? httpGet;
  /// Number of seconds after the container has started before the probe is
  /// initiated.
  /// Defaults to 0 seconds. Minimum value is 0. Maximum value is 240.
  final pulumi.Input<int>? initialDelaySeconds;
  /// How often (in seconds) to perform the probe.
  /// Default to 10 seconds. Minimum value is 1. Maximum value is 240.
  final pulumi.Input<int>? periodSeconds;
  /// TcpSocket specifies an action involving a TCP port.
  /// Structure is documented below.
  final pulumi.Input<JobTemplateTemplateContainerStartupProbeTcpSocket>? tcpSocket;
  /// Number of seconds after which the probe times out.
  /// Defaults to 1 second. Minimum value is 1. Maximum value is 3600.
  /// Must be smaller than periodSeconds.
  final pulumi.Input<int>? timeoutSeconds;

  /// Creates a new [JobTemplateTemplateContainerStartupProbe].
  /// [failureThreshold] Minimum consecutive failures for the probe to be considered failed after
  /// [grpc] GRPC specifies an action involving a GRPC port.
  /// [httpGet] HttpGet specifies the http request to perform.
  /// [initialDelaySeconds] Number of seconds after the container has started before the probe is
  /// [periodSeconds] How often (in seconds) to perform the probe.
  /// [tcpSocket] TcpSocket specifies an action involving a TCP port.
  /// [timeoutSeconds] Number of seconds after which the probe times out.
  JobTemplateTemplateContainerStartupProbe({
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
      failureThreshold: map['failureThreshold'] == null ? null : (map['failureThreshold']! as int).input(),
      grpc: map['grpc'] == null ? null : (JobTemplateTemplateContainerStartupProbeGrpc.fromMap((map['grpc']! as Map).cast<String, dynamic>())).input(),
      httpGet: map['httpGet'] == null ? null : (JobTemplateTemplateContainerStartupProbeHttpGet.fromMap((map['httpGet']! as Map).cast<String, dynamic>())).input(),
      initialDelaySeconds: map['initialDelaySeconds'] == null ? null : (map['initialDelaySeconds']! as int).input(),
      periodSeconds: map['periodSeconds'] == null ? null : (map['periodSeconds']! as int).input(),
      tcpSocket: map['tcpSocket'] == null ? null : (JobTemplateTemplateContainerStartupProbeTcpSocket.fromMap((map['tcpSocket']! as Map).cast<String, dynamic>())).input(),
      timeoutSeconds: map['timeoutSeconds'] == null ? null : (map['timeoutSeconds']! as int).input(),
    );
  }
}

