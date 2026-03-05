// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class PointToPointVpnGatewayConnectionConfigurationVpnClientAddressPool {
  /// A list of CIDR Ranges which should be used as Address Prefixes.
  final pulumi.Input<List<String>> addressPrefixes;

  /// Creates a new [PointToPointVpnGatewayConnectionConfigurationVpnClientAddressPool].
  /// [addressPrefixes] A list of CIDR Ranges which should be used as Address Prefixes.
  PointToPointVpnGatewayConnectionConfigurationVpnClientAddressPool({
    required this.addressPrefixes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'addressPrefixes': addressPrefixes,
    };
  }

  factory PointToPointVpnGatewayConnectionConfigurationVpnClientAddressPool.fromMap(Map<String, dynamic> map) {
    return PointToPointVpnGatewayConnectionConfigurationVpnClientAddressPool(
      addressPrefixes: pulumi.Input.fromValue((map['addressPrefixes'] as List).cast<String>()),
    );
  }
}

