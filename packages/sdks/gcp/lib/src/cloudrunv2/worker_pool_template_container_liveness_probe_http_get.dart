// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'worker_pool_template_container_liveness_probe_http_get_http_header.dart';

class WorkerPoolTemplateContainerLivenessProbeHttpGet {
  /// Optional. Custom headers to set in the request. HTTP allows repeated headers.
  /// Structure is documented below.
  final pulumi.Input<List<WorkerPoolTemplateContainerLivenessProbeHttpGetHttpHeader>?>? httpHeaders;
  /// Optional. Path to access on the HTTP server. Defaults to '/'.
  final pulumi.Input<String?>? path;
  /// Optional. Port number to access on the container. Must be in the range 1 to 65535. If not specified, defaults to the exposed port of the container, which is the value of container.ports[0].containerPort.
  final pulumi.Input<int?>? port;

  /// Creates a new [WorkerPoolTemplateContainerLivenessProbeHttpGet].
  /// [httpHeaders] Optional. Custom headers to set in the request. HTTP allows repeated headers.
  /// [path] Optional. Path to access on the HTTP server. Defaults to '/'.
  /// [port] Optional. Port number to access on the container. Must be in the range 1 to 65535. If not specified, defaults to the exposed port of the container, which is the value of container.ports[0].containerPort.
  const WorkerPoolTemplateContainerLivenessProbeHttpGet({
    this.httpHeaders,
    this.path,
    this.port,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'httpHeaders': ?pulumi.Input.mapOptionalInputValue<List<WorkerPoolTemplateContainerLivenessProbeHttpGetHttpHeader>, List<Map<String, dynamic>>>(httpHeaders, (value) => pulumi.Input.encodeList<WorkerPoolTemplateContainerLivenessProbeHttpGetHttpHeader, Map<String, dynamic>>(value, (value) => value.toMap())),
      'path': ?path,
      'port': ?port,
    };
  }

  factory WorkerPoolTemplateContainerLivenessProbeHttpGet.fromMap(Map<String, dynamic> map) {
    return WorkerPoolTemplateContainerLivenessProbeHttpGet(
      httpHeaders: (() { final guardedValue = map['httpHeaders']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<WorkerPoolTemplateContainerLivenessProbeHttpGetHttpHeader>(guardedValue, (value) => WorkerPoolTemplateContainerLivenessProbeHttpGetHttpHeader.fromMap((value as Map).cast<String, dynamic>()))); })(),
      path: (() { final guardedValue = map['path']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      port: (() { final guardedValue = map['port']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
    );
  }
}
