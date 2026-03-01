// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_monitoring_data_collection_endpoint_data_collection_endpoint_args_doc}
/// The set of arguments for DataCollectionEndpoint.
/// {@endtemplate}
/// {@macro pulumi_monitoring_data_collection_endpoint_data_collection_endpoint_args_doc}
class DataCollectionEndpointArgs {
  /// Specifies a description for the Data Collection Endpoint.
  final pulumi.Input<String>? description;
  /// The kind of the Data Collection Endpoint. Possible values are `Linux` and `Windows`.
  final pulumi.Input<String>? kind;
  /// The Azure Region where the Data Collection Endpoint should exist. Changing this forces a new Data Collection Endpoint to be created.
  final pulumi.Input<String>? location;
  /// The name which should be used for this Data Collection Endpoint. Changing this forces a new Data Collection Endpoint to be created.
  final pulumi.Input<String>? name;
  /// Whether network access from public internet to the Data Collection Endpoint are allowed. Possible values are `true` and `false`. Default to `true`.
  final pulumi.Input<bool>? publicNetworkAccessEnabled;
  /// The name of the Resource Group where the Data Collection Endpoint should exist. Changing this forces a new Data Collection Endpoint to be created.
  final pulumi.Input<String> resourceGroupName;
  /// A mapping of tags which should be assigned to the Data Collection Endpoint.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [DataCollectionEndpointArgs].
  /// [description] Specifies a description for the Data Collection Endpoint.
  /// [kind] The kind of the Data Collection Endpoint. Possible values are `Linux` and `Windows`.
  /// [location] The Azure Region where the Data Collection Endpoint should exist. Changing this forces a new Data Collection Endpoint to be created.
  /// [name] The name which should be used for this Data Collection Endpoint. Changing this forces a new Data Collection Endpoint to be created.
  /// [publicNetworkAccessEnabled] Whether network access from public internet to the Data Collection Endpoint are allowed. Possible values are `true` and `false`. Default to `true`.
  /// [resourceGroupName] The name of the Resource Group where the Data Collection Endpoint should exist. Changing this forces a new Data Collection Endpoint to be created.
  /// [tags] A mapping of tags which should be assigned to the Data Collection Endpoint.
  DataCollectionEndpointArgs({
    pulumi.Output<String>? description,
    pulumi.Output<String>? kind,
    pulumi.Output<String>? location,
    pulumi.Output<String>? name,
    pulumi.Output<bool>? publicNetworkAccessEnabled,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      description = pulumi.Input.asOptionalInput<String>(description),
      kind = pulumi.Input.asOptionalInput<String>(kind),
      location = pulumi.Input.asOptionalInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      publicNetworkAccessEnabled = pulumi.Input.asOptionalInput<bool>(publicNetworkAccessEnabled),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'kind': ?kind,
      'location': ?location,
      'name': ?name,
      'publicNetworkAccessEnabled': ?publicNetworkAccessEnabled,
      'resourceGroupName': resourceGroupName,
      'tags': ?tags,
    };
  }

  factory DataCollectionEndpointArgs.fromMap(Map<String, dynamic> map) {
    return DataCollectionEndpointArgs(
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      kind: map['kind'] == null ? null : pulumi.Output.create<String>(map['kind'] as String),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      publicNetworkAccessEnabled: map['publicNetworkAccessEnabled'] == null ? null : pulumi.Output.create<bool>(map['publicNetworkAccessEnabled'] as bool),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

