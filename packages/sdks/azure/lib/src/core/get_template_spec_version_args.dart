// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_core_get_template_spec_version_get_template_spec_version_args_doc}
/// Arguments for getTemplateSpecVersion.
/// {@endtemplate}
/// {@macro pulumi_core_get_template_spec_version_get_template_spec_version_args_doc}
class GetTemplateSpecVersionArgs {
  /// The name of this Template Spec.
  final pulumi.Input<String> name;
  /// The name of the Resource Group where the Template Spec exists.
  final pulumi.Input<String> resourceGroupName;
  /// The Version Name of the Template Spec.
  final pulumi.Input<String> version;

  /// Creates a new [GetTemplateSpecVersionArgs].
  /// [name] The name of this Template Spec.
  /// [resourceGroupName] The name of the Resource Group where the Template Spec exists.
  /// [version] The Version Name of the Template Spec.
  const GetTemplateSpecVersionArgs({
    required this.name,
    required this.resourceGroupName,
    required this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'resourceGroupName': resourceGroupName,
      'version': version,
    };
  }

  factory GetTemplateSpecVersionArgs.fromMap(Map<String, dynamic> map) {
    return GetTemplateSpecVersionArgs(
      name: pulumi.Input.fromValue(map['name'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      version: pulumi.Input.fromValue(map['version'] as String),
    );
  }
}
