// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class RegionPerInstanceConfigPreservedStateDisk {
  /// A value that prescribes what should happen to the stateful disk when the VM instance is deleted.
  /// The available options are `NEVER` and `ON_PERMANENT_INSTANCE_DELETION`.
  /// `NEVER` - detach the disk when the VM is deleted, but do not delete the disk.
  /// `ON_PERMANENT_INSTANCE_DELETION` will delete the stateful disk when the VM is permanently
  /// deleted from the instance group.
  /// Default value is `NEVER`.
  /// Possible values are: `NEVER`, `ON_PERMANENT_INSTANCE_DELETION`.
  final pulumi.Input<String>? deleteRule;
  /// A unique device name that is reflected into the /dev/ tree of a Linux operating system running within the instance.
  final pulumi.Input<String> deviceName;
  /// The mode of the disk.
  /// Default value is `READ_WRITE`.
  /// Possible values are: `READ_ONLY`, `READ_WRITE`.
  final pulumi.Input<String>? mode;
  /// The URI of an existing persistent disk to attach under the specified device-name in the format
  /// `projects/project-id/zones/zone/disks/disk-name`.
  final pulumi.Input<String> source;

  /// Creates a new [RegionPerInstanceConfigPreservedStateDisk].
  /// [deleteRule] A value that prescribes what should happen to the stateful disk when the VM instance is deleted.
  /// [deviceName] A unique device name that is reflected into the /dev/ tree of a Linux operating system running within the instance.
  /// [mode] The mode of the disk.
  /// [source] The URI of an existing persistent disk to attach under the specified device-name in the format
  RegionPerInstanceConfigPreservedStateDisk({
    this.deleteRule,
    required this.deviceName,
    this.mode,
    required this.source,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deleteRule': ?deleteRule,
      'deviceName': deviceName,
      'mode': ?mode,
      'source': source,
    };
  }

  factory RegionPerInstanceConfigPreservedStateDisk.fromMap(Map<String, dynamic> map) {
    return RegionPerInstanceConfigPreservedStateDisk(
      deleteRule: (() { final guardedValue = map['deleteRule']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      deviceName: pulumi.Input.fromValue(map['deviceName'] as String),
      mode: (() { final guardedValue = map['mode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      source: pulumi.Input.fromValue(map['source'] as String),
    );
  }
}

