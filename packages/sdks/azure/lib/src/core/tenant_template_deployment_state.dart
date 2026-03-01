// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering TenantTemplateDeployment resources.
class TenantTemplateDeploymentState {
  /// The Debug Level which should be used for this Resource Group Template Deployment. Possible values are `none`, `requestContent`, `responseContent` and `requestContent, responseContent`.
  final pulumi.Input<String>? debugLevel;
  /// The Azure Region where the Template should exist. Changing this forces a new Template to be created.
  final pulumi.Input<String>? location;
  /// The name which should be used for this Template. Changing this forces a new Template to be created.
  final pulumi.Input<String>? name;
  /// The JSON Content of the Outputs of the ARM Template Deployment.
  final pulumi.Input<String>? outputContent;
  /// The contents of the ARM Template parameters file - containing a JSON list of parameters.
  final pulumi.Input<String>? parametersContent;
  /// A mapping of tags which should be assigned to the Template.
  final pulumi.Input<Map<String, String>>? tags;
  /// The contents of the ARM Template which should be deployed into this Resource Group. Cannot be specified with `template_spec_version_id`.
  final pulumi.Input<String>? templateContent;
  /// The ID of the Template Spec Version to deploy. Cannot be specified with `template_content`.
  final pulumi.Input<String>? templateSpecVersionId;

  /// Creates a new [TenantTemplateDeploymentState].
  /// [debugLevel] The Debug Level which should be used for this Resource Group Template Deployment. Possible values are `none`, `requestContent`, `responseContent` and `requestContent, responseContent`.
  /// [location] The Azure Region where the Template should exist. Changing this forces a new Template to be created.
  /// [name] The name which should be used for this Template. Changing this forces a new Template to be created.
  /// [outputContent] The JSON Content of the Outputs of the ARM Template Deployment.
  /// [parametersContent] The contents of the ARM Template parameters file - containing a JSON list of parameters.
  /// [tags] A mapping of tags which should be assigned to the Template.
  /// [templateContent] The contents of the ARM Template which should be deployed into this Resource Group. Cannot be specified with `template_spec_version_id`.
  /// [templateSpecVersionId] The ID of the Template Spec Version to deploy. Cannot be specified with `template_content`.
  TenantTemplateDeploymentState({
    pulumi.Output<String>? debugLevel,
    pulumi.Output<String>? location,
    pulumi.Output<String>? name,
    pulumi.Output<String>? outputContent,
    pulumi.Output<String>? parametersContent,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<String>? templateContent,
    pulumi.Output<String>? templateSpecVersionId,
  }) :
      debugLevel = pulumi.Input.asOptionalInput<String>(debugLevel),
      location = pulumi.Input.asOptionalInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      outputContent = pulumi.Input.asOptionalInput<String>(outputContent),
      parametersContent = pulumi.Input.asOptionalInput<String>(parametersContent),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      templateContent = pulumi.Input.asOptionalInput<String>(templateContent),
      templateSpecVersionId = pulumi.Input.asOptionalInput<String>(templateSpecVersionId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'debugLevel': ?debugLevel,
      'location': ?location,
      'name': ?name,
      'outputContent': ?outputContent,
      'parametersContent': ?parametersContent,
      'tags': ?tags,
      'templateContent': ?templateContent,
      'templateSpecVersionId': ?templateSpecVersionId,
    };
  }

  factory TenantTemplateDeploymentState.fromMap(Map<String, dynamic> map) {
    return TenantTemplateDeploymentState(
      debugLevel: map['debugLevel'] == null ? null : pulumi.Output.create<String>(map['debugLevel'] as String),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      outputContent: map['outputContent'] == null ? null : pulumi.Output.create<String>(map['outputContent'] as String),
      parametersContent: map['parametersContent'] == null ? null : pulumi.Output.create<String>(map['parametersContent'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      templateContent: map['templateContent'] == null ? null : pulumi.Output.create<String>(map['templateContent'] as String),
      templateSpecVersionId: map['templateSpecVersionId'] == null ? null : pulumi.Output.create<String>(map['templateSpecVersionId'] as String),
    );
  }
}

