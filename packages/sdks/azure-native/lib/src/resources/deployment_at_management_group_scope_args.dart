// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'deployment_properties.dart';

/// {@template pulumi_resources_deployment_at_management_group_scope_args_doc}
/// The set of arguments for DeploymentAtManagementGroupScope.
/// {@endtemplate}
/// {@macro pulumi_resources_deployment_at_management_group_scope_args_doc}
class DeploymentAtManagementGroupScopeArgs {
  /// The name of the deployment.
  final pulumi.Input<String>? deploymentName;
  /// The management group ID.
  final pulumi.Input<String> groupId;
  /// The location to store the deployment data.
  final pulumi.Input<String>? location;
  /// The deployment properties.
  final pulumi.Input<DeploymentProperties> properties;
  /// Deployment tags
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [DeploymentAtManagementGroupScopeArgs].
  /// [deploymentName] The name of the deployment.
  /// [groupId] The management group ID.
  /// [location] The location to store the deployment data.
  /// [properties] The deployment properties.
  /// [tags] Deployment tags
  DeploymentAtManagementGroupScopeArgs({
    pulumi.Output<String>? deploymentName,
    required pulumi.Output<String> groupId,
    pulumi.Output<String>? location,
    required pulumi.Output<DeploymentProperties> properties,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      deploymentName = pulumi.Input.asOptionalInput<String>(deploymentName),
      groupId = pulumi.Input.asInput<String>(groupId),
      location = pulumi.Input.asOptionalInput<String>(location),
      properties = pulumi.Input.asInput<DeploymentProperties>(properties),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deploymentName': ?deploymentName,
      'groupId': groupId,
      'location': ?location,
      'properties': pulumi.Input.mapInputValue<DeploymentProperties, Map<String, dynamic>>(properties, (value) => value.toMap()),
      'tags': ?tags,
    };
  }

  factory DeploymentAtManagementGroupScopeArgs.fromMap(Map<String, dynamic> map) {
    return DeploymentAtManagementGroupScopeArgs(
      deploymentName: map['deploymentName'] == null ? null : pulumi.Output.create<String>(map['deploymentName'] as String),
      groupId: pulumi.Output.create<String>(map['groupId'] as String),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      properties: pulumi.Output.create<DeploymentProperties>(DeploymentProperties.fromMap((map['properties'] as Map).cast<String, dynamic>())),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

