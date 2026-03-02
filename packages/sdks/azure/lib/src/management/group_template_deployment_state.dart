// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering GroupTemplateDeployment resources.
class GroupTemplateDeploymentState {
  /// The Debug Level which should be used for this Resource Group Template Deployment. Possible values are `none`, `requestContent`, `responseContent` and `requestContent, responseContent`.
  final pulumi.Input<String>? debugLevel;
  /// The Azure Region where the Template should exist. Changing this forces a new Template to be created.
  final pulumi.Input<String>? location;
  /// The ID of the Management Group to apply the Deployment Template to. Changing this forces a new resource to be created.
  final pulumi.Input<String>? managementGroupId;
  /// The name which should be used for this Template Deployment. Changing this forces a new Template Deployment to be created.
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

  /// Creates a new [GroupTemplateDeploymentState].
  /// [debugLevel] The Debug Level which should be used for this Resource Group Template Deployment. Possible values are `none`, `requestContent`, `responseContent` and `requestContent, responseContent`.
  /// [location] The Azure Region where the Template should exist. Changing this forces a new Template to be created.
  /// [managementGroupId] The ID of the Management Group to apply the Deployment Template to. Changing this forces a new resource to be created.
  /// [name] The name which should be used for this Template Deployment. Changing this forces a new Template Deployment to be created.
  /// [outputContent] The JSON Content of the Outputs of the ARM Template Deployment.
  /// [parametersContent] The contents of the ARM Template parameters file - containing a JSON list of parameters.
  /// [tags] A mapping of tags which should be assigned to the Template.
  /// [templateContent] The contents of the ARM Template which should be deployed into this Resource Group. Cannot be specified with `template_spec_version_id`.
  /// [templateSpecVersionId] The ID of the Template Spec Version to deploy. Cannot be specified with `template_content`.
  GroupTemplateDeploymentState({
    this.debugLevel,
    this.location,
    this.managementGroupId,
    this.name,
    this.outputContent,
    this.parametersContent,
    this.tags,
    this.templateContent,
    this.templateSpecVersionId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'debugLevel': ?debugLevel,
      'location': ?location,
      'managementGroupId': ?managementGroupId,
      'name': ?name,
      'outputContent': ?outputContent,
      'parametersContent': ?parametersContent,
      'tags': ?tags,
      'templateContent': ?templateContent,
      'templateSpecVersionId': ?templateSpecVersionId,
    };
  }

  factory GroupTemplateDeploymentState.fromMap(Map<String, dynamic> map) {
    return GroupTemplateDeploymentState(
      debugLevel: map['debugLevel'] == null ? null : (map['debugLevel']! as String).input(),
      location: map['location'] == null ? null : (map['location']! as String).input(),
      managementGroupId: map['managementGroupId'] == null ? null : (map['managementGroupId']! as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      outputContent: map['outputContent'] == null ? null : (map['outputContent']! as String).input(),
      parametersContent: map['parametersContent'] == null ? null : (map['parametersContent']! as String).input(),
      tags: map['tags'] == null ? null : ((map['tags']! as Map).cast<String, String>()).input(),
      templateContent: map['templateContent'] == null ? null : (map['templateContent']! as String).input(),
      templateSpecVersionId: map['templateSpecVersionId'] == null ? null : (map['templateSpecVersionId']! as String).input(),
    );
  }
}

