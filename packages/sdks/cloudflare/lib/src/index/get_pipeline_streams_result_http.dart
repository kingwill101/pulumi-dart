// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_pipeline_streams_result_http_cors.dart';

class GetPipelineStreamsResultHttp {
  /// Indicates that authentication is required for the HTTP endpoint.
  final pulumi.Input<bool> authentication;
  /// Specifies the CORS options for the HTTP endpoint.
  final pulumi.Input<GetPipelineStreamsResultHttpCors> cors;
  /// Indicates that the HTTP endpoint is enabled.
  final pulumi.Input<bool> enabled;

  /// Creates a new [GetPipelineStreamsResultHttp].
  /// [authentication] Indicates that authentication is required for the HTTP endpoint.
  /// [cors] Specifies the CORS options for the HTTP endpoint.
  /// [enabled] Indicates that the HTTP endpoint is enabled.
  const GetPipelineStreamsResultHttp({
    required this.authentication,
    required this.cors,
    required this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authentication': authentication,
      'cors': pulumi.Input.mapInputValue<GetPipelineStreamsResultHttpCors, Map<String, dynamic>>(cors, (value) => value.toMap()),
      'enabled': enabled,
    };
  }

  factory GetPipelineStreamsResultHttp.fromMap(Map<String, dynamic> map) {
    return GetPipelineStreamsResultHttp(
      authentication: pulumi.Input.fromValue(map['authentication'] as bool),
      cors: pulumi.Input.fromValue(GetPipelineStreamsResultHttpCors.fromMap((map['cors']! as Map).cast<String, dynamic>())),
      enabled: pulumi.Input.fromValue(map['enabled'] as bool),
    );
  }
}
