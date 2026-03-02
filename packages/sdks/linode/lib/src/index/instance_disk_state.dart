// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'instance_disk_timeouts.dart';

/// Input properties used for looking up and filtering InstanceDisk resources.
class InstanceDiskState {
  /// A list of public SSH keys that will be automatically appended to the root user’s ~/.ssh/authorized_keys file when deploying from an Image. (Requires `image`)
  final pulumi.Input<List<String>>? authorizedKeys;
  /// A list of usernames. If the usernames have associated SSH keys, the keys will be appended to the root user's ~/.ssh/authorized_keys file. (Requires `image`)
  final pulumi.Input<List<String>>? authorizedUsers;
  /// When this disk was created.
  final pulumi.Input<String>? created;
  /// The disk encryption policy for this disk's parent instance. (`enabled`, `disabled`)
  final pulumi.Input<String>? diskEncryption;
  /// The filesystem of this disk. (`raw`, `swap`, `ext3`, `ext4`, `initrd`)
  final pulumi.Input<String>? filesystem;
  /// An Image ID to deploy the Linode Disk from.
  final pulumi.Input<String>? image;
  /// The Disk's label for display purposes only.
  final pulumi.Input<String>? label;
  /// The ID of the Linode to create this Disk under.
  final pulumi.Input<int>? linodeId;
  /// The root user’s password on a newly-created Linode Disk when deploying from an Image. (Requires `image`)
  final pulumi.Input<String>? rootPass;
  /// The size of the Disk in MB. **NOTE:** Resizing a disk will trigger a Linode reboot.
  ///
  /// - - -
  final pulumi.Input<int>? size;
  /// An object containing responses to any User Defined Fields present in the StackScript being deployed to this Disk. Only accepted if `stackscript_id` is given. (Requires `image`)
  final pulumi.Input<Map<String, String>>? stackscriptData;
  /// A StackScript ID that will cause the referenced StackScript to be run during deployment of this Disk. (Requires `image`)
  final pulumi.Input<int>? stackscriptId;
  /// A brief description of this Disk's current state.
  final pulumi.Input<String>? status;
  final pulumi.Input<InstanceDiskTimeouts>? timeouts;
  /// When this disk was last updated.
  final pulumi.Input<String>? updated;

  /// Creates a new [InstanceDiskState].
  /// [authorizedKeys] A list of public SSH keys that will be automatically appended to the root user’s ~/.ssh/authorized_keys file when deploying from an Image. (Requires `image`)
  /// [authorizedUsers] A list of usernames. If the usernames have associated SSH keys, the keys will be appended to the root user's ~/.ssh/authorized_keys file. (Requires `image`)
  /// [created] When this disk was created.
  /// [diskEncryption] The disk encryption policy for this disk's parent instance. (`enabled`, `disabled`)
  /// [filesystem] The filesystem of this disk. (`raw`, `swap`, `ext3`, `ext4`, `initrd`)
  /// [image] An Image ID to deploy the Linode Disk from.
  /// [label] The Disk's label for display purposes only.
  /// [linodeId] The ID of the Linode to create this Disk under.
  /// [rootPass] The root user’s password on a newly-created Linode Disk when deploying from an Image. (Requires `image`)
  /// [size] The size of the Disk in MB. **NOTE:** Resizing a disk will trigger a Linode reboot.
  /// [stackscriptData] An object containing responses to any User Defined Fields present in the StackScript being deployed to this Disk. Only accepted if `stackscript_id` is given. (Requires `image`)
  /// [stackscriptId] A StackScript ID that will cause the referenced StackScript to be run during deployment of this Disk. (Requires `image`)
  /// [status] A brief description of this Disk's current state.
  /// [timeouts] Optional.
  /// [updated] When this disk was last updated.
  InstanceDiskState({
    this.authorizedKeys,
    this.authorizedUsers,
    this.created,
    this.diskEncryption,
    this.filesystem,
    this.image,
    this.label,
    this.linodeId,
    this.rootPass,
    this.size,
    this.stackscriptData,
    this.stackscriptId,
    this.status,
    this.timeouts,
    this.updated,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authorizedKeys': ?authorizedKeys,
      'authorizedUsers': ?authorizedUsers,
      'created': ?created,
      'diskEncryption': ?diskEncryption,
      'filesystem': ?filesystem,
      'image': ?image,
      'label': ?label,
      'linodeId': ?linodeId,
      'rootPass': ?rootPass,
      'size': ?size,
      'stackscriptData': ?stackscriptData,
      'stackscriptId': ?stackscriptId,
      'status': ?status,
      'timeouts': ?pulumi.Input.mapOptionalInputValue<InstanceDiskTimeouts, Map<String, dynamic>>(timeouts, (value) => value.toMap()),
      'updated': ?updated,
    };
  }

  factory InstanceDiskState.fromMap(Map<String, dynamic> map) {
    return InstanceDiskState(
      authorizedKeys: map['authorizedKeys'] == null ? null : ((map['authorizedKeys'] as List).cast<String>()).input(),
      authorizedUsers: map['authorizedUsers'] == null ? null : ((map['authorizedUsers'] as List).cast<String>()).input(),
      created: map['created'] == null ? null : (map['created'] as String).input(),
      diskEncryption: map['diskEncryption'] == null ? null : (map['diskEncryption'] as String).input(),
      filesystem: map['filesystem'] == null ? null : (map['filesystem'] as String).input(),
      image: map['image'] == null ? null : (map['image'] as String).input(),
      label: map['label'] == null ? null : (map['label'] as String).input(),
      linodeId: map['linodeId'] == null ? null : (map['linodeId'] as int).input(),
      rootPass: map['rootPass'] == null ? null : (map['rootPass'] as String).input(),
      size: map['size'] == null ? null : (map['size'] as int).input(),
      stackscriptData: map['stackscriptData'] == null ? null : ((map['stackscriptData'] as Map).cast<String, String>()).input(),
      stackscriptId: map['stackscriptId'] == null ? null : (map['stackscriptId'] as int).input(),
      status: map['status'] == null ? null : (map['status'] as String).input(),
      timeouts: map['timeouts'] == null ? null : (InstanceDiskTimeouts.fromMap((map['timeouts'] as Map).cast<String, dynamic>())).input(),
      updated: map['updated'] == null ? null : (map['updated'] as String).input(),
    );
  }
}

