// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'deployment_properties.dart';

/// {@template pulumi_resources_deployment_at_scope_args_doc}
/// The set of arguments for DeploymentAtScope.
/// {@endtemplate}
/// {@macro pulumi_resources_deployment_at_scope_args_doc}
class DeploymentAtScopeArgs {
  /// The name of the deployment.
  final pulumi.Input<String>? deploymentName;
  /// The location to store the deployment data.
  final pulumi.Input<String>? location;
  /// The deployment properties.
  final pulumi.Input<DeploymentProperties> properties;
  /// The resource scope.
  final pulumi.Input<String> scope;
  /// Deployment tags
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [DeploymentAtScopeArgs].
  /// [deploymentName] The name of the deployment.
  /// [location] The location to store the deployment data.
  /// [properties] The deployment properties.
  /// [scope] The resource scope.
  /// [tags] Deployment tags
  DeploymentAtScopeArgs({
    this.deploymentName,
    this.location,
    required this.properties,
    required this.scope,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deploymentName': ?deploymentName,
      'location': ?location,
      'properties': pulumi.Input.mapInputValue<DeploymentProperties, Map<String, dynamic>>(properties, (value) => value.toMap()),
      'scope': scope,
      'tags': ?tags,
    };
  }

  factory DeploymentAtScopeArgs.fromMap(Map<String, dynamic> map) {
    return DeploymentAtScopeArgs(
      deploymentName: map['deploymentName'] == null ? null : (map['deploymentName'] as String).input(),
      location: map['location'] == null ? null : (map['location'] as String).input(),
      properties: (DeploymentProperties.fromMap((map['properties'] as Map).cast<String, dynamic>())).input(),
      scope: (map['scope'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
    );
  }
}

