// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_service_template_spec_container_startup_probe_http_get_http_header.dart';

class GetServiceTemplateSpecContainerStartupProbeHttpGet {
  /// Custom headers to set in the request. HTTP allows repeated headers.
  final pulumi.Input<List<GetServiceTemplateSpecContainerStartupProbeHttpGetHttpHeader>> httpHeaders;
  /// Path to access on the HTTP server. If set, it should not be empty string.
  final pulumi.Input<String> path;
  /// Port number to access on the container. Number must be in the range 1 to 65535.
  /// If not specified, defaults to the same value as container.ports[0].containerPort.
  final pulumi.Input<int> port;

  /// Creates a new [GetServiceTemplateSpecContainerStartupProbeHttpGet].
  /// [httpHeaders] Custom headers to set in the request. HTTP allows repeated headers.
  /// [path] Path to access on the HTTP server. If set, it should not be empty string.
  /// [port] Port number to access on the container. Number must be in the range 1 to 65535.
  const GetServiceTemplateSpecContainerStartupProbeHttpGet({
    required this.httpHeaders,
    required this.path,
    required this.port,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'httpHeaders': pulumi.Input.mapInputValue<List<GetServiceTemplateSpecContainerStartupProbeHttpGetHttpHeader>, List<Map<String, dynamic>>>(httpHeaders, (value) => pulumi.Input.encodeList<GetServiceTemplateSpecContainerStartupProbeHttpGetHttpHeader, Map<String, dynamic>>(value, (value) => value.toMap())),
      'path': path,
      'port': port,
    };
  }

  factory GetServiceTemplateSpecContainerStartupProbeHttpGet.fromMap(Map<String, dynamic> map) {
    return GetServiceTemplateSpecContainerStartupProbeHttpGet(
      httpHeaders: pulumi.Input.fromValue(pulumi.Input.decodeList<GetServiceTemplateSpecContainerStartupProbeHttpGetHttpHeader>(map['httpHeaders']!, (value) => GetServiceTemplateSpecContainerStartupProbeHttpGetHttpHeader.fromMap((value as Map).cast<String, dynamic>()))),
      path: pulumi.Input.fromValue(map['path'] as String),
      port: pulumi.Input.fromValue(map['port'] as int),
    );
  }
}
