// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'gateway_config_gateway_auth_method.dart';
import 'gateway_config_gateway_type.dart';

/// Gateway-related configuration and state.
class GatewayConfig {
  /// Indicates how to authorize and/or authenticate devices to access the gateway.
  final pulumi.Input<GatewayConfigGatewayAuthMethod>? gatewayAuthMethod;
  /// Indicates whether the device is a gateway.
  final pulumi.Input<GatewayConfigGatewayType>? gatewayType;

  /// Creates a new [GatewayConfig].
  /// [gatewayAuthMethod] Indicates how to authorize and/or authenticate devices to access the gateway.
  /// [gatewayType] Indicates whether the device is a gateway.
  GatewayConfig({
    this.gatewayAuthMethod,
    this.gatewayType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'gatewayAuthMethod': ?pulumi.Input.mapOptionalInputValue<GatewayConfigGatewayAuthMethod, String>(gatewayAuthMethod, (value) => value.value),
      'gatewayType': ?pulumi.Input.mapOptionalInputValue<GatewayConfigGatewayType, String>(gatewayType, (value) => value.value),
    };
  }

  factory GatewayConfig.fromMap(Map<String, dynamic> map) {
    return GatewayConfig(
      gatewayAuthMethod: map['gatewayAuthMethod'] == null ? null : (GatewayConfigGatewayAuthMethod.fromValue(map['gatewayAuthMethod']! as String)).input(),
      gatewayType: map['gatewayType'] == null ? null : (GatewayConfigGatewayType.fromValue(map['gatewayType']! as String)).input(),
    );
  }
}

