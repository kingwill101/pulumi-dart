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
    required this.imageTemplateName,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'imageTemplateName': imageTemplateName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetVirtualMachineImageTemplateArgs.fromMap(Map<String, dynamic> map) {
    return GetVirtualMachineImageTemplateArgs(
      imageTemplateName: (map['imageTemplateName'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
    );
  }
}

