// ignore_for_file: unused_element, unnecessary_cast


class RegionInstanceGroupManagerStatefulDisk {
  /// , A value that prescribes what should happen to the stateful disk when the VM instance is deleted. The available options are `NEVER` and `ON_PERMANENT_INSTANCE_DELETION`. `NEVER` - detach the disk when the VM is deleted, but do not delete the disk. `ON_PERMANENT_INSTANCE_DELETION` will delete the stateful disk when the VM is permanently deleted from the instance group. The default is `NEVER`.
  final String? deleteRule;
  /// , The device name of the disk to be attached.
  final String deviceName;

  /// Creates a new [RegionInstanceGroupManagerStatefulDisk].
  /// [deleteRule] , A value that prescribes what should happen to the stateful disk when the VM instance is deleted. The available options are `NEVER` and `ON_PERMANENT_INSTANCE_DELETION`. `NEVER` - detach the disk when the VM is deleted, but do not delete the disk. `ON_PERMANENT_INSTANCE_DELETION` will delete the stateful disk when the VM is permanently deleted from the instance group. The default is `NEVER`.
  /// [deviceName] , The device name of the disk to be attached.
  RegionInstanceGroupManagerStatefulDisk({
    this.deleteRule,
    required this.deviceName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deleteRule': ?deleteRule,
      'deviceName': deviceName,
    };
  }

  factory RegionInstanceGroupManagerStatefulDisk.fromMap(Map<String, dynamic> map) {
    return RegionInstanceGroupManagerStatefulDisk(
      deleteRule: map['deleteRule'] == null ? null : map['deleteRule'] as String,
      deviceName: map['deviceName'] as String,
    );
  }
}

