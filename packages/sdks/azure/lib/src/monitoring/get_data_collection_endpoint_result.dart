// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getDataCollectionEndpoint.
class GetDataCollectionEndpointResult {
  /// The endpoint used for accessing configuration, e.g., `https://mydce-abcd.eastus-1.control.monitor.azure.com`.
  final String? configurationAccessEndpoint;
  /// Specifies a description for the Data Collection Endpoint.
  final String? description;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  /// The immutable ID of the Data Collection Endpoint.
  final String? immutableId;
  /// The kind of the Data Collection Endpoint. Possible values are `Linux` and `Windows`.
  final String? kind;
  /// The Azure Region where the Data Collection Endpoint should exist.
  final String? location;
  /// The endpoint used for ingesting logs, e.g., `https://mydce-abcd.eastus-1.ingest.monitor.azure.com`.
  final String? logsIngestionEndpoint;
  /// The endpoint used for ingesting metrics, e.g., `https://mydce-abcd.eastus-1.metrics.ingest.monitor.azure.com`.
  final String? metricsIngestionEndpoint;
  final String? name;
  /// Whether network access from public internet to the Data Collection Endpoint are allowed. Possible values are `true` and `false`.
  final bool? publicNetworkAccessEnabled;
  final String? resourceGroupName;
  /// A mapping of tags which should be assigned to the Data Collection Endpoint.
  final Map<String, String>? tags;

  /// Creates a new [GetDataCollectionEndpointResult].
  /// [configurationAccessEndpoint] The endpoint used for accessing configuration, e.g., `https://mydce-abcd.eastus-1.control.monitor.azure.com`.
  /// [description] Specifies a description for the Data Collection Endpoint.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [immutableId] The immutable ID of the Data Collection Endpoint.
  /// [kind] The kind of the Data Collection Endpoint. Possible values are `Linux` and `Windows`.
  /// [location] The Azure Region where the Data Collection Endpoint should exist.
  /// [logsIngestionEndpoint] The endpoint used for ingesting logs, e.g., `https://mydce-abcd.eastus-1.ingest.monitor.azure.com`.
  /// [metricsIngestionEndpoint] The endpoint used for ingesting metrics, e.g., `https://mydce-abcd.eastus-1.metrics.ingest.monitor.azure.com`.
  /// [name] Optional.
  /// [publicNetworkAccessEnabled] Whether network access from public internet to the Data Collection Endpoint are allowed. Possible values are `true` and `false`.
  /// [resourceGroupName] Optional.
  /// [tags] A mapping of tags which should be assigned to the Data Collection Endpoint.
  const GetDataCollectionEndpointResult({
    this.configurationAccessEndpoint,
    this.description,
    this.id,
    this.immutableId,
    this.kind,
    this.location,
    this.logsIngestionEndpoint,
    this.metricsIngestionEndpoint,
    this.name,
    this.publicNetworkAccessEnabled,
    this.resourceGroupName,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'configurationAccessEndpoint': ?configurationAccessEndpoint,
      'description': ?description,
      'id': ?id,
      'immutableId': ?immutableId,
      'kind': ?kind,
      'location': ?location,
      'logsIngestionEndpoint': ?logsIngestionEndpoint,
      'metricsIngestionEndpoint': ?metricsIngestionEndpoint,
      'name': ?name,
      'publicNetworkAccessEnabled': ?publicNetworkAccessEnabled,
      'resourceGroupName': ?resourceGroupName,
      'tags': ?tags,
    };
  }

  factory GetDataCollectionEndpointResult.fromMap(Map<String, dynamic> map) {
    return GetDataCollectionEndpointResult(
      configurationAccessEndpoint: (() { final guardedValue = map['configurationAccessEndpoint']; if (guardedValue == null) return null; return guardedValue as String; })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      immutableId: (() { final guardedValue = map['immutableId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      kind: (() { final guardedValue = map['kind']; if (guardedValue == null) return null; return guardedValue as String; })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      logsIngestionEndpoint: (() { final guardedValue = map['logsIngestionEndpoint']; if (guardedValue == null) return null; return guardedValue as String; })(),
      metricsIngestionEndpoint: (() { final guardedValue = map['metricsIngestionEndpoint']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      publicNetworkAccessEnabled: (() { final guardedValue = map['publicNetworkAccessEnabled']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      resourceGroupName: (() { final guardedValue = map['resourceGroupName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
    );
  }
}
