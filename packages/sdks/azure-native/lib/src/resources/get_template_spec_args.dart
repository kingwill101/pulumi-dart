// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_resources_get_template_spec_args_doc}
/// Arguments for getTemplateSpec.
/// {@endtemplate}
/// {@macro pulumi_resources_get_template_spec_args_doc}
class GetTemplateSpecArgs {
  /// Allows for expansion of additional Template Spec details in the response. Optional.
  final pulumi.Input<String>? expand;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Name of the Template Spec.
  final pulumi.Input<String> templateSpecName;

  /// Creates a new [GetTemplateSpecArgs].
  /// [expand] Allows for expansion of additional Template Spec details in the response. Optional.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [templateSpecName] Name of the Template Spec.
  const GetTemplateSpecArgs({
    this.expand,
    required this.resourceGroupName,
    required this.templateSpecName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'expand': ?expand,
      'resourceGroupName': resourceGroupName,
      'templateSpecName': templateSpecName,
    };
  }

  factory GetTemplateSpecArgs.fromMap(Map<String, dynamic> map) {
    return GetTemplateSpecArgs(
      expand: (() { final guardedValue = map['expand']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      templateSpecName: pulumi.Input.fromValue(map['templateSpecName'] as String),
    );
  }
}
