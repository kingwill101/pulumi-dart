// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getAPICollectionByAzureApiManagementService.
class GetAPICollectionByAzureApiManagementServiceResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// The base URI for this API collection. All endpoints of this API collection extend this base URI.
  final String baseUrl;
  /// The resource Id of the resource from where this API collection was discovered.
  final String discoveredVia;
  /// The display name of the API collection.
  final String displayName;
  /// Resource Id
  final String id;
  /// Resource name
  final String name;
  /// The number of API endpoints discovered in this API collection.
  final double numberOfApiEndpoints;
  /// The number of API endpoints in this API collection which are exposing sensitive data in their requests and/or responses.
  final double numberOfApiEndpointsWithSensitiveDataExposed;
  /// The number of API endpoints in this API collection for which API traffic from the internet was observed.
  final double numberOfExternalApiEndpoints;
  /// The number of API endpoints in this API collection that have not received any API traffic in the last 30 days.
  final double numberOfInactiveApiEndpoints;
  /// The number of API endpoints in this API collection that are unauthenticated.
  final double numberOfUnauthenticatedApiEndpoints;
  /// Gets the provisioning state of the API collection.
  final String provisioningState;
  /// The highest priority sensitivity label from Microsoft Purview in this API collection.
  final String sensitivityLabel;
  /// Resource type
  final String type;

  /// Creates a new [GetAPICollectionByAzureApiManagementServiceResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [baseUrl] The base URI for this API collection. All endpoints of this API collection extend this base URI.
  /// [discoveredVia] The resource Id of the resource from where this API collection was discovered.
  /// [displayName] The display name of the API collection.
  /// [id] Resource Id
  /// [name] Resource name
  /// [numberOfApiEndpoints] The number of API endpoints discovered in this API collection.
  /// [numberOfApiEndpointsWithSensitiveDataExposed] The number of API endpoints in this API collection which are exposing sensitive data in their requests and/or responses.
  /// [numberOfExternalApiEndpoints] The number of API endpoints in this API collection for which API traffic from the internet was observed.
  /// [numberOfInactiveApiEndpoints] The number of API endpoints in this API collection that have not received any API traffic in the last 30 days.
  /// [numberOfUnauthenticatedApiEndpoints] The number of API endpoints in this API collection that are unauthenticated.
  /// [provisioningState] Gets the provisioning state of the API collection.
  /// [sensitivityLabel] The highest priority sensitivity label from Microsoft Purview in this API collection.
  /// [type] Resource type
  const GetAPICollectionByAzureApiManagementServiceResult({
    required this.azureApiVersion,
    required this.baseUrl,
    required this.discoveredVia,
    required this.displayName,
    required this.id,
    required this.name,
    required this.numberOfApiEndpoints,
    required this.numberOfApiEndpointsWithSensitiveDataExposed,
    required this.numberOfExternalApiEndpoints,
    required this.numberOfInactiveApiEndpoints,
    required this.numberOfUnauthenticatedApiEndpoints,
    required this.provisioningState,
    required this.sensitivityLabel,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'baseUrl': baseUrl,
      'discoveredVia': discoveredVia,
      'displayName': displayName,
      'id': id,
      'name': name,
      'numberOfApiEndpoints': numberOfApiEndpoints,
      'numberOfApiEndpointsWithSensitiveDataExposed': numberOfApiEndpointsWithSensitiveDataExposed,
      'numberOfExternalApiEndpoints': numberOfExternalApiEndpoints,
      'numberOfInactiveApiEndpoints': numberOfInactiveApiEndpoints,
      'numberOfUnauthenticatedApiEndpoints': numberOfUnauthenticatedApiEndpoints,
      'provisioningState': provisioningState,
      'sensitivityLabel': sensitivityLabel,
      'type': type,
    };
  }

  factory GetAPICollectionByAzureApiManagementServiceResult.fromMap(Map<String, dynamic> map) {
    return GetAPICollectionByAzureApiManagementServiceResult(
      azureApiVersion: map['azureApiVersion'] as String,
      baseUrl: map['baseUrl'] as String,
      discoveredVia: map['discoveredVia'] as String,
      displayName: map['displayName'] as String,
      id: map['id'] as String,
      name: map['name'] as String,
      numberOfApiEndpoints: map['numberOfApiEndpoints'] as double,
      numberOfApiEndpointsWithSensitiveDataExposed: map['numberOfApiEndpointsWithSensitiveDataExposed'] as double,
      numberOfExternalApiEndpoints: map['numberOfExternalApiEndpoints'] as double,
      numberOfInactiveApiEndpoints: map['numberOfInactiveApiEndpoints'] as double,
      numberOfUnauthenticatedApiEndpoints: map['numberOfUnauthenticatedApiEndpoints'] as double,
      provisioningState: map['provisioningState'] as String,
      sensitivityLabel: map['sensitivityLabel'] as String,
      type: map['type'] as String,
    );
  }
}

