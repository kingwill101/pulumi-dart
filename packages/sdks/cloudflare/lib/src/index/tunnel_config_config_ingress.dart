// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'tunnel_config_config_ingress_origin_request.dart';

class TunnelConfigConfigIngress {
  /// Public hostname for this service.
  final pulumi.Input<String?>? hostname;
  /// Configuration parameters for the public hostname specific connection settings between cloudflared and origin server.
  final pulumi.Input<TunnelConfigConfigIngressOriginRequest?>? originRequest;
  /// Requests with this path route to this public hostname.
  final pulumi.Input<String?>? path;
  /// Protocol and address of destination server. Supported protocols: http://, https://, unix://, tcp://, ssh://, rdp://, unix+tls://, smb://. Alternatively can return a HTTP status code http*status:[code] e.g. 'http*status:404'.
  final pulumi.Input<String> service;

  /// Creates a new [TunnelConfigConfigIngress].
  /// [hostname] Public hostname for this service.
  /// [originRequest] Configuration parameters for the public hostname specific connection settings between cloudflared and origin server.
  /// [path] Requests with this path route to this public hostname.
  /// [service] Protocol and address of destination server. Supported protocols: http://, https://, unix://, tcp://, ssh://, rdp://, unix+tls://, smb://. Alternatively can return a HTTP status code http*status:[code] e.g. 'http*status:404'.
  const TunnelConfigConfigIngress({
    this.hostname,
    this.originRequest,
    this.path,
    required this.service,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'hostname': ?hostname,
      'originRequest': ?pulumi.Input.mapOptionalInputValue<TunnelConfigConfigIngressOriginRequest, Map<String, dynamic>>(originRequest, (value) => value.toMap()),
      'path': ?path,
      'service': service,
    };
  }

  factory TunnelConfigConfigIngress.fromMap(Map<String, dynamic> map) {
    return TunnelConfigConfigIngress(
      hostname: (() { final guardedValue = map['hostname']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      originRequest: (() { final guardedValue = map['originRequest']; if (guardedValue == null) return null; return pulumi.Input.fromValue(TunnelConfigConfigIngressOriginRequest.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      path: (() { final guardedValue = map['path']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      service: pulumi.Input.fromValue(map['service'] as String),
    );
  }
}
