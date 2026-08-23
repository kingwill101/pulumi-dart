// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetRegionInstanceGroupManagerStatefulDisk {
  /// A value that prescribes what should happen to the stateful disk when the VM instance is deleted. The available options are NEVER and ON_PERMANENT_INSTANCE_DELETION. NEVER - detach the disk when the VM is deleted, but do not delete the disk. ON_PERMANENT_INSTANCE_DELETION will delete the stateful disk when the VM is permanently deleted from the instance group. The default is NEVER.
  final pulumi.Input<String> deleteRule;
  /// The device name of the disk to be attached.
  final pulumi.Input<String> deviceName;

  /// Creates a new [GetRegionInstanceGroupManagerStatefulDisk].
  /// [deleteRule] A value that prescribes what should happen to the stateful disk when the VM instance is deleted. The available options are NEVER and ON_PERMANENT_INSTANCE_DELETION. NEVER - detach the disk when the VM is deleted, but do not delete the disk. ON_PERMANENT_INSTANCE_DELETION will delete the stateful disk when the VM is permanently deleted from the instance group. The default is NEVER.
  /// [deviceName] The device name of the disk to be attached.
  const GetRegionInstanceGroupManagerStatefulDisk({
    required this.deleteRule,
    required this.deviceName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deleteRule': deleteRule,
      'deviceName': deviceName,
    };
  }

  factory GetRegionInstanceGroupManagerStatefulDisk.fromMap(Map<String, dynamic> map) {
    return GetRegionInstanceGroupManagerStatefulDisk(
      deleteRule: pulumi.Input.fromValue(map['deleteRule'] as String),
      deviceName: pulumi.Input.fromValue(map['deviceName'] as String),
    );
  }
}
