// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'framework_deployment_cloud_control_deployment_reference.dart';
import 'framework_deployment_cloud_control_metadata.dart';
import 'framework_deployment_framework.dart';
import 'framework_deployment_target_resource_config.dart';

/// Input properties used for looking up and filtering FrameworkDeployment resources.
class FrameworkDeploymentState {
  /// The references to the cloud control deployments. It has all the
  /// CloudControlDeployments which are either directly added in the framework or
  /// through a CloudControlGroup.
  /// Example: If a framework deployment deploys two
  /// cloud controls, cc-deployment-1 and cc-deployment-2, then the
  /// cloud_control_deployment_references will be:
  /// {
  /// cloud_control_deployment_reference: {
  /// cloud_control_deployment:
  /// "organizations/{organization}/locations/{location}/cloudControlDeployments/cc-deployment-1"
  /// },
  /// cloud_control_deployment_reference: {
  /// cloud_control_deployment:
  /// "organizations/{organization}/locations/{location}/cloudControlDeployments/cc-deployment-2"
  /// }
  /// Structure is documented below.
  final pulumi.Input<List<FrameworkDeploymentCloudControlDeploymentReference>>? cloudControlDeploymentReferences;
  /// Deployment mode and parameters for each of the Cloud Controls in
  /// the framework. Every Cloud Control in the framework must have a
  /// CloudControlMetadata.
  /// Structure is documented below.
  final pulumi.Input<List<FrameworkDeploymentCloudControlMetadata>>? cloudControlMetadatas;
  /// The resource on which the Framework is deployed based on the provided
  /// TargetResourceConfig in the following format:
  /// organizations/{organization}, folders/{folder} or projects/{project}
  final pulumi.Input<String>? computedTargetResource;
  /// The time at which the resource was created.
  final pulumi.Input<String>? createTime;
  /// The deployment state of the framework.
  /// Possible values:
  /// DEPLOYMENT_STATE_VALIDATING
  /// DEPLOYMENT_STATE_CREATING
  /// DEPLOYMENT_STATE_DELETING
  /// DEPLOYMENT_STATE_FAILED
  /// DEPLOYMENT_STATE_READY
  /// DEPLOYMENT_STATE_PARTIALLY_DEPLOYED
  /// DEPLOYMENT_STATE_PARTIALLY_DELETED
  final pulumi.Input<String>? deploymentState;
  /// User provided description of the Framework deployment
  final pulumi.Input<String>? description;
  /// To prevent concurrent updates from overwriting each other, always provide
  /// the `etag` when you update a FrameworkDeployment. You can also
  /// provide the `etag` when you delete a FrameworkDeployment, to help
  /// ensure that you're deleting the intended version of the
  /// FrameworkDeployment.
  final pulumi.Input<String>? etag;
  /// FrameworkReference contains the reference of a framework.
  /// Structure is documented below.
  final pulumi.Input<FrameworkDeploymentFramework>? framework;
  /// User provided identifier. It should be unique in scope of a parent.
  /// This is optional and if not provided, a random UUID will be generated.
  final pulumi.Input<String>? frameworkDeploymentId;
  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  final pulumi.Input<String>? location;
  /// Identifier. FrameworkDeployment name in the following format:
  /// organizations/{organization}/locations/{location}/frameworkDeployments/{framework_deployment_id}
  final pulumi.Input<String>? name;
  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  final pulumi.Input<String>? organization;
  /// TargetResourceConfig contains either the name of the target_resource or
  /// contains the config to create a new target_resource.
  /// Structure is documented below.
  final pulumi.Input<FrameworkDeploymentTargetResourceConfig>? targetResourceConfig;
  /// The display name of the target resource.
  final pulumi.Input<String>? targetResourceDisplayName;
  /// The time at which the resource last updated.
  final pulumi.Input<String>? updateTime;

