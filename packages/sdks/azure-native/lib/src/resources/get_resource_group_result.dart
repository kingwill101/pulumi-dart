// ignore_for_file: unused_element, unnecessary_cast

import 'resource_group_properties_response.dart';

/// Result data returned by getResourceGroup.
class GetResourceGroupResult {
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// The ID of the resource group.
  final String? id;
  /// The location of the resource group. It cannot be changed after the resource group has been created. It must be one of the supported Azure locations.
  final String? location;
  /// The ID of the resource that manages this resource group.
  final String? managedBy;
  /// The name of the resource group.
  final String? name;
  /// The resource group properties.
  final ResourceGroupPropertiesResponse? properties;
  /// The tags attached to the resource group.
  final Map<String, String>? tags;
  /// The type of the resource group.
  final String? type;

  /// Creates a new [GetResourceGroupResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [id] The ID of the resource group.
  /// [location] The location of the resource group. It cannot be changed after the resource group has been created. It must be one of the supported Azure locations.
  /// [managedBy] The ID of the resource that manages this resource group.
  /// [name] The name of the resource group.
  /// [properties] The resource group properties.
  /// [tags] The tags attached to the resource group.
  /// [type] The type of the resource group.
  const GetResourceGroupResult({
    this.azureApiVersion,
    this.id,
    this.location,
    this.managedBy,
    this.name,
    this.properties,
    this.tags,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': ?azureApiVersion,
      'id': ?id,
      'location': ?location,
      'managedBy': ?managedBy,
      'name': ?name,
      'properties': ?properties?.toMap(),
      'tags': ?tags,
      'type': ?type,
    };
  }

  factory GetResourceGroupResult.fromMap(Map<String, dynamic> map) {
    return GetResourceGroupResult(
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      managedBy: (() { final guardedValue = map['managedBy']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      properties: (() { final guardedValue = map['properties']; if (guardedValue == null) return null; return ResourceGroupPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
