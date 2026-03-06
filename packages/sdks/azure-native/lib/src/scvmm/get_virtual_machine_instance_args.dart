// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_scvmm_get_virtual_machine_instance_args_doc}
/// Arguments for getVirtualMachineInstance.
/// {@endtemplate}
/// {@macro pulumi_scvmm_get_virtual_machine_instance_args_doc}
class GetVirtualMachineInstanceArgs {
  /// The fully qualified Azure Resource manager identifier of the Hybrid Compute machine resource to be extended.
  final pulumi.Input<String> resourceUri;

  /// Creates a new [GetVirtualMachineInstanceArgs].
  /// [resourceUri] The fully qualified Azure Resource manager identifier of the Hybrid Compute machine resource to be extended.
  const GetVirtualMachineInstanceArgs({
    required this.resourceUri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceUri': resourceUri,
    };
  }

  factory GetVirtualMachineInstanceArgs.fromMap(Map<String, dynamic> map) {
    return GetVirtualMachineInstanceArgs(
      resourceUri: pulumi.Input.fromValue(map['resourceUri'] as String),
    );
  }
}

