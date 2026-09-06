// ignore_for_file: unused_element, unnecessary_cast

import 'deployment_properties_extended_response.dart';

/// Result data returned by getDeploymentAtTenantScope.
class GetDeploymentAtTenantScopeResult {
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// The ID of the deployment.
  final String? id;
  /// the location of the deployment.
  final String? location;
  /// The name of the deployment.
  final String? name;
  /// Deployment properties.
  final DeploymentPropertiesExtendedResponse? properties;
  /// Deployment tags
  final Map<String, String>? tags;
  /// The type of the deployment.
  final String? type;

  /// Creates a new [GetDeploymentAtTenantScopeResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [id] The ID of the deployment.
  /// [location] the location of the deployment.
  /// [name] The name of the deployment.
  /// [properties] Deployment properties.
  /// [tags] Deployment tags
  /// [type] The type of the deployment.
  const GetDeploymentAtTenantScopeResult({
    this.azureApiVersion,
    this.id,
    this.location,
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
      'name': ?name,
      'properties': ?properties?.toMap(),
      'tags': ?tags,
      'type': ?type,
    };
  }

  factory GetDeploymentAtTenantScopeResult.fromMap(Map<String, dynamic> map) {
    return GetDeploymentAtTenantScopeResult(
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      properties: (() { final guardedValue = map['properties']; if (guardedValue == null) return null; return DeploymentPropertiesExtendedResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
