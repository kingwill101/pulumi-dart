// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_resources_resource.dart';

/// Result data returned by getResources.
class GetResourcesResult {
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  /// The name of this Resource.
  final String? name;
  final Map<String, String>? requiredTags;
  /// The name of the Resource Group in which this Resource exists.
  final String? resourceGroupName;
  /// One or more `resource` blocks as defined below.
  final List<GetResourcesResource>? resources;
  /// The type of this Resource. (e.g. `Microsoft.Network/virtualNetworks`).
  final String? type;

  /// Creates a new [GetResourcesResult].
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [name] The name of this Resource.
  /// [requiredTags] Optional.
  /// [resourceGroupName] The name of the Resource Group in which this Resource exists.
  /// [resources] One or more `resource` blocks as defined below.
  /// [type] The type of this Resource. (e.g. `Microsoft.Network/virtualNetworks`).
  const GetResourcesResult({
    this.id,
    this.name,
    this.requiredTags,
    this.resourceGroupName,
    this.resources,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
      'name': ?name,
      'requiredTags': ?requiredTags,
      'resourceGroupName': ?resourceGroupName,
      'resources': ?(() { final guardedValue = resources; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetResourcesResource, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'type': ?type,
    };
  }

  factory GetResourcesResult.fromMap(Map<String, dynamic> map) {
    return GetResourcesResult(
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      requiredTags: (() { final guardedValue = map['requiredTags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      resourceGroupName: (() { final guardedValue = map['resourceGroupName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      resources: (() { final guardedValue = map['resources']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetResourcesResource>(guardedValue, (value) => GetResourcesResource.fromMap((value as Map).cast<String, dynamic>())); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
