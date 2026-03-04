// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_core_tenant_template_deployment_tenant_template_deployment_args_doc}
/// The set of arguments for TenantTemplateDeployment.
/// {@endtemplate}
/// {@macro pulumi_core_tenant_template_deployment_tenant_template_deployment_args_doc}
class TenantTemplateDeploymentArgs {
  /// The Debug Level which should be used for this Resource Group Template Deployment. Possible values are `none`, `requestContent`, `responseContent` and `requestContent, responseContent`.
  final pulumi.Input<String>? debugLevel;

  /// The Azure Region where the Template should exist. Changing this forces a new Template to be created.
  final pulumi.Input<String>? location;

  /// The name which should be used for this Template. Changing this forces a new Template to be created.
  final pulumi.Input<String>? name;

  /// The contents of the ARM Template parameters file - containing a JSON list of parameters.
  final pulumi.Input<String>? parametersContent;

  /// A mapping of tags which should be assigned to the Template.
  final pulumi.Input<Map<String, String>>? tags;

  /// The contents of the ARM Template which should be deployed into this Resource Group. Cannot be specified with `template_spec_version_id`.
  final pulumi.Input<String>? templateContent;

  /// The ID of the Template Spec Version to deploy. Cannot be specified with `template_content`.
  final pulumi.Input<String>? templateSpecVersionId;

  /// Creates a new [TenantTemplateDeploymentArgs].
  /// [debugLevel] The Debug Level which should be used for this Resource Group Template Deployment. Possible values are `none`, `requestContent`, `responseContent` and `requestContent, responseContent`.
  /// [location] The Azure Region where the Template should exist. Changing this forces a new Template to be created.
  /// [name] The name which should be used for this Template. Changing this forces a new Template to be created.
  /// [parametersContent] The contents of the ARM Template parameters file - containing a JSON list of parameters.
  /// [tags] A mapping of tags which should be assigned to the Template.
  /// [templateContent] The contents of the ARM Template which should be deployed into this Resource Group. Cannot be specified with `template_spec_version_id`.
  /// [templateSpecVersionId] The ID of the Template Spec Version to deploy. Cannot be specified with `template_content`.
  TenantTemplateDeploymentArgs({
    this.debugLevel,
    this.location,
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
      'name': ?name,
      'parametersContent': ?parametersContent,
      'tags': ?tags,
      'templateContent': ?templateContent,
      'templateSpecVersionId': ?templateSpecVersionId,
    };
  }

  factory TenantTemplateDeploymentArgs.fromMap(Map<String, dynamic> map) {
    return TenantTemplateDeploymentArgs(
      debugLevel: (() {
        final guardedValue = map['debugLevel'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      location: (() {
        final guardedValue = map['location'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      parametersContent: (() {
        final guardedValue = map['parametersContent'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      tags: (() {
        final guardedValue = map['tags'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      templateContent: (() {
        final guardedValue = map['templateContent'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      templateSpecVersionId: (() {
        final guardedValue = map['templateSpecVersionId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
