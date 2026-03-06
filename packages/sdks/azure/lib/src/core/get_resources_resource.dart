// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetResourcesResource {
  /// The ID of this Resource.
  final pulumi.Input<String> id;
  /// The Azure Region in which this Resource exists.
  final pulumi.Input<String> location;
  /// The name of the Resource.
  final pulumi.Input<String> name;
  /// The name of the Resource group where the Resources are located.
  final pulumi.Input<String> resourceGroupName;
  /// A map of tags assigned to this Resource.
  final pulumi.Input<Map<String, String>> tags;
  /// The Resource Type of the Resources you want to list (e.g. `Microsoft.Network/virtualNetworks`). A resource type's name follows the format: `{resource-provider}/{resource-type}`. The resource type for a key vault is `Microsoft.KeyVault/vaults`. A full list of available Resource Providers can be found [here](https://docs.microsoft.com/azure/azure-resource-manager/azure-services-resource-providers). A full list of Resources Types can be found [here](https://learn.microsoft.com/en-us/azure/templates/#find-resources).
  final pulumi.Input<String> type;

  /// Creates a new [GetResourcesResource].
  /// [id] The ID of this Resource.
  /// [location] The Azure Region in which this Resource exists.
  /// [name] The name of the Resource.
  /// [resourceGroupName] The name of the Resource group where the Resources are located.
  /// [tags] A map of tags assigned to this Resource.
  /// [type] The Resource Type of the Resources you want to list (e.g. `Microsoft.Network/virtualNetworks`). A resource type's name follows the format: `{resource-provider}/{resource-type}`. The resource type for a key vault is `Microsoft.KeyVault/vaults`. A full list of available Resource Providers can be found [here](https://docs.microsoft.com/azure/azure-resource-manager/azure-services-resource-providers). A full list of Resources Types can be found [here](https://learn.microsoft.com/en-us/azure/templates/#find-resources).
  const GetResourcesResource({
    required this.id,
    required this.location,
    required this.name,
    required this.resourceGroupName,
    required this.tags,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'location': location,
      'name': name,
      'resourceGroupName': resourceGroupName,
      'tags': tags,
      'type': type,
    };
  }

  factory GetResourcesResource.fromMap(Map<String, dynamic> map) {
    return GetResourcesResource(
      id: pulumi.Input.fromValue(map['id'] as String),
      location: pulumi.Input.fromValue(map['location'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      tags: pulumi.Input.fromValue((map['tags'] as Map).cast<String, String>()),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}

