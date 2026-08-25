// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_worker_pool_template_container_startup_probe_http_get_http_header.dart';

class GetWorkerPoolTemplateContainerStartupProbeHttpGet {
  /// Optional. Custom headers to set in the request. HTTP allows repeated headers.
  final pulumi.Input<List<GetWorkerPoolTemplateContainerStartupProbeHttpGetHttpHeader>> httpHeaders;
  /// Optional. Path to access on the HTTP server. Defaults to '/'.
  final pulumi.Input<String> path;
  /// Optional. Port number to access on the container. Must be in the range 1 to 65535. If not specified, defaults to the exposed port of the container, which is the value of container.ports[0].containerPort.
  final pulumi.Input<int> port;

  /// Creates a new [GetWorkerPoolTemplateContainerStartupProbeHttpGet].
  /// [httpHeaders] Optional. Custom headers to set in the request. HTTP allows repeated headers.
  /// [path] Optional. Path to access on the HTTP server. Defaults to '/'.
  /// [port] Optional. Port number to access on the container. Must be in the range 1 to 65535. If not specified, defaults to the exposed port of the container, which is the value of container.ports[0].containerPort.
  const GetWorkerPoolTemplateContainerStartupProbeHttpGet({
    required this.httpHeaders,
    required this.path,
    required this.port,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'httpHeaders': pulumi.Input.mapInputValue<List<GetWorkerPoolTemplateContainerStartupProbeHttpGetHttpHeader>, List<Map<String, dynamic>>>(httpHeaders, (value) => pulumi.Input.encodeList<GetWorkerPoolTemplateContainerStartupProbeHttpGetHttpHeader, Map<String, dynamic>>(value, (value) => value.toMap())),
      'path': path,
      'port': port,
    };
  }

  factory GetWorkerPoolTemplateContainerStartupProbeHttpGet.fromMap(Map<String, dynamic> map) {
    return GetWorkerPoolTemplateContainerStartupProbeHttpGet(
      httpHeaders: pulumi.Input.fromValue(pulumi.Input.decodeList<GetWorkerPoolTemplateContainerStartupProbeHttpGetHttpHeader>(map['httpHeaders']!, (value) => GetWorkerPoolTemplateContainerStartupProbeHttpGetHttpHeader.fromMap((value as Map).cast<String, dynamic>()))),
      path: pulumi.Input.fromValue(map['path'] as String),
      port: pulumi.Input.fromValue((map['port'] as num).toInt()),
    );
  }
}
