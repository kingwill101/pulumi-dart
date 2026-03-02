// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'deployment_properties.dart';

/// {@template pulumi_resources_deployment_at_tenant_scope_args_doc}
/// The set of arguments for DeploymentAtTenantScope.
/// {@endtemplate}
/// {@macro pulumi_resources_deployment_at_tenant_scope_args_doc}
class DeploymentAtTenantScopeArgs {
  /// The name of the deployment.
  final pulumi.Input<String>? deploymentName;
  /// The location to store the deployment data.
  final pulumi.Input<String>? location;
  /// The deployment properties.
  final pulumi.Input<DeploymentProperties> properties;
  /// Deployment tags
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [DeploymentAtTenantScopeArgs].
  /// [deploymentName] The name of the deployment.
  /// [location] The location to store the deployment data.
  /// [properties] The deployment properties.
  /// [tags] Deployment tags
  DeploymentAtTenantScopeArgs({
    this.deploymentName,
    this.location,
    required this.properties,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deploymentName': ?deploymentName,
      'location': ?location,
      'properties': pulumi.Input.mapInputValue<DeploymentProperties, Map<String, dynamic>>(properties, (value) => value.toMap()),
      'tags': ?tags,
    };
  }

  factory DeploymentAtTenantScopeArgs.fromMap(Map<String, dynamic> map) {
    return DeploymentAtTenantScopeArgs(
      deploymentName: map['deploymentName'] == null ? null : (map['deploymentName'] as String).input(),
      location: map['location'] == null ? null : (map['location'] as String).input(),
      properties: (DeploymentProperties.fromMap((map['properties'] as Map).cast<String, dynamic>())).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
    );
  }
}

