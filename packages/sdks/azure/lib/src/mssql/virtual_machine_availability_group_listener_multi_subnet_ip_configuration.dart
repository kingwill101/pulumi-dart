// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class VirtualMachineAvailabilityGroupListenerMultiSubnetIpConfiguration {
  /// The private IP Address of the listener. Changing this forces a new resource to be created.
  final pulumi.Input<String> privateIpAddress;
  /// The ID of the Sql Virtual Machine. Changing this forces a new resource to be created.
  final pulumi.Input<String> sqlVirtualMachineId;
  /// The ID of the Subnet to create the listener. Changing this forces a new resource to be created.
  ///
  /// &gt; **Note:** `sqlVirtualMachineId` should match with the SQL Virtual Machines specified in `replica`.
  final pulumi.Input<String> subnetId;

  /// Creates a new [VirtualMachineAvailabilityGroupListenerMultiSubnetIpConfiguration].
  /// [privateIpAddress] The private IP Address of the listener. Changing this forces a new resource to be created.
  /// [sqlVirtualMachineId] The ID of the Sql Virtual Machine. Changing this forces a new resource to be created.
  /// [subnetId] The ID of the Subnet to create the listener. Changing this forces a new resource to be created.
  const VirtualMachineAvailabilityGroupListenerMultiSubnetIpConfiguration({
    required this.privateIpAddress,
    required this.sqlVirtualMachineId,
    required this.subnetId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'privateIpAddress': privateIpAddress,
      'sqlVirtualMachineId': sqlVirtualMachineId,
      'subnetId': subnetId,
    };
  }

  factory VirtualMachineAvailabilityGroupListenerMultiSubnetIpConfiguration.fromMap(Map<String, dynamic> map) {
    return VirtualMachineAvailabilityGroupListenerMultiSubnetIpConfiguration(
      privateIpAddress: pulumi.Input.fromValue(map['privateIpAddress'] as String),
      sqlVirtualMachineId: pulumi.Input.fromValue(map['sqlVirtualMachineId'] as String),
      subnetId: pulumi.Input.fromValue(map['subnetId'] as String),
    );
  }
}
