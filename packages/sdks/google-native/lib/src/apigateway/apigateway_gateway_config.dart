// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'apigateway_backend_config.dart';

/// Configuration settings for Gateways.
class ApigatewayGatewayConfig {
  /// Backend settings that are applied to all backends of the Gateway.
  final pulumi.Input<ApigatewayBackendConfig> backendConfig;

  /// Creates a new [ApigatewayGatewayConfig].
  /// [backendConfig] Backend settings that are applied to all backends of the Gateway.
  const ApigatewayGatewayConfig({
    required this.backendConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backendConfig': pulumi.Input.mapInputValue<ApigatewayBackendConfig, Map<String, dynamic>>(backendConfig, (value) => value.toMap()),
    };
  }

  factory ApigatewayGatewayConfig.fromMap(Map<String, dynamic> map) {
    return ApigatewayGatewayConfig(
      backendConfig: pulumi.Input.fromValue(ApigatewayBackendConfig.fromMap((map['backendConfig']! as Map).cast<String, dynamic>())),
    );
  }
}
