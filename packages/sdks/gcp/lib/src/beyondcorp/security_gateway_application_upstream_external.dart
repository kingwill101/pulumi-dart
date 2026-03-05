// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'security_gateway_application_upstream_external_endpoint.dart';

class SecurityGatewayApplicationUpstreamExternal {
  /// List of the endpoints to forward traffic to.
  /// Structure is documented below.
  final pulumi.Input<List<SecurityGatewayApplicationUpstreamExternalEndpoint>> endpoints;

  /// Creates a new [SecurityGatewayApplicationUpstreamExternal].
  /// [endpoints] List of the endpoints to forward traffic to.
  SecurityGatewayApplicationUpstreamExternal({
    required this.endpoints,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'endpoints': pulumi.Input.mapInputValue<List<SecurityGatewayApplicationUpstreamExternalEndpoint>, List<Map<String, dynamic>>>(endpoints, (value) => pulumi.Input.encodeList<SecurityGatewayApplicationUpstreamExternalEndpoint, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory SecurityGatewayApplicationUpstreamExternal.fromMap(Map<String, dynamic> map) {
    return SecurityGatewayApplicationUpstreamExternal(
      endpoints: pulumi.Input.fromValue(pulumi.Input.decodeList<SecurityGatewayApplicationUpstreamExternalEndpoint>(map['endpoints']!, (value) => SecurityGatewayApplicationUpstreamExternalEndpoint.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

