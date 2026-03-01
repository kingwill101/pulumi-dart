// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_resources_get_template_spec_version_args_doc}
/// Arguments for getTemplateSpecVersion.
/// {@endtemplate}
/// {@macro pulumi_resources_get_template_spec_version_args_doc}
class GetTemplateSpecVersionArgs {
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Name of the Template Spec.
  final pulumi.Input<String> templateSpecName;
  /// The version of the Template Spec.
  final pulumi.Input<String> templateSpecVersion;

  /// Creates a new [GetTemplateSpecVersionArgs].
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [templateSpecName] Name of the Template Spec.
  /// [templateSpecVersion] The version of the Template Spec.
  GetTemplateSpecVersionArgs({
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> templateSpecName,
    required pulumi.Output<String> templateSpecVersion,
  }) :
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      templateSpecName = pulumi.Input.asInput<String>(templateSpecName),
      templateSpecVersion = pulumi.Input.asInput<String>(templateSpecVersion);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceGroupName': resourceGroupName,
      'templateSpecName': templateSpecName,
      'templateSpecVersion': templateSpecVersion,
    };
  }

  factory GetTemplateSpecVersionArgs.fromMap(Map<String, dynamic> map) {
    return GetTemplateSpecVersionArgs(
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      templateSpecName: pulumi.Output.create<String>(map['templateSpecName'] as String),
      templateSpecVersion: pulumi.Output.create<String>(map['templateSpecVersion'] as String),
    );
  }
}

