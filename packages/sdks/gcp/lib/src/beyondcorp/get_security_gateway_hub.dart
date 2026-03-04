// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_security_gateway_hub_internet_gateway.dart';

class GetSecurityGatewayHub {
  /// Internet Gateway configuration.
  final pulumi.Input<List<GetSecurityGatewayHubInternetGateway>>
  internetGateways;
  final pulumi.Input<String> region;

  /// Creates a new [GetSecurityGatewayHub].
  /// [internetGateways] Internet Gateway configuration.
  /// [region] Required.
  GetSecurityGatewayHub({required this.internetGateways, required this.region});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'internetGateways':
          pulumi.Input.mapInputValue<
            List<GetSecurityGatewayHubInternetGateway>,
            List<Map<String, dynamic>>
          >(
            internetGateways,
            (value) =>
                pulumi.Input.encodeList<
                  GetSecurityGatewayHubInternetGateway,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'region': region,
    };
  }

  factory GetSecurityGatewayHub.fromMap(Map<String, dynamic> map) {
    return GetSecurityGatewayHub(
      internetGateways: pulumi.Input.fromValue(
        pulumi.Input.decodeList<GetSecurityGatewayHubInternetGateway>(
          map['internetGateways']!,
          (value) => GetSecurityGatewayHubInternetGateway.fromMap(
            (value as Map).cast<String, dynamic>(),
          ),
        ),
      ),
      region: pulumi.Input.fromValue(map['region'] as String),
    );
  }
}
