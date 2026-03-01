// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_scvmm_get_guest_agent_args_doc}
/// Arguments for getGuestAgent.
/// {@endtemplate}
/// {@macro pulumi_scvmm_get_guest_agent_args_doc}
class GetGuestAgentArgs {
  /// Name of the GuestAgent.
  final pulumi.Input<String> guestAgentName;
  /// The name of the resource group.
  final pulumi.Input<String> resourceGroupName;
  /// Name of the vm.
  final pulumi.Input<String> virtualMachineName;

  /// Creates a new [GetGuestAgentArgs].
  /// [guestAgentName] Name of the GuestAgent.
  /// [resourceGroupName] The name of the resource group.
  /// [virtualMachineName] Name of the vm.
  GetGuestAgentArgs({
    required pulumi.Output<String> guestAgentName,
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> virtualMachineName,
  }) :
      guestAgentName = pulumi.Input.asInput<String>(guestAgentName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      virtualMachineName = pulumi.Input.asInput<String>(virtualMachineName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'guestAgentName': guestAgentName,
      'resourceGroupName': resourceGroupName,
      'virtualMachineName': virtualMachineName,
    };
  }

  factory GetGuestAgentArgs.fromMap(Map<String, dynamic> map) {
    return GetGuestAgentArgs(
      guestAgentName: pulumi.Output.create<String>(map['guestAgentName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      virtualMachineName: pulumi.Output.create<String>(map['virtualMachineName'] as String),
    );
  }
}

