// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetInstancesInstanceDisk {
  /// The Disk filesystem can be one of: `"raw"`, `"swap"`, `"ext3"`, `"ext4"`, or `"initrd"` which has a max size of 32mb and can be used in the config `initrd` (not currently supported in this provider).
  final pulumi.Input<String> filesystem;
  /// The ID of the Placement Group in the Linode API.
  final pulumi.Input<int> id;
  /// The label of the Placement Group. This field can only contain ASCII letters, digits and dashes.
  final pulumi.Input<String> label;
  /// The size of the Disk in MB.
  final pulumi.Input<int> size;

  /// Creates a new [GetInstancesInstanceDisk].
  /// [filesystem] The Disk filesystem can be one of: `"raw"`, `"swap"`, `"ext3"`, `"ext4"`, or `"initrd"` which has a max size of 32mb and can be used in the config `initrd` (not currently supported in this provider).
  /// [id] The ID of the Placement Group in the Linode API.
  /// [label] The label of the Placement Group. This field can only contain ASCII letters, digits and dashes.
  /// [size] The size of the Disk in MB.
  GetInstancesInstanceDisk({
    required this.filesystem,
    required this.id,
    required this.label,
    required this.size,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'filesystem': filesystem,
      'id': id,
      'label': label,
      'size': size,
    };
  }

  factory GetInstancesInstanceDisk.fromMap(Map<String, dynamic> map) {
    return GetInstancesInstanceDisk(
      filesystem: pulumi.Input.fromValue(map['filesystem'] as String),
      id: pulumi.Input.fromValue(map['id'] as int),
      label: pulumi.Input.fromValue(map['label'] as String),
      size: pulumi.Input.fromValue(map['size'] as int),
    );
  }
}

