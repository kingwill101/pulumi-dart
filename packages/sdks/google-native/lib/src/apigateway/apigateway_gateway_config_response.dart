// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'apigateway_backend_config_response.dart';

/// Configuration settings for Gateways.
class ApigatewayGatewayConfigResponse {
  /// Backend settings that are applied to all backends of the Gateway.
  final pulumi.Input<ApigatewayBackendConfigResponse> backendConfig;

  /// Creates a new [ApigatewayGatewayConfigResponse].
  /// [backendConfig] Backend settings that are applied to all backends of the Gateway.
  const ApigatewayGatewayConfigResponse({
    required this.backendConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backendConfig': pulumi.Input.mapInputValue<ApigatewayBackendConfigResponse, Map<String, dynamic>>(backendConfig, (value) => value.toMap()),
    };
  }

  factory ApigatewayGatewayConfigResponse.fromMap(Map<String, dynamic> map) {
    return ApigatewayGatewayConfigResponse(
      backendConfig: pulumi.Input.fromValue(ApigatewayBackendConfigResponse.fromMap((map['backendConfig']! as Map).cast<String, dynamic>())),
    );
  }
}
