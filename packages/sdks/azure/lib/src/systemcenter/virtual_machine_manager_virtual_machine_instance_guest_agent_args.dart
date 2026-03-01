// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_systemcenter_virtual_machine_manager_virtual_machine_instance_guest_agent_virtual_machine_manager_virtual_machine_instance_guest_agent_args_doc}
/// The set of arguments for VirtualMachineManagerVirtualMachineInstanceGuestAgent.
/// {@endtemplate}
/// {@macro pulumi_systemcenter_virtual_machine_manager_virtual_machine_instance_guest_agent_virtual_machine_manager_virtual_machine_instance_guest_agent_args_doc}
class VirtualMachineManagerVirtualMachineInstanceGuestAgentArgs {
  /// The password that is used to connect to the System Center Virtual Machine Manager Virtual Machine Instance Guest Agent. Changing this forces a new resource to be created.
  final pulumi.Input<String> password;
  /// The provisioning action that is used to define the different types of operations for the System Center Virtual Machine Manager Virtual Machine Instance Guest Agent. Possible values are `install`, `repair` and `uninstall`. Defaults to `install`. Changing this forces a new resource to be created.
  final pulumi.Input<String>? provisioningAction;
  /// The ID of the Hybrid Compute Machine where this System Center Virtual Machine Manager Virtual Machine Instance Guest Agent is stored. Changing this forces a new resource to be created.
  final pulumi.Input<String> scopedResourceId;
  /// The username that is used to connect to the System Center Virtual Machine Manager Virtual Machine Instance Guest Agent. Changing this forces a new resource to be created.
  final pulumi.Input<String> username;

  /// Creates a new [VirtualMachineManagerVirtualMachineInstanceGuestAgentArgs].
  /// [password] The password that is used to connect to the System Center Virtual Machine Manager Virtual Machine Instance Guest Agent. Changing this forces a new resource to be created.
  /// [provisioningAction] The provisioning action that is used to define the different types of operations for the System Center Virtual Machine Manager Virtual Machine Instance Guest Agent. Possible values are `install`, `repair` and `uninstall`. Defaults to `install`. Changing this forces a new resource to be created.
  /// [scopedResourceId] The ID of the Hybrid Compute Machine where this System Center Virtual Machine Manager Virtual Machine Instance Guest Agent is stored. Changing this forces a new resource to be created.
  /// [username] The username that is used to connect to the System Center Virtual Machine Manager Virtual Machine Instance Guest Agent. Changing this forces a new resource to be created.
  VirtualMachineManagerVirtualMachineInstanceGuestAgentArgs({
    required pulumi.Output<String> password,
    pulumi.Output<String>? provisioningAction,
    required pulumi.Output<String> scopedResourceId,
    required pulumi.Output<String> username,
  }) :
      password = pulumi.Input.asInput<String>(password),
      provisioningAction = pulumi.Input.asOptionalInput<String>(provisioningAction),
      scopedResourceId = pulumi.Input.asInput<String>(scopedResourceId),
      username = pulumi.Input.asInput<String>(username);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'password': password,
      'provisioningAction': ?provisioningAction,
      'scopedResourceId': scopedResourceId,
      'username': username,
    };
  }

  factory VirtualMachineManagerVirtualMachineInstanceGuestAgentArgs.fromMap(Map<String, dynamic> map) {
    return VirtualMachineManagerVirtualMachineInstanceGuestAgentArgs(
      password: pulumi.Output.create<String>(map['password'] as String),
      provisioningAction: map['provisioningAction'] == null ? null : pulumi.Output.create<String>(map['provisioningAction'] as String),
      scopedResourceId: pulumi.Output.create<String>(map['scopedResourceId'] as String),
      username: pulumi.Output.create<String>(map['username'] as String),
    );
  }
}

