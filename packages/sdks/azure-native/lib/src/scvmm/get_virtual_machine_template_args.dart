// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_scvmm_get_virtual_machine_template_args_doc}
/// Arguments for getVirtualMachineTemplate.
/// {@endtemplate}
/// {@macro pulumi_scvmm_get_virtual_machine_template_args_doc}
class GetVirtualMachineTemplateArgs {
  /// The name of the resource group.
  final pulumi.Input<String> resourceGroupName;
  /// Name of the VirtualMachineTemplate.
  final pulumi.Input<String> virtualMachineTemplateName;

  /// Creates a new [GetVirtualMachineTemplateArgs].
  /// [resourceGroupName] The name of the resource group.
  /// [virtualMachineTemplateName] Name of the VirtualMachineTemplate.
  GetVirtualMachineTemplateArgs({
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> virtualMachineTemplateName,
  }) :
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      virtualMachineTemplateName = pulumi.Input.asInput<String>(virtualMachineTemplateName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceGroupName': resourceGroupName,
      'virtualMachineTemplateName': virtualMachineTemplateName,
    };
  }

  factory GetVirtualMachineTemplateArgs.fromMap(Map<String, dynamic> map) {
    return GetVirtualMachineTemplateArgs(
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      virtualMachineTemplateName: pulumi.Output.create<String>(map['virtualMachineTemplateName'] as String),
    );
  }
}

