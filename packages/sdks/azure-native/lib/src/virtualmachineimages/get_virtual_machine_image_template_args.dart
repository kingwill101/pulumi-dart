// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_virtualmachineimages_get_virtual_machine_image_template_args_doc}
/// Arguments for getVirtualMachineImageTemplate.
/// {@endtemplate}
/// {@macro pulumi_virtualmachineimages_get_virtual_machine_image_template_args_doc}
class GetVirtualMachineImageTemplateArgs {
  /// The name of the image Template
  final pulumi.Input<String> imageTemplateName;
  /// The name of the resource group.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetVirtualMachineImageTemplateArgs].
  /// [imageTemplateName] The name of the image Template
  /// [resourceGroupName] The name of the resource group.
  GetVirtualMachineImageTemplateArgs({
    required pulumi.Output<String> imageTemplateName,
    required pulumi.Output<String> resourceGroupName,
  }) :
      imageTemplateName = pulumi.Input.asInput<String>(imageTemplateName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'imageTemplateName': imageTemplateName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetVirtualMachineImageTemplateArgs.fromMap(Map<String, dynamic> map) {
    return GetVirtualMachineImageTemplateArgs(
      imageTemplateName: pulumi.Output.create<String>(map['imageTemplateName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
    );
  }
}

