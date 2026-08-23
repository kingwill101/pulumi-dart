// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getDataCollectionEndpoint.
class GetDataCollectionEndpointResult {
  /// The endpoint used for accessing configuration, e.g., `https://mydce-abcd.eastus-1.control.monitor.azure.com`.
  final String configurationAccessEndpoint;
  /// Specifies a description for the Data Collection Endpoint.
  final String description;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// The immutable ID of the Data Collection Endpoint.
  final String immutableId;
  /// The kind of the Data Collection Endpoint. Possible values are `Linux` and `Windows`.
  final String kind;
  /// The Azure Region where the Data Collection Endpoint should exist.
  final String location;
  /// The endpoint used for ingesting logs, e.g., `https://mydce-abcd.eastus-1.ingest.monitor.azure.com`.
  final String logsIngestionEndpoint;
  /// The endpoint used for ingesting metrics, e.g., `https://mydce-abcd.eastus-1.metrics.ingest.monitor.azure.com`.
  final String metricsIngestionEndpoint;
  final String name;
  /// Whether network access from public internet to the Data Collection Endpoint are allowed. Possible values are `true` and `false`.
  final bool publicNetworkAccessEnabled;
  final String resourceGroupName;
  /// A mapping of tags which should be assigned to the Data Collection Endpoint.
  final Map<String, String> tags;

  /// Creates a new [GetDataCollectionEndpointResult].
  /// [configurationAccessEndpoint] The endpoint used for accessing configuration, e.g., `https://mydce-abcd.eastus-1.control.monitor.azure.com`.
  /// [description] Specifies a description for the Data Collection Endpoint.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [immutableId] The immutable ID of the Data Collection Endpoint.
  /// [kind] The kind of the Data Collection Endpoint. Possible values are `Linux` and `Windows`.
  /// [location] The Azure Region where the Data Collection Endpoint should exist.
  /// [logsIngestionEndpoint] The endpoint used for ingesting logs, e.g., `https://mydce-abcd.eastus-1.ingest.monitor.azure.com`.
  /// [metricsIngestionEndpoint] The endpoint used for ingesting metrics, e.g., `https://mydce-abcd.eastus-1.metrics.ingest.monitor.azure.com`.
  /// [name] Required.
  /// [publicNetworkAccessEnabled] Whether network access from public internet to the Data Collection Endpoint are allowed. Possible values are `true` and `false`.
  /// [resourceGroupName] Required.
  /// [tags] A mapping of tags which should be assigned to the Data Collection Endpoint.
  const GetDataCollectionEndpointResult({
    required this.configurationAccessEndpoint,
    required this.description,
    required this.id,
    required this.immutableId,
    required this.kind,
    required this.location,
    required this.logsIngestionEndpoint,
    required this.metricsIngestionEndpoint,
    required this.name,
    required this.publicNetworkAccessEnabled,
    required this.resourceGroupName,
    required this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'configurationAccessEndpoint': configurationAccessEndpoint,
      'description': description,
      'id': id,
      'immutableId': immutableId,
      'kind': kind,
      'location': location,
      'logsIngestionEndpoint': logsIngestionEndpoint,
      'metricsIngestionEndpoint': metricsIngestionEndpoint,
      'name': name,
      'publicNetworkAccessEnabled': publicNetworkAccessEnabled,
      'resourceGroupName': resourceGroupName,
      'tags': tags,
    };
  }

  factory GetDataCollectionEndpointResult.fromMap(Map<String, dynamic> map) {
    return GetDataCollectionEndpointResult(
      configurationAccessEndpoint: map['configurationAccessEndpoint'] as String,
      description: map['description'] as String,
      id: map['id'] as String,
      immutableId: map['immutableId'] as String,
      kind: map['kind'] as String,
      location: map['location'] as String,
      logsIngestionEndpoint: map['logsIngestionEndpoint'] as String,
      metricsIngestionEndpoint: map['metricsIngestionEndpoint'] as String,
      name: map['name'] as String,
      publicNetworkAccessEnabled: map['publicNetworkAccessEnabled'] as bool,
      resourceGroupName: map['resourceGroupName'] as String,
      tags: (map['tags'] as Map).cast<String, String>(),
    );
  }
}
