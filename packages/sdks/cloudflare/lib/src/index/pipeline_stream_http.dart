// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'pipeline_stream_http_cors.dart';

class PipelineStreamHttp {
  /// Indicates that authentication is required for the HTTP endpoint.
  final pulumi.Input<bool> authentication;
  /// Specifies the CORS options for the HTTP endpoint.
  final pulumi.Input<PipelineStreamHttpCors?>? cors;
  /// Indicates that the HTTP endpoint is enabled.
  final pulumi.Input<bool> enabled;

  /// Creates a new [PipelineStreamHttp].
  /// [authentication] Indicates that authentication is required for the HTTP endpoint.
  /// [cors] Specifies the CORS options for the HTTP endpoint.
  /// [enabled] Indicates that the HTTP endpoint is enabled.
  const PipelineStreamHttp({
    required this.authentication,
    this.cors,
    required this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authentication': authentication,
      'cors': ?pulumi.Input.mapOptionalInputValue<PipelineStreamHttpCors, Map<String, dynamic>>(cors, (value) => value.toMap()),
      'enabled': enabled,
    };
  }

  factory PipelineStreamHttp.fromMap(Map<String, dynamic> map) {
    return PipelineStreamHttp(
      authentication: pulumi.Input.fromValue(map['authentication'] as bool),
      cors: (() { final guardedValue = map['cors']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PipelineStreamHttpCors.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      enabled: pulumi.Input.fromValue(map['enabled'] as bool),
    );
  }
}
