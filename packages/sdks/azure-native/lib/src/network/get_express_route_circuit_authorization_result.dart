// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getExpressRouteCircuitAuthorization.
class GetExpressRouteCircuitAuthorizationResult {
  /// The authorization key.
  final String? authorizationKey;
  /// The authorization use status.
  final String? authorizationUseStatus;
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// The reference to the ExpressRoute connection resource using the authorization.
  final String connectionResourceUri;
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

  /// Creates a new [GetExpressRouteCircuitAuthorizationResult].
  /// [authorizationKey] The authorization key.
  /// [authorizationUseStatus] The authorization use status.
  /// [azureApiVersion] The Azure API version of the resource.
  /// [connectionResourceUri] The reference to the ExpressRoute connection resource using the authorization.
  /// [etag] A unique read-only string that changes whenever the resource is updated.
  /// [id] Resource ID.
  /// [name] The name of the resource that is unique within a resource group. This name can be used to access the resource.
  /// [provisioningState] The provisioning state of the authorization resource.
  /// [type] Type of the resource.
  const GetExpressRouteCircuitAuthorizationResult({
    this.authorizationKey,
    this.authorizationUseStatus,
    required this.azureApiVersion,
    required this.connectionResourceUri,
    required this.etag,
    this.id,
    this.name,
    required this.provisioningState,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authorizationKey': ?authorizationKey,
      'authorizationUseStatus': ?authorizationUseStatus,
      'azureApiVersion': azureApiVersion,
      'connectionResourceUri': connectionResourceUri,
      'etag': etag,
      'id': ?id,
      'name': ?name,
      'provisioningState': provisioningState,
      'type': type,
    };
  }

  factory GetExpressRouteCircuitAuthorizationResult.fromMap(Map<String, dynamic> map) {
    return GetExpressRouteCircuitAuthorizationResult(
      authorizationKey: (() { final guardedValue = map['authorizationKey']; if (guardedValue == null) return null; return guardedValue as String; })(),
      authorizationUseStatus: (() { final guardedValue = map['authorizationUseStatus']; if (guardedValue == null) return null; return guardedValue as String; })(),
      azureApiVersion: map['azureApiVersion'] as String,
      connectionResourceUri: map['connectionResourceUri'] as String,
      etag: map['etag'] as String,
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      provisioningState: map['provisioningState'] as String,
      type: map['type'] as String,
    );
  }
}
