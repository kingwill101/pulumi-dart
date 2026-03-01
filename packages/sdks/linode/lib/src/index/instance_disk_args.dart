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
    pulumi.Output<List<String>>? authorizedKeys,
    pulumi.Output<List<String>>? authorizedUsers,
    pulumi.Output<String>? filesystem,
    pulumi.Output<String>? image,
    required pulumi.Output<String> label,
    required pulumi.Output<int> linodeId,
    pulumi.Output<String>? rootPass,
    required pulumi.Output<int> size,
    pulumi.Output<Map<String, String>>? stackscriptData,
    pulumi.Output<int>? stackscriptId,
    pulumi.Output<InstanceDiskTimeouts>? timeouts,
  }) :
      authorizedKeys = pulumi.Input.asOptionalInput<List<String>>(authorizedKeys),
      authorizedUsers = pulumi.Input.asOptionalInput<List<String>>(authorizedUsers),
      filesystem = pulumi.Input.asOptionalInput<String>(filesystem),
      image = pulumi.Input.asOptionalInput<String>(image),
      label = pulumi.Input.asInput<String>(label),
      linodeId = pulumi.Input.asInput<int>(linodeId),
      rootPass = pulumi.Input.asOptionalInput<String>(rootPass),
      size = pulumi.Input.asInput<int>(size),
      stackscriptData = pulumi.Input.asOptionalInput<Map<String, String>>(stackscriptData),
      stackscriptId = pulumi.Input.asOptionalInput<int>(stackscriptId),
      timeouts = pulumi.Input.asOptionalInput<InstanceDiskTimeouts>(timeouts);

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
      authorizedKeys: map['authorizedKeys'] == null ? null : pulumi.Output.create<List<String>>((map['authorizedKeys'] as List).cast<String>()),
      authorizedUsers: map['authorizedUsers'] == null ? null : pulumi.Output.create<List<String>>((map['authorizedUsers'] as List).cast<String>()),
      filesystem: map['filesystem'] == null ? null : pulumi.Output.create<String>(map['filesystem'] as String),
      image: map['image'] == null ? null : pulumi.Output.create<String>(map['image'] as String),
      label: pulumi.Output.create<String>(map['label'] as String),
      linodeId: pulumi.Output.create<int>(map['linodeId'] as int),
      rootPass: map['rootPass'] == null ? null : pulumi.Output.create<String>(map['rootPass'] as String),
      size: pulumi.Output.create<int>(map['size'] as int),
      stackscriptData: map['stackscriptData'] == null ? null : pulumi.Output.create<Map<String, String>>((map['stackscriptData'] as Map).cast<String, String>()),
      stackscriptId: map['stackscriptId'] == null ? null : pulumi.Output.create<int>(map['stackscriptId'] as int),
      timeouts: map['timeouts'] == null ? null : pulumi.Output.create<InstanceDiskTimeouts>(InstanceDiskTimeouts.fromMap((map['timeouts'] as Map).cast<String, dynamic>())),
    );
  }
}

