// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_core_resource_group_template_deployment_resource_group_template_deployment_args_doc}
/// The set of arguments for ResourceGroupTemplateDeployment.
/// {@endtemplate}
/// {@macro pulumi_core_resource_group_template_deployment_resource_group_template_deployment_args_doc}
class ResourceGroupTemplateDeploymentArgs {
  /// The Debug Level which should be used for this Resource Group Template Deployment. Possible values are `none`, `requestContent`, `responseContent` and `requestContent, responseContent`.
  final pulumi.Input<String>? debugLevel;
  /// The Deployment Mode for this Resource Group Template Deployment. Possible values are `Complete` (where resources in the Resource Group not specified in the ARM Template will be destroyed) and `Incremental` (where resources are additive only).
  ///
  /// > **Note:** If `deployment_mode` is set to `Complete` then resources within this Resource Group which are not defined in the ARM Template will be deleted.
  final pulumi.Input<String> deploymentMode;
  /// The name which should be used for this Resource Group Template Deployment. Changing this forces a new Resource Group Template Deployment to be created.
  final pulumi.Input<String>? name;
  /// The contents of the ARM Template parameters file - containing a JSON list of parameters.
  ///
  /// > An example of how to pass variables into an ARM Template can be seen in the example.
  final pulumi.Input<String>? parametersContent;
  /// The name of the Resource Group where the Resource Group Template Deployment should exist. Changing this forces a new Resource Group Template Deployment to be created.
  final pulumi.Input<String> resourceGroupName;
  /// A mapping of tags which should be assigned to the Resource Group Template Deployment.
  final pulumi.Input<Map<String, String>>? tags;
  /// The contents of the ARM Template which should be deployed into this Resource Group. Cannot be specified with `template_spec_version_id`.
  final pulumi.Input<String>? templateContent;
  /// The ID of the Template Spec Version to deploy. Cannot be specified with `template_content`.
  final pulumi.Input<String>? templateSpecVersionId;

  /// Creates a new [ResourceGroupTemplateDeploymentArgs].
  /// [debugLevel] The Debug Level which should be used for this Resource Group Template Deployment. Possible values are `none`, `requestContent`, `responseContent` and `requestContent, responseContent`.
  /// [deploymentMode] The Deployment Mode for this Resource Group Template Deployment. Possible values are `Complete` (where resources in the Resource Group not specified in the ARM Template will be destroyed) and `Incremental` (where resources are additive only).
  /// [name] The name which should be used for this Resource Group Template Deployment. Changing this forces a new Resource Group Template Deployment to be created.
  /// [parametersContent] The contents of the ARM Template parameters file - containing a JSON list of parameters.
  /// [resourceGroupName] The name of the Resource Group where the Resource Group Template Deployment should exist. Changing this forces a new Resource Group Template Deployment to be created.
  /// [tags] A mapping of tags which should be assigned to the Resource Group Template Deployment.
  /// [templateContent] The contents of the ARM Template which should be deployed into this Resource Group. Cannot be specified with `template_spec_version_id`.
  /// [templateSpecVersionId] The ID of the Template Spec Version to deploy. Cannot be specified with `template_content`.
  ResourceGroupTemplateDeploymentArgs({
    pulumi.Output<String>? debugLevel,
    required pulumi.Output<String> deploymentMode,
    pulumi.Output<String>? name,
    pulumi.Output<String>? parametersContent,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<String>? templateContent,
    pulumi.Output<String>? templateSpecVersionId,
  }) :
      debugLevel = pulumi.Input.asOptionalInput<String>(debugLevel),
      deploymentMode = pulumi.Input.asInput<String>(deploymentMode),
      name = pulumi.Input.asOptionalInput<String>(name),
      parametersContent = pulumi.Input.asOptionalInput<String>(parametersContent),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      templateContent = pulumi.Input.asOptionalInput<String>(templateContent),
      templateSpecVersionId = pulumi.Input.asOptionalInput<String>(templateSpecVersionId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'debugLevel': ?debugLevel,
      'deploymentMode': deploymentMode,
      'name': ?name,
      'parametersContent': ?parametersContent,
      'resourceGroupName': resourceGroupName,
      'tags': ?tags,
      'templateContent': ?templateContent,
      'templateSpecVersionId': ?templateSpecVersionId,
    };
  }

  factory ResourceGroupTemplateDeploymentArgs.fromMap(Map<String, dynamic> map) {
    return ResourceGroupTemplateDeploymentArgs(
      debugLevel: map['debugLevel'] == null ? null : pulumi.Output.create<String>(map['debugLevel'] as String),
      deploymentMode: pulumi.Output.create<String>(map['deploymentMode'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      parametersContent: map['parametersContent'] == null ? null : pulumi.Output.create<String>(map['parametersContent'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      templateContent: map['templateContent'] == null ? null : pulumi.Output.create<String>(map['templateContent'] as String),
      templateSpecVersionId: map['templateSpecVersionId'] == null ? null : pulumi.Output.create<String>(map['templateSpecVersionId'] as String),
    );
  }
}

