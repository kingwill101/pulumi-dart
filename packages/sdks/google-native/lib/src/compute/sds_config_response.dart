// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'grpc_service_config_response.dart';

/// [Deprecated] The configuration to access the SDS server. The configuration to access the SDS server.
class SdsConfigResponse {
  /// The configuration to access the SDS server over GRPC.
  final pulumi.Input<GrpcServiceConfigResponse> grpcServiceConfig;

  /// Creates a new [SdsConfigResponse].
  /// [grpcServiceConfig] The configuration to access the SDS server over GRPC.
  const SdsConfigResponse({
    required this.grpcServiceConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'grpcServiceConfig': pulumi.Input.mapInputValue<GrpcServiceConfigResponse, Map<String, dynamic>>(grpcServiceConfig, (value) => value.toMap()),
    };
  }

  factory SdsConfigResponse.fromMap(Map<String, dynamic> map) {
    return SdsConfigResponse(
      grpcServiceConfig: pulumi.Input.fromValue(GrpcServiceConfigResponse.fromMap((map['grpcServiceConfig']! as Map).cast<String, dynamic>())),
    );
  }
}
