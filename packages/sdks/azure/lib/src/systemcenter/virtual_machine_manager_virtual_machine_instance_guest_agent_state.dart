// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering VirtualMachineManagerVirtualMachineInstanceGuestAgent resources.
class VirtualMachineManagerVirtualMachineInstanceGuestAgentState {
  /// The password that is used to connect to the System Center Virtual Machine Manager Virtual Machine Instance Guest Agent. Changing this forces a new resource to be created.
  final pulumi.Input<String>? password;
  /// The provisioning action that is used to define the different types of operations for the System Center Virtual Machine Manager Virtual Machine Instance Guest Agent. Possible values are `install`, `repair` and `uninstall`. Defaults to `install`. Changing this forces a new resource to be created.
  final pulumi.Input<String>? provisioningAction;
  /// The ID of the Hybrid Compute Machine where this System Center Virtual Machine Manager Virtual Machine Instance Guest Agent is stored. Changing this forces a new resource to be created.
  final pulumi.Input<String>? scopedResourceId;
  /// The username that is used to connect to the System Center Virtual Machine Manager Virtual Machine Instance Guest Agent. Changing this forces a new resource to be created.
  final pulumi.Input<String>? username;

  /// Creates a new [VirtualMachineManagerVirtualMachineInstanceGuestAgentState].
  /// [password] The password that is used to connect to the System Center Virtual Machine Manager Virtual Machine Instance Guest Agent. Changing this forces a new resource to be created.
  /// [provisioningAction] The provisioning action that is used to define the different types of operations for the System Center Virtual Machine Manager Virtual Machine Instance Guest Agent. Possible values are `install`, `repair` and `uninstall`. Defaults to `install`. Changing this forces a new resource to be created.
  /// [scopedResourceId] The ID of the Hybrid Compute Machine where this System Center Virtual Machine Manager Virtual Machine Instance Guest Agent is stored. Changing this forces a new resource to be created.
  /// [username] The username that is used to connect to the System Center Virtual Machine Manager Virtual Machine Instance Guest Agent. Changing this forces a new resource to be created.
  VirtualMachineManagerVirtualMachineInstanceGuestAgentState({
    this.password,
    this.provisioningAction,
    this.scopedResourceId,
    this.username,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'password': ?password,
      'provisioningAction': ?provisioningAction,
      'scopedResourceId': ?scopedResourceId,
      'username': ?username,
    };
  }

  factory VirtualMachineManagerVirtualMachineInstanceGuestAgentState.fromMap(Map<String, dynamic> map) {
    return VirtualMachineManagerVirtualMachineInstanceGuestAgentState(
      password: map['password'] == null ? null : (map['password'] as String).input(),
      provisioningAction: map['provisioningAction'] == null ? null : (map['provisioningAction'] as String).input(),
      scopedResourceId: map['scopedResourceId'] == null ? null : (map['scopedResourceId'] as String).input(),
      username: map['username'] == null ? null : (map['username'] as String).input(),
    );
  }
}

