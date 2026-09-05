// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'point_to_point_vpn_gateway_connection_configuration_route.dart';
import 'point_to_point_vpn_gateway_connection_configuration_vpn_client_address_pool.dart';

class PointToPointVpnGatewayConnectionConfiguration {
  /// Should Internet Security be enabled to secure internet traffic? Defaults to `false`.
  final pulumi.Input<bool?>? internetSecurityEnabled;
  /// The Name which should be used for this Connection Configuration.
  final pulumi.Input<String> name;
  /// A `route` block as defined below.
  final pulumi.Input<PointToPointVpnGatewayConnectionConfigurationRoute?>? route;
  /// A `vpnClientAddressPool` block as defined below.
  final pulumi.Input<PointToPointVpnGatewayConnectionConfigurationVpnClientAddressPool> vpnClientAddressPool;

  /// Creates a new [PointToPointVpnGatewayConnectionConfiguration].
  /// [internetSecurityEnabled] Should Internet Security be enabled to secure internet traffic? Defaults to `false`.
  /// [name] The Name which should be used for this Connection Configuration.
  /// [route] A `route` block as defined below.
  /// [vpnClientAddressPool] A `vpnClientAddressPool` block as defined below.
  const PointToPointVpnGatewayConnectionConfiguration({
    this.internetSecurityEnabled,
    required this.name,
    this.route,
    required this.vpnClientAddressPool,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'internetSecurityEnabled': ?internetSecurityEnabled,
      'name': name,
      'route': ?pulumi.Input.mapOptionalInputValue<PointToPointVpnGatewayConnectionConfigurationRoute, Map<String, dynamic>>(route, (value) => value.toMap()),
      'vpnClientAddressPool': pulumi.Input.mapInputValue<PointToPointVpnGatewayConnectionConfigurationVpnClientAddressPool, Map<String, dynamic>>(vpnClientAddressPool, (value) => value.toMap()),
    };
  }

  factory PointToPointVpnGatewayConnectionConfiguration.fromMap(Map<String, dynamic> map) {
    return PointToPointVpnGatewayConnectionConfiguration(
      internetSecurityEnabled: (() { final guardedValue = map['internetSecurityEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      name: pulumi.Input.fromValue(map['name'] as String),
      route: (() { final guardedValue = map['route']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PointToPointVpnGatewayConnectionConfigurationRoute.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      vpnClientAddressPool: pulumi.Input.fromValue(PointToPointVpnGatewayConnectionConfigurationVpnClientAddressPool.fromMap((map['vpnClientAddressPool']! as Map).cast<String, dynamic>())),
    );
  }
}
