// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'service_template_spec_container_liveness_probe_http_get_http_header.dart';

class ServiceTemplateSpecContainerLivenessProbeHttpGet {
  /// Custom headers to set in the request. HTTP allows repeated headers.
  /// Structure is documented below.
  final List<ServiceTemplateSpecContainerLivenessProbeHttpGetHttpHeader>? httpHeaders;
  /// Path to access on the HTTP server. If set, it should not be empty string.
  final String? path;
  /// Port number to access on the container. Number must be in the range 1 to 65535.
  /// If not specified, defaults to the same value as container.ports[0].containerPort.
  final int? port;

  /// Creates a new [ServiceTemplateSpecContainerLivenessProbeHttpGet].
  /// [httpHeaders] Custom headers to set in the request. HTTP allows repeated headers.
  /// [path] Path to access on the HTTP server. If set, it should not be empty string.
  /// [port] Port number to access on the container. Number must be in the range 1 to 65535.
  ServiceTemplateSpecContainerLivenessProbeHttpGet({
    this.httpHeaders,
    this.path,
    this.port,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'httpHeaders': ?httpHeaders == null ? null : pulumi.Input.encodeList<ServiceTemplateSpecContainerLivenessProbeHttpGetHttpHeader, Map<String, dynamic>>(httpHeaders!, (value) => value.toMap()),
      'path': ?path,
      'port': ?port,
    };
  }

  factory ServiceTemplateSpecContainerLivenessProbeHttpGet.fromMap(Map<String, dynamic> map) {
    return ServiceTemplateSpecContainerLivenessProbeHttpGet(
      httpHeaders: map['httpHeaders'] == null ? null : pulumi.Input.decodeList<ServiceTemplateSpecContainerLivenessProbeHttpGetHttpHeader>(map['httpHeaders'], (value) => ServiceTemplateSpecContainerLivenessProbeHttpGetHttpHeader.fromMap((value as Map).cast<String, dynamic>())),
      path: map['path'] == null ? null : map['path'] as String,
      port: map['port'] == null ? null : map['port'] as int,
    );
  }
}

