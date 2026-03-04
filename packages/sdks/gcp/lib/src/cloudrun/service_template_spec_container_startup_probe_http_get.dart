// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'service_template_spec_container_startup_probe_http_get_http_header.dart';

class ServiceTemplateSpecContainerStartupProbeHttpGet {
  /// Custom headers to set in the request. HTTP allows repeated headers.
  /// Structure is documented below.
  final pulumi.Input<
    List<ServiceTemplateSpecContainerStartupProbeHttpGetHttpHeader>
  >?
  httpHeaders;

  /// Path to access on the HTTP server. If set, it should not be empty string.
  final pulumi.Input<String>? path;

  /// Port number to access on the container. Number must be in the range 1 to 65535.
  /// If not specified, defaults to the same value as container.ports[0].containerPort.
  final pulumi.Input<int>? port;

  /// Creates a new [ServiceTemplateSpecContainerStartupProbeHttpGet].
  /// [httpHeaders] Custom headers to set in the request. HTTP allows repeated headers.
  /// [path] Path to access on the HTTP server. If set, it should not be empty string.
  /// [port] Port number to access on the container. Number must be in the range 1 to 65535.
  ServiceTemplateSpecContainerStartupProbeHttpGet({
    this.httpHeaders,
    this.path,
    this.port,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'httpHeaders':
          ?pulumi.Input.mapOptionalInputValue<
            List<ServiceTemplateSpecContainerStartupProbeHttpGetHttpHeader>,
            List<Map<String, dynamic>>
          >(
            httpHeaders,
            (value) =>
                pulumi.Input.encodeList<
                  ServiceTemplateSpecContainerStartupProbeHttpGetHttpHeader,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'path': ?path,
      'port': ?port,
    };
  }

  factory ServiceTemplateSpecContainerStartupProbeHttpGet.fromMap(
    Map<String, dynamic> map,
  ) {
    return ServiceTemplateSpecContainerStartupProbeHttpGet(
      httpHeaders: (() {
        final guardedValue = map['httpHeaders'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<
            ServiceTemplateSpecContainerStartupProbeHttpGetHttpHeader
          >(
            guardedValue,
            (value) =>
                ServiceTemplateSpecContainerStartupProbeHttpGetHttpHeader.fromMap(
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
