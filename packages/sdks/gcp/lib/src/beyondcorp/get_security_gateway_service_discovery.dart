// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_security_gateway_service_discovery_api_gateway.dart';

class GetSecurityGatewayServiceDiscovery {
  /// External API configuration.
  final pulumi.Input<List<GetSecurityGatewayServiceDiscoveryApiGateway>> apiGateways;

  /// Creates a new [GetSecurityGatewayServiceDiscovery].
  /// [apiGateways] External API configuration.
  const GetSecurityGatewayServiceDiscovery({
    required this.apiGateways,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiGateways': pulumi.Input.mapInputValue<List<GetSecurityGatewayServiceDiscoveryApiGateway>, List<Map<String, dynamic>>>(apiGateways, (value) => pulumi.Input.encodeList<GetSecurityGatewayServiceDiscoveryApiGateway, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetSecurityGatewayServiceDiscovery.fromMap(Map<String, dynamic> map) {
    return GetSecurityGatewayServiceDiscovery(
      apiGateways: pulumi.Input.fromValue(pulumi.Input.decodeList<GetSecurityGatewayServiceDiscoveryApiGateway>(map['apiGateways']!, (value) => GetSecurityGatewayServiceDiscoveryApiGateway.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}
