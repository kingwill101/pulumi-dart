// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'security_gateway_service_discovery_api_gateway.dart';

class SecurityGatewayServiceDiscovery {
  /// External API configuration.
  /// Structure is documented below.
  final pulumi.Input<SecurityGatewayServiceDiscoveryApiGateway?>? apiGateway;

  /// Creates a new [SecurityGatewayServiceDiscovery].
  /// [apiGateway] External API configuration.
  const SecurityGatewayServiceDiscovery({
    this.apiGateway,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiGateway': ?pulumi.Input.mapOptionalInputValue<SecurityGatewayServiceDiscoveryApiGateway, Map<String, dynamic>>(apiGateway, (value) => value.toMap()),
    };
  }

  factory SecurityGatewayServiceDiscovery.fromMap(Map<String, dynamic> map) {
    return SecurityGatewayServiceDiscovery(
      apiGateway: (() { final guardedValue = map['apiGateway']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SecurityGatewayServiceDiscoveryApiGateway.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
