// ignore_for_file: unused_element, unnecessary_cast

import 'deployment_properties_extended_response.dart';

/// Result data returned by getDeploymentAtSubscriptionScope.
class GetDeploymentAtSubscriptionScopeResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// The ID of the deployment.
  final String id;
  /// the location of the deployment.
  final String? location;
  /// The name of the deployment.
  final String name;
  /// Deployment properties.
  final DeploymentPropertiesExtendedResponse properties;
  /// Deployment tags
  final Map<String, String>? tags;
  /// The type of the deployment.
  final String type;

  /// Creates a new [GetDeploymentAtSubscriptionScopeResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [id] The ID of the deployment.
  /// [location] the location of the deployment.
  /// [name] The name of the deployment.
  /// [properties] Deployment properties.
  /// [tags] Deployment tags
  /// [type] The type of the deployment.
  GetDeploymentAtSubscriptionScopeResult({
    required this.azureApiVersion,
    required this.id,
    this.location,
    required this.name,
    required this.properties,
    this.tags,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'id': id,
      'location': ?location,
      'name': name,
      'properties': properties.toMap(),
      'tags': ?tags,
      'type': type,
    };
  }

  factory GetDeploymentAtSubscriptionScopeResult.fromMap(Map<String, dynamic> map) {
    return GetDeploymentAtSubscriptionScopeResult(
      azureApiVersion: map['azureApiVersion'] as String,
      id: map['id'] as String,
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: map['name'] as String,
      properties: DeploymentPropertiesExtendedResponse.fromMap((map['properties']! as Map).cast<String, dynamic>()),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      type: map['type'] as String,
    );
  }
}

