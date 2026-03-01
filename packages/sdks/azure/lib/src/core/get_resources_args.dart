// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_core_get_resources_get_resources_args_doc}
/// Arguments for getResources.
/// {@endtemplate}
/// {@macro pulumi_core_get_resources_get_resources_args_doc}
class GetResourcesArgs {
  /// The name of the Resource.
  final pulumi.Input<String>? name;
  /// A mapping of tags which the resource has to have in order to be included in the result.
  final pulumi.Input<Map<String, String>>? requiredTags;
  /// The name of the Resource group where the Resources are located.
  final pulumi.Input<String>? resourceGroupName;
  /// The Resource Type of the Resources you want to list (e.g. `Microsoft.Network/virtualNetworks`). A resource type's name follows the format: `{resource-provider}/{resource-type}`. The resource type for a key vault is `Microsoft.KeyVault/vaults`. A full list of available Resource Providers can be found [here](https://docs.microsoft.com/azure/azure-resource-manager/azure-services-resource-providers). A full list of Resources Types can be found [here](https://learn.microsoft.com/en-us/azure/templates/#find-resources).
  final pulumi.Input<String>? type;

  /// Creates a new [GetResourcesArgs].
  /// [name] The name of the Resource.
  /// [requiredTags] A mapping of tags which the resource has to have in order to be included in the result.
  /// [resourceGroupName] The name of the Resource group where the Resources are located.
  /// [type] The Resource Type of the Resources you want to list (e.g. `Microsoft.Network/virtualNetworks`). A resource type's name follows the format: `{resource-provider}/{resource-type}`. The resource type for a key vault is `Microsoft.KeyVault/vaults`. A full list of available Resource Providers can be found [here](https://docs.microsoft.com/azure/azure-resource-manager/azure-services-resource-providers). A full list of Resources Types can be found [here](https://learn.microsoft.com/en-us/azure/templates/#find-resources).
  GetResourcesArgs({
    pulumi.Output<String>? name,
    pulumi.Output<Map<String, String>>? requiredTags,
    pulumi.Output<String>? resourceGroupName,
    pulumi.Output<String>? type,
  }) :
      name = pulumi.Input.asOptionalInput<String>(name),
      requiredTags = pulumi.Input.asOptionalInput<Map<String, String>>(requiredTags),
      resourceGroupName = pulumi.Input.asOptionalInput<String>(resourceGroupName),
      type = pulumi.Input.asOptionalInput<String>(type);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'requiredTags': ?requiredTags,
      'resourceGroupName': ?resourceGroupName,
      'type': ?type,
    };
  }

  factory GetResourcesArgs.fromMap(Map<String, dynamic> map) {
    return GetResourcesArgs(
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      requiredTags: map['requiredTags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['requiredTags'] as Map).cast<String, String>()),
      resourceGroupName: map['resourceGroupName'] == null ? null : pulumi.Output.create<String>(map['resourceGroupName'] as String),
      type: map['type'] == null ? null : pulumi.Output.create<String>(map['type'] as String),
    );
  }
}

