// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ai_endpoint_with_model_garden_deployment_model_config_container_spec_health_probe_http_get_http_header.dart';

class AiEndpointWithModelGardenDeploymentModelConfigContainerSpecHealthProbeHttpGet {
  /// Host name to connect to, defaults to the model serving container's IP.
  /// You probably want to set "Host" in httpHeaders instead.
  final pulumi.Input<String>? host;

  /// Custom headers to set in the request. HTTP allows repeated headers.
  /// Structure is documented below.
  final pulumi.Input<
    List<
      AiEndpointWithModelGardenDeploymentModelConfigContainerSpecHealthProbeHttpGetHttpHeader
    >
  >?
  httpHeaders;

  /// Path to access on the HTTP server.
  final pulumi.Input<String>? path;

  /// Number of the port to access on the container.
  /// Number must be in the range 1 to 65535.
  final pulumi.Input<int>? port;

  /// Scheme to use for connecting to the host.
  /// Defaults to HTTP. Acceptable values are "HTTP" or "HTTPS".
  final pulumi.Input<String>? scheme;

  /// Creates a new [AiEndpointWithModelGardenDeploymentModelConfigContainerSpecHealthProbeHttpGet].
  /// [host] Host name to connect to, defaults to the model serving container's IP.
  /// [httpHeaders] Custom headers to set in the request. HTTP allows repeated headers.
  /// [path] Path to access on the HTTP server.
  /// [port] Number of the port to access on the container.
  /// [scheme] Scheme to use for connecting to the host.
  AiEndpointWithModelGardenDeploymentModelConfigContainerSpecHealthProbeHttpGet({
    this.host,
    this.httpHeaders,
    this.path,
    this.port,
    this.scheme,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'host': ?host,
      'httpHeaders':
          ?pulumi.Input.mapOptionalInputValue<
            List<
              AiEndpointWithModelGardenDeploymentModelConfigContainerSpecHealthProbeHttpGetHttpHeader
            >,
            List<Map<String, dynamic>>
          >(
            httpHeaders,
            (value) =>
                pulumi.Input.encodeList<
                  AiEndpointWithModelGardenDeploymentModelConfigContainerSpecHealthProbeHttpGetHttpHeader,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'path': ?path,
      'port': ?port,
      'scheme': ?scheme,
    };
  }

  factory AiEndpointWithModelGardenDeploymentModelConfigContainerSpecHealthProbeHttpGet.fromMap(
    Map<String, dynamic> map,
  ) {
    return AiEndpointWithModelGardenDeploymentModelConfigContainerSpecHealthProbeHttpGet(
      host: (() {
        final guardedValue = map['host'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      httpHeaders: (() {
        final guardedValue = map['httpHeaders'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<
            AiEndpointWithModelGardenDeploymentModelConfigContainerSpecHealthProbeHttpGetHttpHeader
          >(
            guardedValue,
            (value) =>
                AiEndpointWithModelGardenDeploymentModelConfigContainerSpecHealthProbeHttpGetHttpHeader.fromMap(
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
      scheme: (() {
        final guardedValue = map['scheme'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
