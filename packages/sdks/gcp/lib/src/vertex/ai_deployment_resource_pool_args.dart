// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ai_deployment_resource_pool_dedicated_resources.dart';

/// {@template pulumi_vertex_ai_deployment_resource_pool_ai_deployment_resource_pool_args_doc}
/// The set of arguments for AiDeploymentResourcePool.
/// {@endtemplate}
/// {@macro pulumi_vertex_ai_deployment_resource_pool_ai_deployment_resource_pool_args_doc}
class AiDeploymentResourcePoolArgs {
  /// The underlying dedicated resources that the deployment resource pool uses.
  /// Structure is documented below.
  final pulumi.Input<AiDeploymentResourcePoolDedicatedResources>? dedicatedResources;
  /// The resource name of deployment resource pool. The maximum length is 63 characters, and valid characters are `/^a-z?$/`.
  final pulumi.Input<String>? name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// The region of deployment resource pool. eg us-central1
  final pulumi.Input<String>? region;

  /// Creates a new [AiDeploymentResourcePoolArgs].
  /// [dedicatedResources] The underlying dedicated resources that the deployment resource pool uses.
  /// [name] The resource name of deployment resource pool. The maximum length is 63 characters, and valid characters are `/^a-z?$/`.
  /// [project] The ID of the project in which the resource belongs.
  /// [region] The region of deployment resource pool. eg us-central1
  AiDeploymentResourcePoolArgs({
    pulumi.Output<AiDeploymentResourcePoolDedicatedResources>? dedicatedResources,
    pulumi.Output<String>? name,
    pulumi.Output<String>? project,
    pulumi.Output<String>? region,
  }) :
      dedicatedResources = pulumi.Input.asOptionalInput<AiDeploymentResourcePoolDedicatedResources>(dedicatedResources),
      name = pulumi.Input.asOptionalInput<String>(name),
      project = pulumi.Input.asOptionalInput<String>(project),
      region = pulumi.Input.asOptionalInput<String>(region);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dedicatedResources': ?pulumi.Input.mapOptionalInputValue<AiDeploymentResourcePoolDedicatedResources, Map<String, dynamic>>(dedicatedResources, (value) => value.toMap()),
      'name': ?name,
      'project': ?project,
      'region': ?region,
    };
  }

  factory AiDeploymentResourcePoolArgs.fromMap(Map<String, dynamic> map) {
    return AiDeploymentResourcePoolArgs(
      dedicatedResources: map['dedicatedResources'] == null ? null : pulumi.Output.create<AiDeploymentResourcePoolDedicatedResources>(AiDeploymentResourcePoolDedicatedResources.fromMap((map['dedicatedResources'] as Map).cast<String, dynamic>())),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
    );
  }
}

