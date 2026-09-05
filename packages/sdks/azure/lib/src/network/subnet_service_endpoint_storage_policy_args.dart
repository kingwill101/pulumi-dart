// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'subnet_service_endpoint_storage_policy_definition.dart';

/// {@template pulumi_network_subnet_service_endpoint_storage_policy_subnet_service_endpoint_storage_policy_args_doc}
/// The set of arguments for SubnetServiceEndpointStoragePolicy.
/// {@endtemplate}
/// {@macro pulumi_network_subnet_service_endpoint_storage_policy_subnet_service_endpoint_storage_policy_args_doc}
class SubnetServiceEndpointStoragePolicyArgs {
  /// A `definition` block as defined below
  final pulumi.Input<List<SubnetServiceEndpointStoragePolicyDefinition>?>? definitions;
  /// The Azure Region where the Subnet Service Endpoint Storage Policy should exist. Changing this forces a new Subnet Service Endpoint Storage Policy to be created.
  final pulumi.Input<String?>? location;
  /// The name which should be used for this Subnet Service Endpoint Storage Policy. Changing this forces a new Subnet Service Endpoint Storage Policy to be created.
  final pulumi.Input<String?>? name;
  /// The name of the Resource Group where the Subnet Service Endpoint Storage Policy should exist. Changing this forces a new Subnet Service Endpoint Storage Policy to be created.
  final pulumi.Input<String> resourceGroupName;
  /// A mapping of tags which should be assigned to the Subnet Service Endpoint Storage Policy.
  final pulumi.Input<Map<String, String>?>? tags;

  /// Creates a new [SubnetServiceEndpointStoragePolicyArgs].
  /// [definitions] A `definition` block as defined below
  /// [location] The Azure Region where the Subnet Service Endpoint Storage Policy should exist. Changing this forces a new Subnet Service Endpoint Storage Policy to be created.
  /// [name] The name which should be used for this Subnet Service Endpoint Storage Policy. Changing this forces a new Subnet Service Endpoint Storage Policy to be created.
  /// [resourceGroupName] The name of the Resource Group where the Subnet Service Endpoint Storage Policy should exist. Changing this forces a new Subnet Service Endpoint Storage Policy to be created.
  /// [tags] A mapping of tags which should be assigned to the Subnet Service Endpoint Storage Policy.
  const SubnetServiceEndpointStoragePolicyArgs({
    this.definitions,
    this.location,
    this.name,
    required this.resourceGroupName,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'definitions': ?pulumi.Input.mapOptionalInputValue<List<SubnetServiceEndpointStoragePolicyDefinition>, List<Map<String, dynamic>>>(definitions, (value) => pulumi.Input.encodeList<SubnetServiceEndpointStoragePolicyDefinition, Map<String, dynamic>>(value, (value) => value.toMap())),
      'location': ?location,
      'name': ?name,
      'resourceGroupName': resourceGroupName,
      'tags': ?tags,
    };
  }

  factory SubnetServiceEndpointStoragePolicyArgs.fromMap(Map<String, dynamic> map) {
    return SubnetServiceEndpointStoragePolicyArgs(
      definitions: (() { final guardedValue = map['definitions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<SubnetServiceEndpointStoragePolicyDefinition>(guardedValue, (value) => SubnetServiceEndpointStoragePolicyDefinition.fromMap((value as Map).cast<String, dynamic>()))); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
