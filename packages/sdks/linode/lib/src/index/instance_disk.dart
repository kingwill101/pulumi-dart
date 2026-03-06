// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class InstanceDisk {
  /// A list of SSH public keys to deploy for the root user on the newly created Linode. Only accepted if 'image' is provided.
  final pulumi.Input<List<String>>? authorizedKeys;
  /// A list of Linode usernames. If the usernames have associated SSH keys, the keys will be appended to the `root` user's `~/.ssh/authorized_keys` file automatically. Only accepted if 'image' is provided.
  final pulumi.Input<List<String>>? authorizedUsers;
  /// The Disk filesystem can be one of: raw, swap, ext3, ext4, initrd (max 32mb)
  final pulumi.Input<String>? filesystem;
  /// The ID of the Placement Group.
  final pulumi.Input<int>? id;
  /// An Image ID to deploy the Disk from. Official Linode Images start with linode/, while your Images start with private/.
  final pulumi.Input<String>? image;
  /// The Linode's label is for display purposes only. If no label is provided for a Linode, a default will be assigned.
  final pulumi.Input<String> label;
  /// If true, this Disk is read-only.
  final pulumi.Input<bool>? readOnly;
  /// The password that will be initialially assigned to the 'root' user account.
  final pulumi.Input<String>? rootPass;
  /// The size of the Disk in MB.
  final pulumi.Input<int> size;
  /// An object containing responses to any User Defined Fields present in the StackScript being deployed to this Linode. Only accepted if 'stackscript_id' is given. The required values depend on the StackScript being deployed.
  final pulumi.Input<Map<String, String>>? stackscriptData;
  /// The StackScript to deploy to the newly created Linode. If provided, 'image' must also be provided, and must be an Image that is compatible with this StackScript.
  final pulumi.Input<int>? stackscriptId;

  /// Creates a new [InstanceDisk].
  /// [authorizedKeys] A list of SSH public keys to deploy for the root user on the newly created Linode. Only accepted if 'image' is provided.
  /// [authorizedUsers] A list of Linode usernames. If the usernames have associated SSH keys, the keys will be appended to the `root` user's `~/.ssh/authorized_keys` file automatically. Only accepted if 'image' is provided.
  /// [filesystem] The Disk filesystem can be one of: raw, swap, ext3, ext4, initrd (max 32mb)
  /// [id] The ID of the Placement Group.
  /// [image] An Image ID to deploy the Disk from. Official Linode Images start with linode/, while your Images start with private/.
  /// [label] The Linode's label is for display purposes only. If no label is provided for a Linode, a default will be assigned.
  /// [readOnly] If true, this Disk is read-only.
  /// [rootPass] The password that will be initialially assigned to the 'root' user account.
  /// [size] The size of the Disk in MB.
  /// [stackscriptData] An object containing responses to any User Defined Fields present in the StackScript being deployed to this Linode. Only accepted if 'stackscript_id' is given. The required values depend on the StackScript being deployed.
  /// [stackscriptId] The StackScript to deploy to the newly created Linode. If provided, 'image' must also be provided, and must be an Image that is compatible with this StackScript.
  const InstanceDisk({
    this.authorizedKeys,
    this.authorizedUsers,
    this.filesystem,
    this.id,
    this.image,
    required this.label,
    this.readOnly,
    this.rootPass,
    required this.size,
    this.stackscriptData,
    this.stackscriptId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authorizedKeys': ?authorizedKeys,
      'authorizedUsers': ?authorizedUsers,
      'filesystem': ?filesystem,
      'id': ?id,
      'image': ?image,
      'label': label,
      'readOnly': ?readOnly,
      'rootPass': ?rootPass,
      'size': size,
      'stackscriptData': ?stackscriptData,
      'stackscriptId': ?stackscriptId,
    };
  }

  factory InstanceDisk.fromMap(Map<String, dynamic> map) {
    return InstanceDisk(
      authorizedKeys: (() { final guardedValue = map['authorizedKeys']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      authorizedUsers: (() { final guardedValue = map['authorizedUsers']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      filesystem: (() { final guardedValue = map['filesystem']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      image: (() { final guardedValue = map['image']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      label: pulumi.Input.fromValue(map['label'] as String),
      readOnly: (() { final guardedValue = map['readOnly']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      rootPass: (() { final guardedValue = map['rootPass']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      size: pulumi.Input.fromValue(map['size'] as int),
      stackscriptData: (() { final guardedValue = map['stackscriptData']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      stackscriptId: (() { final guardedValue = map['stackscriptId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}

