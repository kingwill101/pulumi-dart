// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class SpringCloudGatewayRouteConfigOpenApi {
  /// The URI of OpenAPI specification.
  final pulumi.Input<String?>? uri;

  /// Creates a new [SpringCloudGatewayRouteConfigOpenApi].
  /// [uri] The URI of OpenAPI specification.
  const SpringCloudGatewayRouteConfigOpenApi({
    this.uri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'uri': ?uri,
    };
  }

  factory SpringCloudGatewayRouteConfigOpenApi.fromMap(Map<String, dynamic> map) {
    return SpringCloudGatewayRouteConfigOpenApi(
      uri: (() { final guardedValue = map['uri']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
