// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'subnet_service_endpoint_storage_policy_definition.dart';

/// Input properties used for looking up and filtering SubnetServiceEndpointStoragePolicy resources.
class SubnetServiceEndpointStoragePolicyState {
  /// A `definition` block as defined below
  final pulumi.Input<List<SubnetServiceEndpointStoragePolicyDefinition>>? definitions;
  /// The Azure Region where the Subnet Service Endpoint Storage Policy should exist. Changing this forces a new Subnet Service Endpoint Storage Policy to be created.
  final pulumi.Input<String>? location;
  /// The name which should be used for this Subnet Service Endpoint Storage Policy. Changing this forces a new Subnet Service Endpoint Storage Policy to be created.
  final pulumi.Input<String>? name;
  /// The name of the Resource Group where the Subnet Service Endpoint Storage Policy should exist. Changing this forces a new Subnet Service Endpoint Storage Policy to be created.
  final pulumi.Input<String>? resourceGroupName;
  /// A mapping of tags which should be assigned to the Subnet Service Endpoint Storage Policy.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [SubnetServiceEndpointStoragePolicyState].
  /// [definitions] A `definition` block as defined below
  /// [location] The Azure Region where the Subnet Service Endpoint Storage Policy should exist. Changing this forces a new Subnet Service Endpoint Storage Policy to be created.
  /// [name] The name which should be used for this Subnet Service Endpoint Storage Policy. Changing this forces a new Subnet Service Endpoint Storage Policy to be created.
  /// [resourceGroupName] The name of the Resource Group where the Subnet Service Endpoint Storage Policy should exist. Changing this forces a new Subnet Service Endpoint Storage Policy to be created.
  /// [tags] A mapping of tags which should be assigned to the Subnet Service Endpoint Storage Policy.
  SubnetServiceEndpointStoragePolicyState({
    pulumi.Output<List<SubnetServiceEndpointStoragePolicyDefinition>>? definitions,
    pulumi.Output<String>? location,
    pulumi.Output<String>? name,
    pulumi.Output<String>? resourceGroupName,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      definitions = pulumi.Input.asOptionalInput<List<SubnetServiceEndpointStoragePolicyDefinition>>(definitions),
      location = pulumi.Input.asOptionalInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      resourceGroupName = pulumi.Input.asOptionalInput<String>(resourceGroupName),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'definitions': ?pulumi.Input.mapOptionalInputValue<List<SubnetServiceEndpointStoragePolicyDefinition>, List<Map<String, dynamic>>>(definitions, (value) => pulumi.Input.encodeList<SubnetServiceEndpointStoragePolicyDefinition, Map<String, dynamic>>(value, (value) => value.toMap())),
      'location': ?location,
      'name': ?name,
      'resourceGroupName': ?resourceGroupName,
      'tags': ?tags,
    };
  }

  factory SubnetServiceEndpointStoragePolicyState.fromMap(Map<String, dynamic> map) {
    return SubnetServiceEndpointStoragePolicyState(
      definitions: map['definitions'] == null ? null : pulumi.Output.create<List<SubnetServiceEndpointStoragePolicyDefinition>>(pulumi.Input.decodeList<SubnetServiceEndpointStoragePolicyDefinition>(map['definitions'], (value) => SubnetServiceEndpointStoragePolicyDefinition.fromMap((value as Map).cast<String, dynamic>()))),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      resourceGroupName: map['resourceGroupName'] == null ? null : pulumi.Output.create<String>(map['resourceGroupName'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

