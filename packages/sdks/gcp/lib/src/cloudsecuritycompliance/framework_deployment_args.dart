// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'framework_deployment_cloud_control_metadata.dart';
import 'framework_deployment_framework.dart';
import 'framework_deployment_target_resource_config.dart';

/// {@template pulumi_cloudsecuritycompliance_framework_deployment_framework_deployment_args_doc}
/// The set of arguments for FrameworkDeployment.
/// {@endtemplate}
/// {@macro pulumi_cloudsecuritycompliance_framework_deployment_framework_deployment_args_doc}
class FrameworkDeploymentArgs {
  /// Deployment mode and parameters for each of the Cloud Controls in
  /// the framework. Every Cloud Control in the framework must have a
  /// CloudControlMetadata.
  /// Structure is documented below.
  final pulumi.Input<List<FrameworkDeploymentCloudControlMetadata>> cloudControlMetadatas;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String>? deletionPolicy;
  /// User provided description of the Framework deployment
  final pulumi.Input<String>? description;
  /// FrameworkReference contains the reference of a framework.
  /// Structure is documented below.
  final pulumi.Input<FrameworkDeploymentFramework> framework;
  /// User provided identifier. It should be unique in scope of a parent.
  /// This is optional and if not provided, a random UUID will be generated.
  final pulumi.Input<String> frameworkDeploymentId;
  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  final pulumi.Input<String>? location;
  /// (Optional, Deprecated)
  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  ///
  /// &gt; **Warning:** Use `parent` instead.
  final pulumi.Input<String>? organization;
  /// The parent resource in which to create the resource.
  /// Must be in one of the following formats:
  /// * `projects/{{project}}`
  /// * `organizations/{{organization}}`
  final pulumi.Input<String>? parent;
  /// TargetResourceConfig contains either the name of the targetResource or
  /// contains the config to create a new target_resource.
  /// Structure is documented below.
  final pulumi.Input<FrameworkDeploymentTargetResourceConfig> targetResourceConfig;

  /// Creates a new [FrameworkDeploymentArgs].
  /// [cloudControlMetadatas] Deployment mode and parameters for each of the Cloud Controls in
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [description] User provided description of the Framework deployment
  /// [framework] FrameworkReference contains the reference of a framework.
  /// [frameworkDeploymentId] User provided identifier. It should be unique in scope of a parent.
  /// [location] Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  /// [organization] (Optional, Deprecated)
  /// [parent] The parent resource in which to create the resource.
  /// [targetResourceConfig] TargetResourceConfig contains either the name of the targetResource or
  const FrameworkDeploymentArgs({
    required this.cloudControlMetadatas,
    this.deletionPolicy,
    this.description,
    required this.framework,
    required this.frameworkDeploymentId,
    this.location,
    this.organization,
    this.parent,
    required this.targetResourceConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cloudControlMetadatas': pulumi.Input.mapInputValue<List<FrameworkDeploymentCloudControlMetadata>, List<Map<String, dynamic>>>(cloudControlMetadatas, (value) => pulumi.Input.encodeList<FrameworkDeploymentCloudControlMetadata, Map<String, dynamic>>(value, (value) => value.toMap())),
      'deletionPolicy': ?deletionPolicy,
      'description': ?description,
      'framework': pulumi.Input.mapInputValue<FrameworkDeploymentFramework, Map<String, dynamic>>(framework, (value) => value.toMap()),
      'frameworkDeploymentId': frameworkDeploymentId,
      'location': ?location,
      'organization': ?organization,
      'parent': ?parent,
      'targetResourceConfig': pulumi.Input.mapInputValue<FrameworkDeploymentTargetResourceConfig, Map<String, dynamic>>(targetResourceConfig, (value) => value.toMap()),
    };
  }

  factory FrameworkDeploymentArgs.fromMap(Map<String, dynamic> map) {
    return FrameworkDeploymentArgs(
      cloudControlMetadatas: pulumi.Input.fromValue(pulumi.Input.decodeList<FrameworkDeploymentCloudControlMetadata>(map['cloudControlMetadatas']!, (value) => FrameworkDeploymentCloudControlMetadata.fromMap((value as Map).cast<String, dynamic>()))),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      framework: pulumi.Input.fromValue(FrameworkDeploymentFramework.fromMap((map['framework']! as Map).cast<String, dynamic>())),
      frameworkDeploymentId: pulumi.Input.fromValue(map['frameworkDeploymentId'] as String),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      organization: (() { final guardedValue = map['organization']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      parent: (() { final guardedValue = map['parent']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      targetResourceConfig: pulumi.Input.fromValue(FrameworkDeploymentTargetResourceConfig.fromMap((map['targetResourceConfig']! as Map).cast<String, dynamic>())),
    );
  }
}
