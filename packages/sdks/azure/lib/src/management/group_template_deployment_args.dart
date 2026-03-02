// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_management_group_template_deployment_group_template_deployment_args_doc}
/// The set of arguments for GroupTemplateDeployment.
/// {@endtemplate}
/// {@macro pulumi_management_group_template_deployment_group_template_deployment_args_doc}
class GroupTemplateDeploymentArgs {
  /// The Debug Level which should be used for this Resource Group Template Deployment. Possible values are `none`, `requestContent`, `responseContent` and `requestContent, responseContent`.
  final pulumi.Input<String>? debugLevel;
  /// The Azure Region where the Template should exist. Changing this forces a new Template to be created.
  final pulumi.Input<String>? location;
  /// The ID of the Management Group to apply the Deployment Template to. Changing this forces a new resource to be created.
  final pulumi.Input<String> managementGroupId;
  /// The name which should be used for this Template Deployment. Changing this forces a new Template Deployment to be created.
  final pulumi.Input<String>? name;
  /// The contents of the ARM Template parameters file - containing a JSON list of parameters.
  final pulumi.Input<String>? parametersContent;
  /// A mapping of tags which should be assigned to the Template.
  final pulumi.Input<Map<String, String>>? tags;
  /// The contents of the ARM Template which should be deployed into this Resource Group. Cannot be specified with `template_spec_version_id`.
  final pulumi.Input<String>? templateContent;
  /// The ID of the Template Spec Version to deploy. Cannot be specified with `template_content`.
  final pulumi.Input<String>? templateSpecVersionId;

  /// Creates a new [GroupTemplateDeploymentArgs].
  /// [debugLevel] The Debug Level which should be used for this Resource Group Template Deployment. Possible values are `none`, `requestContent`, `responseContent` and `requestContent, responseContent`.
  /// [location] The Azure Region where the Template should exist. Changing this forces a new Template to be created.
  /// [managementGroupId] The ID of the Management Group to apply the Deployment Template to. Changing this forces a new resource to be created.
  /// [name] The name which should be used for this Template Deployment. Changing this forces a new Template Deployment to be created.
  /// [parametersContent] The contents of the ARM Template parameters file - containing a JSON list of parameters.
  /// [tags] A mapping of tags which should be assigned to the Template.
  /// [templateContent] The contents of the ARM Template which should be deployed into this Resource Group. Cannot be specified with `template_spec_version_id`.
  /// [templateSpecVersionId] The ID of the Template Spec Version to deploy. Cannot be specified with `template_content`.
  GroupTemplateDeploymentArgs({
    this.debugLevel,
    this.location,
    required this.managementGroupId,
    this.name,
    this.parametersContent,
    this.tags,
    this.templateContent,
    this.templateSpecVersionId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'debugLevel': ?debugLevel,
      'location': ?location,
      'managementGroupId': managementGroupId,
      'name': ?name,
      'parametersContent': ?parametersContent,
      'tags': ?tags,
      'templateContent': ?templateContent,
      'templateSpecVersionId': ?templateSpecVersionId,
    };
  }

  factory GroupTemplateDeploymentArgs.fromMap(Map<String, dynamic> map) {
    return GroupTemplateDeploymentArgs(
      debugLevel: map['debugLevel'] == null ? null : (map['debugLevel']! as String).input(),
      location: map['location'] == null ? null : (map['location']! as String).input(),
      managementGroupId: (map['managementGroupId'] as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      parametersContent: map['parametersContent'] == null ? null : (map['parametersContent']! as String).input(),
      tags: map['tags'] == null ? null : ((map['tags']! as Map).cast<String, String>()).input(),
      templateContent: map['templateContent'] == null ? null : (map['templateContent']! as String).input(),
      templateSpecVersionId: map['templateSpecVersionId'] == null ? null : (map['templateSpecVersionId']! as String).input(),
    );
  }
}

