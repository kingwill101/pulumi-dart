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
      'gatewayAuthMethod': ?pulumi.Input.mapOptionalInputValue<GatewayConfigGatewayAuthMethod, String>(gatewayAuthMethod, (value) => value.wireValue),
      'gatewayType': ?pulumi.Input.mapOptionalInputValue<GatewayConfigGatewayType, String>(gatewayType, (value) => value.wireValue),
    };
  }

  factory GatewayConfig.fromMap(Map<String, dynamic> map) {
    return GatewayConfig(
      gatewayAuthMethod: (() { final guardedValue = map['gatewayAuthMethod']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GatewayConfigGatewayAuthMethod.fromValue(guardedValue as String)); })(),
      gatewayType: (() { final guardedValue = map['gatewayType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GatewayConfigGatewayType.fromValue(guardedValue as String)); })(),
    );
  }
}

