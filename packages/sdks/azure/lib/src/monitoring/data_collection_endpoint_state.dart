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
    pulumi.Output<String>? configurationAccessEndpoint,
    pulumi.Output<String>? description,
    pulumi.Output<String>? immutableId,
    pulumi.Output<String>? kind,
    pulumi.Output<String>? location,
    pulumi.Output<String>? logsIngestionEndpoint,
    pulumi.Output<String>? metricsIngestionEndpoint,
    pulumi.Output<String>? name,
    pulumi.Output<bool>? publicNetworkAccessEnabled,
    pulumi.Output<String>? resourceGroupName,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      configurationAccessEndpoint = pulumi.Input.asOptionalInput<String>(configurationAccessEndpoint),
      description = pulumi.Input.asOptionalInput<String>(description),
      immutableId = pulumi.Input.asOptionalInput<String>(immutableId),
      kind = pulumi.Input.asOptionalInput<String>(kind),
      location = pulumi.Input.asOptionalInput<String>(location),
      logsIngestionEndpoint = pulumi.Input.asOptionalInput<String>(logsIngestionEndpoint),
      metricsIngestionEndpoint = pulumi.Input.asOptionalInput<String>(metricsIngestionEndpoint),
      name = pulumi.Input.asOptionalInput<String>(name),
      publicNetworkAccessEnabled = pulumi.Input.asOptionalInput<bool>(publicNetworkAccessEnabled),
      resourceGroupName = pulumi.Input.asOptionalInput<String>(resourceGroupName),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

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
      configurationAccessEndpoint: map['configurationAccessEndpoint'] == null ? null : pulumi.Output.create<String>(map['configurationAccessEndpoint'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      immutableId: map['immutableId'] == null ? null : pulumi.Output.create<String>(map['immutableId'] as String),
      kind: map['kind'] == null ? null : pulumi.Output.create<String>(map['kind'] as String),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      logsIngestionEndpoint: map['logsIngestionEndpoint'] == null ? null : pulumi.Output.create<String>(map['logsIngestionEndpoint'] as String),
      metricsIngestionEndpoint: map['metricsIngestionEndpoint'] == null ? null : pulumi.Output.create<String>(map['metricsIngestionEndpoint'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      publicNetworkAccessEnabled: map['publicNetworkAccessEnabled'] == null ? null : pulumi.Output.create<bool>(map['publicNetworkAccessEnabled'] as bool),
      resourceGroupName: map['resourceGroupName'] == null ? null : pulumi.Output.create<String>(map['resourceGroupName'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

