// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'grpc_service_config.dart';

/// [Deprecated] The configuration to access the SDS server. The configuration to access the SDS server.
class SdsConfig {
  /// The configuration to access the SDS server over GRPC.
  final pulumi.Input<GrpcServiceConfig>? grpcServiceConfig;

  /// Creates a new [SdsConfig].
  /// [grpcServiceConfig] The configuration to access the SDS server over GRPC.
  SdsConfig({
    this.grpcServiceConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'grpcServiceConfig': ?pulumi.Input.mapOptionalInputValue<GrpcServiceConfig, Map<String, dynamic>>(grpcServiceConfig, (value) => value.toMap()),
    };
  }

  factory SdsConfig.fromMap(Map<String, dynamic> map) {
    return SdsConfig(
      grpcServiceConfig: map['grpcServiceConfig'] == null ? null : (GrpcServiceConfig.fromMap((map['grpcServiceConfig']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

