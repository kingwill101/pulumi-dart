// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by getExpressRoutePortAuthorization.
class GetExpressRoutePortAuthorizationResult {
  /// The authorization key.
  final String authorizationKey;

  /// The authorization use status.
  final String authorizationUseStatus;

  /// The Azure API version of the resource.
  final String azureApiVersion;

  /// The reference to the ExpressRoute circuit resource using the authorization.
  final String circuitResourceUri;

  /// A unique read-only string that changes whenever the resource is updated.
  final String etag;

  /// Resource ID.
  final String? id;

  /// The name of the resource that is unique within a resource group. This name can be used to access the resource.
  final String? name;

  /// The provisioning state of the authorization resource.
  final String provisioningState;

  /// Type of the resource.
  final String type;

  /// Creates a new [GetExpressRoutePortAuthorizationResult].
  /// [authorizationKey] The authorization key.
  /// [authorizationUseStatus] The authorization use status.
  /// [azureApiVersion] The Azure API version of the resource.
  /// [circuitResourceUri] The reference to the ExpressRoute circuit resource using the authorization.
  /// [etag] A unique read-only string that changes whenever the resource is updated.
  /// [id] Resource ID.
  /// [name] The name of the resource that is unique within a resource group. This name can be used to access the resource.
  /// [provisioningState] The provisioning state of the authorization resource.
  /// [type] Type of the resource.
  GetExpressRoutePortAuthorizationResult({
    required this.authorizationKey,
    required this.authorizationUseStatus,
    required this.azureApiVersion,
    required this.circuitResourceUri,
    required this.etag,
    this.id,
    this.name,
    required this.provisioningState,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authorizationKey': authorizationKey,
      'authorizationUseStatus': authorizationUseStatus,
      'azureApiVersion': azureApiVersion,
      'circuitResourceUri': circuitResourceUri,
      'etag': etag,
      'id': ?id,
      'name': ?name,
      'provisioningState': provisioningState,
      'type': type,
    };
  }

  factory GetExpressRoutePortAuthorizationResult.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetExpressRoutePortAuthorizationResult(
      authorizationKey: map['authorizationKey'] as String,
      authorizationUseStatus: map['authorizationUseStatus'] as String,
      azureApiVersion: map['azureApiVersion'] as String,
      circuitResourceUri: map['circuitResourceUri'] as String,
      etag: map['etag'] as String,
      id: (() {
        final guardedValue = map['id'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      provisioningState: map['provisioningState'] as String,
      type: map['type'] as String,
    );
  }
}