  /// Creates a new [FrameworkDeploymentState].
  /// [cloudControlDeploymentReferences] The references to the cloud control deployments. It has all the
  /// [cloudControlMetadatas] Deployment mode and parameters for each of the Cloud Controls in
  /// [computedTargetResource] The resource on which the Framework is deployed based on the provided
  /// [createTime] The time at which the resource was created.
  /// [deploymentState] The deployment state of the framework.
  /// [description] User provided description of the Framework deployment
  /// [etag] To prevent concurrent updates from overwriting each other, always provide
  /// [framework] FrameworkReference contains the reference of a framework.
  /// [frameworkDeploymentId] User provided identifier. It should be unique in scope of a parent.
  /// [location] Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  /// [name] Identifier. FrameworkDeployment name in the following format:
  /// [organization] Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  /// [targetResourceConfig] TargetResourceConfig contains either the name of the target_resource or
  /// [targetResourceDisplayName] The display name of the target resource.
  /// [updateTime] The time at which the resource last updated.
  FrameworkDeploymentState({
    pulumi.Output<List<FrameworkDeploymentCloudControlDeploymentReference>>? cloudControlDeploymentReferences,
    pulumi.Output<List<FrameworkDeploymentCloudControlMetadata>>? cloudControlMetadatas,
    pulumi.Output<String>? computedTargetResource,
    pulumi.Output<String>? createTime,
    pulumi.Output<String>? deploymentState,
    pulumi.Output<String>? description,
    pulumi.Output<String>? etag,
    pulumi.Output<FrameworkDeploymentFramework>? framework,
    pulumi.Output<String>? frameworkDeploymentId,
    pulumi.Output<String>? location,
    pulumi.Output<String>? name,
    pulumi.Output<String>? organization,
    pulumi.Output<FrameworkDeploymentTargetResourceConfig>? targetResourceConfig,
    pulumi.Output<String>? targetResourceDisplayName,
    pulumi.Output<String>? updateTime,
  }) :
      cloudControlDeploymentReferences = pulumi.Input.asOptionalInput<List<FrameworkDeploymentCloudControlDeploymentReference>>(cloudControlDeploymentReferences),
      cloudControlMetadatas = pulumi.Input.asOptionalInput<List<FrameworkDeploymentCloudControlMetadata>>(cloudControlMetadatas),
      computedTargetResource = pulumi.Input.asOptionalInput<String>(computedTargetResource),
      createTime = pulumi.Input.asOptionalInput<String>(createTime),
      deploymentState = pulumi.Input.asOptionalInput<String>(deploymentState),
      description = pulumi.Input.asOptionalInput<String>(description),
      etag = pulumi.Input.asOptionalInput<String>(etag),
      framework = pulumi.Input.asOptionalInput<FrameworkDeploymentFramework>(framework),
      frameworkDeploymentId = pulumi.Input.asOptionalInput<String>(frameworkDeploymentId),
      location = pulumi.Input.asOptionalInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      organization = pulumi.Input.asOptionalInput<String>(organization),
      targetResourceConfig = pulumi.Input.asOptionalInput<FrameworkDeploymentTargetResourceConfig>(targetResourceConfig),
      targetResourceDisplayName = pulumi.Input.asOptionalInput<String>(targetResourceDisplayName),
      updateTime = pulumi.Input.asOptionalInput<String>(updateTime);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cloudControlDeploymentReferences': ?pulumi.Input.mapOptionalInputValue<List<FrameworkDeploymentCloudControlDeploymentReference>, List<Map<String, dynamic>>>(cloudControlDeploymentReferences, (value) => pulumi.Input.encodeList<FrameworkDeploymentCloudControlDeploymentReference, Map<String, dynamic>>(value, (value) => value.toMap())),
      'cloudControlMetadatas': ?pulumi.Input.mapOptionalInputValue<List<FrameworkDeploymentCloudControlMetadata>, List<Map<String, dynamic>>>(cloudControlMetadatas, (value) => pulumi.Input.encodeList<FrameworkDeploymentCloudControlMetadata, Map<String, dynamic>>(value, (value) => value.toMap())),
      'computedTargetResource': ?computedTargetResource,
      'createTime': ?createTime,
      'deploymentState': ?deploymentState,
      'description': ?description,
      'etag': ?etag,
      'framework': ?pulumi.Input.mapOptionalInputValue<FrameworkDeploymentFramework, Map<String, dynamic>>(framework, (value) => value.toMap()),
      'frameworkDeploymentId': ?frameworkDeploymentId,
      'location': ?location,
      'name': ?name,
      'organization': ?organization,
      'targetResourceConfig': ?pulumi.Input.mapOptionalInputValue<FrameworkDeploymentTargetResourceConfig, Map<String, dynamic>>(targetResourceConfig, (value) => value.toMap()),
      'targetResourceDisplayName': ?targetResourceDisplayName,
      'updateTime': ?updateTime,
    };
  }

  factory FrameworkDeploymentState.fromMap(Map<String, dynamic> map) {
    return FrameworkDeploymentState(
      cloudControlDeploymentReferences: map['cloudControlDeploymentReferences'] == null ? null : pulumi.Output.create<List<FrameworkDeploymentCloudControlDeploymentReference>>(pulumi.Input.decodeList<FrameworkDeploymentCloudControlDeploymentReference>(map['cloudControlDeploymentReferences'], (value) => FrameworkDeploymentCloudControlDeploymentReference.fromMap((value as Map).cast<String, dynamic>()))),
      cloudControlMetadatas: map['cloudControlMetadatas'] == null ? null : pulumi.Output.create<List<FrameworkDeploymentCloudControlMetadata>>(pulumi.Input.decodeList<FrameworkDeploymentCloudControlMetadata>(map['cloudControlMetadatas'], (value) => FrameworkDeploymentCloudControlMetadata.fromMap((value as Map).cast<String, dynamic>()))),
      computedTargetResource: map['computedTargetResource'] == null ? null : pulumi.Output.create<String>(map['computedTargetResource'] as String),
      createTime: map['createTime'] == null ? null : pulumi.Output.create<String>(map['createTime'] as String),
      deploymentState: map['deploymentState'] == null ? null : pulumi.Output.create<String>(map['deploymentState'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      etag: map['etag'] == null ? null : pulumi.Output.create<String>(map['etag'] as String),
      framework: map['framework'] == null ? null : pulumi.Output.create<FrameworkDeploymentFramework>(FrameworkDeploymentFramework.fromMap((map['framework'] as Map).cast<String, dynamic>())),
      frameworkDeploymentId: map['frameworkDeploymentId'] == null ? null : pulumi.Output.create<String>(map['frameworkDeploymentId'] as String),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      organization: map['organization'] == null ? null : pulumi.Output.create<String>(map['organization'] as String),
      targetResourceConfig: map['targetResourceConfig'] == null ? null : pulumi.Output.create<FrameworkDeploymentTargetResourceConfig>(FrameworkDeploymentTargetResourceConfig.fromMap((map['targetResourceConfig'] as Map).cast<String, dynamic>())),
      targetResourceDisplayName: map['targetResourceDisplayName'] == null ? null : pulumi.Output.create<String>(map['targetResourceDisplayName'] as String),
      updateTime: map['updateTime'] == null ? null : pulumi.Output.create<String>(map['updateTime'] as String),
    );
  }
}

