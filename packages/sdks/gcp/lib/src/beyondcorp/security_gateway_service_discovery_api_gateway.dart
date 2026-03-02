// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'security_gateway_service_discovery_api_gateway_resource_override.dart';

class SecurityGatewayServiceDiscoveryApiGateway {
  /// Enables fetching resource model updates to alter service behavior per Chrome profile.
  /// Structure is documented below.
  final pulumi.Input<SecurityGatewayServiceDiscoveryApiGatewayResourceOverride>? resourceOverride;

  /// Creates a new [SecurityGatewayServiceDiscoveryApiGateway].
  /// [resourceOverride] Enables fetching resource model updates to alter service behavior per Chrome profile.
  SecurityGatewayServiceDiscoveryApiGateway({
    this.resourceOverride,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceOverride': ?pulumi.Input.mapOptionalInputValue<SecurityGatewayServiceDiscoveryApiGatewayResourceOverride, Map<String, dynamic>>(resourceOverride, (value) => value.toMap()),
    };
  }

  factory SecurityGatewayServiceDiscoveryApiGateway.fromMap(Map<String, dynamic> map) {
    return SecurityGatewayServiceDiscoveryApiGateway(
      resourceOverride: map['resourceOverride'] == null ? null : (SecurityGatewayServiceDiscoveryApiGatewayResourceOverride.fromMap((map['resourceOverride']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

