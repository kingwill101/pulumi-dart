// ignore_for_file: unused_element, unnecessary_cast


class SpringCloudGatewayRouteConfigOpenApi {
  /// The URI of OpenAPI specification.
  final String? uri;

  /// Creates a new [SpringCloudGatewayRouteConfigOpenApi].
  /// [uri] The URI of OpenAPI specification.
  SpringCloudGatewayRouteConfigOpenApi({
    this.uri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'uri': ?uri,
    };
  }

  factory SpringCloudGatewayRouteConfigOpenApi.fromMap(Map<String, dynamic> map) {
    return SpringCloudGatewayRouteConfigOpenApi(
      uri: map['uri'] == null ? null : map['uri'] as String,
    );
  }
}

