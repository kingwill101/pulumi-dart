// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_scvmm_get_vmm_server_args_doc}
/// Arguments for getVmmServer.
/// {@endtemplate}
/// {@macro pulumi_scvmm_get_vmm_server_args_doc}
class GetVmmServerArgs {
  /// The name of the resource group.
  final pulumi.Input<String> resourceGroupName;
  /// Name of the VMMServer.
  final pulumi.Input<String> vmmServerName;

  /// Creates a new [GetVmmServerArgs].
  /// [resourceGroupName] The name of the resource group.
  /// [vmmServerName] Name of the VMMServer.
  GetVmmServerArgs({
    required this.resourceGroupName,
    required this.vmmServerName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceGroupName': resourceGroupName,
      'vmmServerName': vmmServerName,
    };
  }

  factory GetVmmServerArgs.fromMap(Map<String, dynamic> map) {
    return GetVmmServerArgs(
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      vmmServerName: (map['vmmServerName'] as String).input(),
    );
  }
}

