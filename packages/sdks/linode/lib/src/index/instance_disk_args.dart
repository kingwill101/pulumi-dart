// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'instance_disk_timeouts.dart';

/// {@template pulumi_index_instance_disk_instance_disk_args_doc}
/// The set of arguments for InstanceDisk.
/// {@endtemplate}
/// {@macro pulumi_index_instance_disk_instance_disk_args_doc}
class InstanceDiskArgs {
  /// A list of public SSH keys that will be automatically appended to the root user’s ~/.ssh/authorized_keys file when deploying from an Image. (Requires `image`)
  final pulumi.Input<List<String>>? authorizedKeys;
  /// A list of usernames. If the usernames have associated SSH keys, the keys will be appended to the root user's ~/.ssh/authorized_keys file. (Requires `image`)
  final pulumi.Input<List<String>>? authorizedUsers;
  /// The filesystem of this disk. (`raw`, `swap`, `ext3`, `ext4`, `initrd`)
  final pulumi.Input<String>? filesystem;
  /// An Image ID to deploy the Linode Disk from.
  final pulumi.Input<String>? image;
  /// The Disk's label for display purposes only.
  final pulumi.Input<String> label;
  /// The ID of the Linode to create this Disk under.
  final pulumi.Input<int> linodeId;
  /// The root user’s password on a newly-created Linode Disk when deploying from an Image. (Requires `image`)
  final pulumi.Input<String>? rootPass;
  /// The size of the Disk in MB. **NOTE:** Resizing a disk will trigger a Linode reboot.
  ///
  /// - - -
  final pulumi.Input<int> size;
  /// An object containing responses to any User Defined Fields present in the StackScript being deployed to this Disk. Only accepted if `stackscript_id` is given. (Requires `image`)
  final pulumi.Input<Map<String, String>>? stackscriptData;
  /// A StackScript ID that will cause the referenced StackScript to be run during deployment of this Disk. (Requires `image`)
  final pulumi.Input<int>? stackscriptId;
  final pulumi.Input<InstanceDiskTimeouts>? timeouts;

  /// Creates a new [InstanceDiskArgs].
  /// [authorizedKeys] A list of public SSH keys that will be automatically appended to the root user’s ~/.ssh/authorized_keys file when deploying from an Image. (Requires `image`)
  /// [authorizedUsers] A list of usernames. If the usernames have associated SSH keys, the keys will be appended to the root user's ~/.ssh/authorized_keys file. (Requires `image`)
  /// [filesystem] The filesystem of this disk. (`raw`, `swap`, `ext3`, `ext4`, `initrd`)
  /// [image] An Image ID to deploy the Linode Disk from.
  /// [label] The Disk's label for display purposes only.
  /// [linodeId] The ID of the Linode to create this Disk under.
  /// [rootPass] The root user’s password on a newly-created Linode Disk when deploying from an Image. (Requires `image`)
  /// [size] The size of the Disk in MB. **NOTE:** Resizing a disk will trigger a Linode reboot.
  /// [stackscriptData] An object containing responses to any User Defined Fields present in the StackScript being deployed to this Disk. Only accepted if `stackscript_id` is given. (Requires `image`)
  /// [stackscriptId] A StackScript ID that will cause the referenced StackScript to be run during deployment of this Disk. (Requires `image`)
  /// [timeouts] Optional.
  InstanceDiskArgs({
    this.authorizedKeys,
    this.authorizedUsers,
    this.filesystem,
    this.image,
    required this.label,
    required this.linodeId,
    this.rootPass,
    required this.size,
    this.stackscriptData,
    this.stackscriptId,
    this.timeouts,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authorizedKeys': ?authorizedKeys,
      'authorizedUsers': ?authorizedUsers,
      'filesystem': ?filesystem,
      'image': ?image,
      'label': label,
      'linodeId': linodeId,
      'rootPass': ?rootPass,
      'size': size,
      'stackscriptData': ?stackscriptData,
      'stackscriptId': ?stackscriptId,
      'timeouts': ?pulumi.Input.mapOptionalInputValue<InstanceDiskTimeouts, Map<String, dynamic>>(timeouts, (value) => value.toMap()),
    };
  }

  factory InstanceDiskArgs.fromMap(Map<String, dynamic> map) {
    return InstanceDiskArgs(
      authorizedKeys: (() { final guardedValue = map['authorizedKeys']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      authorizedUsers: (() { final guardedValue = map['authorizedUsers']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      filesystem: (() { final guardedValue = map['filesystem']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      image: (() { final guardedValue = map['image']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      label: pulumi.Input.fromValue(map['label'] as String),
      linodeId: pulumi.Input.fromValue(map['linodeId'] as int),
      rootPass: (() { final guardedValue = map['rootPass']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      size: pulumi.Input.fromValue(map['size'] as int),
      stackscriptData: (() { final guardedValue = map['stackscriptData']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      stackscriptId: (() { final guardedValue = map['stackscriptId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      timeouts: (() { final guardedValue = map['timeouts']; if (guardedValue == null) return null; return pulumi.Input.fromValue(InstanceDiskTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

