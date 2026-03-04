// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'service_template_container_liveness_probe_http_get_http_header.dart';

class ServiceTemplateContainerLivenessProbeHttpGet {
  /// Custom headers to set in the request. HTTP allows repeated headers.
  /// Structure is documented below.
  final pulumi.Input<
    List<ServiceTemplateContainerLivenessProbeHttpGetHttpHeader>
  >?
  httpHeaders;

  /// Path to access on the HTTP server. Defaults to '/'.
  final pulumi.Input<String>? path;

  /// Port number to access on the container. Must be in the range 1 to 65535.
  /// If not specified, defaults to the same value as container.ports[0].containerPort.
  final pulumi.Input<int>? port;

  /// Creates a new [ServiceTemplateContainerLivenessProbeHttpGet].
  /// [httpHeaders] Custom headers to set in the request. HTTP allows repeated headers.
  /// [path] Path to access on the HTTP server. Defaults to '/'.
  /// [port] Port number to access on the container. Must be in the range 1 to 65535.
  ServiceTemplateContainerLivenessProbeHttpGet({
    this.httpHeaders,
    this.path,
    this.port,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'httpHeaders':
          ?pulumi.Input.mapOptionalInputValue<
            List<ServiceTemplateContainerLivenessProbeHttpGetHttpHeader>,
            List<Map<String, dynamic>>
          >(
            httpHeaders,
            (value) =>
                pulumi.Input.encodeList<
                  ServiceTemplateContainerLivenessProbeHttpGetHttpHeader,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'path': ?path,
      'port': ?port,
    };
  }

  factory ServiceTemplateContainerLivenessProbeHttpGet.fromMap(
    Map<String, dynamic> map,
  ) {
    return ServiceTemplateContainerLivenessProbeHttpGet(
      httpHeaders: (() {
        final guardedValue = map['httpHeaders'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<
            ServiceTemplateContainerLivenessProbeHttpGetHttpHeader
          >(
            guardedValue,
            (value) =>
                ServiceTemplateContainerLivenessProbeHttpGetHttpHeader.fromMap(
                  (value as Map).cast<String, dynamic>(),
                ),
          ),
        );
      })(),
      path: (() {
        final guardedValue = map['path'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      port: (() {
        final guardedValue = map['port'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
    );
  }
}
