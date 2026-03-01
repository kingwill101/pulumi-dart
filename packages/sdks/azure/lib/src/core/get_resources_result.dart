// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_resources_resource.dart';

/// Result data returned by getResources.
class GetResourcesResult {
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// The name of this Resource.
  final String name;
  final Map<String, String>? requiredTags;
  /// The name of the Resource Group in which this Resource exists.
  final String resourceGroupName;
  /// One or more `resource` blocks as defined below.
  final List<GetResourcesResource> resources;
  /// The type of this Resource. (e.g. `Microsoft.Network/virtualNetworks`).
  final String type;

  /// Creates a new [GetResourcesResult].
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [name] The name of this Resource.
  /// [requiredTags] Optional.
  /// [resourceGroupName] The name of the Resource Group in which this Resource exists.
  /// [resources] One or more `resource` blocks as defined below.
  /// [type] The type of this Resource. (e.g. `Microsoft.Network/virtualNetworks`).
  GetResourcesResult({
    required this.id,
    required this.name,
    this.requiredTags,
    required this.resourceGroupName,
    required this.resources,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'name': name,
      'requiredTags': ?requiredTags,
      'resourceGroupName': resourceGroupName,
      'resources': pulumi.Input.encodeList<GetResourcesResource, Map<String, dynamic>>(resources, (value) => value.toMap()),
      'type': type,
    };
  }

  factory GetResourcesResult.fromMap(Map<String, dynamic> map) {
    return GetResourcesResult(
      id: map['id'] as String,
      name: map['name'] as String,
      requiredTags: map['requiredTags'] == null ? null : (map['requiredTags'] as Map).cast<String, String>(),
      resourceGroupName: map['resourceGroupName'] as String,
      resources: pulumi.Input.decodeList<GetResourcesResource>(map['resources'], (value) => GetResourcesResource.fromMap((value as Map).cast<String, dynamic>())),
      type: map['type'] as String,
    );
  }
}

