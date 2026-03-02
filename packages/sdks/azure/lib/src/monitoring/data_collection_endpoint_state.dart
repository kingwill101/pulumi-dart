// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering DataCollectionEndpoint resources.
class DataCollectionEndpointState {
  /// The endpoint used for accessing configuration, e.g., `https://mydce-abcd.eastus-1.control.monitor.azure.com`.
  final pulumi.Input<String>? configurationAccessEndpoint;
  /// Specifies a description for the Data Collection Endpoint.
  final pulumi.Input<String>? description;
  /// The immutable ID of the Data Collection Endpoint.
  final pulumi.Input<String>? immutableId;
  /// The kind of the Data Collection Endpoint. Possible values are `Linux` and `Windows`.
  final pulumi.Input<String>? kind;
  /// The Azure Region where the Data Collection Endpoint should exist. Changing this forces a new Data Collection Endpoint to be created.
  final pulumi.Input<String>? location;
  /// The endpoint used for ingesting logs, e.g., `https://mydce-abcd.eastus-1.ingest.monitor.azure.com`.
  final pulumi.Input<String>? logsIngestionEndpoint;
  /// The endpoint used for ingesting metrics, e.g., `https://mydce-abcd.eastus-1.metrics.ingest.monitor.azure.com`.
  final pulumi.Input<String>? metricsIngestionEndpoint;
  /// The name which should be used for this Data Collection Endpoint. Changing this forces a new Data Collection Endpoint to be created.
  final pulumi.Input<String>? name;
  /// Whether network access from public internet to the Data Collection Endpoint are allowed. Possible values are `true` and `false`. Default to `true`.
  final pulumi.Input<bool>? publicNetworkAccessEnabled;
  /// The name of the Resource Group where the Data Collection Endpoint should exist. Changing this forces a new Data Collection Endpoint to be created.
  final pulumi.Input<String>? resourceGroupName;
  /// A mapping of tags which should be assigned to the Data Collection Endpoint.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [DataCollectionEndpointState].
  /// [configurationAccessEndpoint] The endpoint used for accessing configuration, e.g., `https://mydce-abcd.eastus-1.control.monitor.azure.com`.
  /// [description] Specifies a description for the Data Collection Endpoint.
  /// [immutableId] The immutable ID of the Data Collection Endpoint.
  /// [kind] The kind of the Data Collection Endpoint. Possible values are `Linux` and `Windows`.
  /// [location] The Azure Region where the Data Collection Endpoint should exist. Changing this forces a new Data Collection Endpoint to be created.
  /// [logsIngestionEndpoint] The endpoint used for ingesting logs, e.g., `https://mydce-abcd.eastus-1.ingest.monitor.azure.com`.
  /// [metricsIngestionEndpoint] The endpoint used for ingesting metrics, e.g., `https://mydce-abcd.eastus-1.metrics.ingest.monitor.azure.com`.
  /// [name] The name which should be used for this Data Collection Endpoint. Changing this forces a new Data Collection Endpoint to be created.
  /// [publicNetworkAccessEnabled] Whether network access from public internet to the Data Collection Endpoint are allowed. Possible values are `true` and `false`. Default to `true`.
  /// [resourceGroupName] The name of the Resource Group where the Data Collection Endpoint should exist. Changing this forces a new Data Collection Endpoint to be created.
  /// [tags] A mapping of tags which should be assigned to the Data Collection Endpoint.
  DataCollectionEndpointState({
    this.configurationAccessEndpoint,
    this.description,
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

  factory DataCollectionEndpointState.fromMap(Map<String, dynamic> map) {
    return DataCollectionEndpointState(
      configurationAccessEndpoint: map['configurationAccessEndpoint'] == null ? null : (map['configurationAccessEndpoint']! as String).input(),
      description: map['description'] == null ? null : (map['description']! as String).input(),
      immutableId: map['immutableId'] == null ? null : (map['immutableId']! as String).input(),
      kind: map['kind'] == null ? null : (map['kind']! as String).input(),
      location: map['location'] == null ? null : (map['location']! as String).input(),
      logsIngestionEndpoint: map['logsIngestionEndpoint'] == null ? null : (map['logsIngestionEndpoint']! as String).input(),
      metricsIngestionEndpoint: map['metricsIngestionEndpoint'] == null ? null : (map['metricsIngestionEndpoint']! as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      publicNetworkAccessEnabled: map['publicNetworkAccessEnabled'] == null ? null : (map['publicNetworkAccessEnabled']! as bool).input(),
      resourceGroupName: map['resourceGroupName'] == null ? null : (map['resourceGroupName']! as String).input(),
      tags: map['tags'] == null ? null : ((map['tags']! as Map).cast<String, String>()).input(),
    );
  }
}

