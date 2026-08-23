// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'api_config_gateway_config_backend_config.dart';

class ApiConfigGatewayConfig {
  /// Backend settings that are applied to all backends of the Gateway.
  /// Structure is documented below.
  final pulumi.Input<ApiConfigGatewayConfigBackendConfig> backendConfig;

  /// Creates a new [ApiConfigGatewayConfig].
  /// [backendConfig] Backend settings that are applied to all backends of the Gateway.
  const ApiConfigGatewayConfig({
    required this.backendConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backendConfig': pulumi.Input.mapInputValue<ApiConfigGatewayConfigBackendConfig, Map<String, dynamic>>(backendConfig, (value) => value.toMap()),
    };
  }

  factory ApiConfigGatewayConfig.fromMap(Map<String, dynamic> map) {
    return ApiConfigGatewayConfig(
      backendConfig: pulumi.Input.fromValue(ApiConfigGatewayConfigBackendConfig.fromMap((map['backendConfig']! as Map).cast<String, dynamic>())),
    );
  }
}
