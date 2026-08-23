// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetStorageBoxesStorageBoxAccessSettings {
  /// Whether access from outside the Hetzner network is allowed.
  final pulumi.Input<bool> reachableExternally;
  /// Whether the Samba subsystem is enabled.
  final pulumi.Input<bool> sambaEnabled;
  /// Whether the SSH subsystem is enabled.
  final pulumi.Input<bool> sshEnabled;
  /// Whether the WebDAV subsystem is enabled.
  final pulumi.Input<bool> webdavEnabled;
  /// Whether the ZFS snapshot folder is visible.
  final pulumi.Input<bool> zfsEnabled;

  /// Creates a new [GetStorageBoxesStorageBoxAccessSettings].
  /// [reachableExternally] Whether access from outside the Hetzner network is allowed.
  /// [sambaEnabled] Whether the Samba subsystem is enabled.
  /// [sshEnabled] Whether the SSH subsystem is enabled.
  /// [webdavEnabled] Whether the WebDAV subsystem is enabled.
  /// [zfsEnabled] Whether the ZFS snapshot folder is visible.
  const GetStorageBoxesStorageBoxAccessSettings({
    required this.reachableExternally,
    required this.sambaEnabled,
    required this.sshEnabled,
    required this.webdavEnabled,
    required this.zfsEnabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'reachableExternally': reachableExternally,
      'sambaEnabled': sambaEnabled,
      'sshEnabled': sshEnabled,
      'webdavEnabled': webdavEnabled,
      'zfsEnabled': zfsEnabled,
    };
  }

  factory GetStorageBoxesStorageBoxAccessSettings.fromMap(Map<String, dynamic> map) {
    return GetStorageBoxesStorageBoxAccessSettings(
      reachableExternally: pulumi.Input.fromValue(map['reachableExternally'] as bool),
      sambaEnabled: pulumi.Input.fromValue(map['sambaEnabled'] as bool),
      sshEnabled: pulumi.Input.fromValue(map['sshEnabled'] as bool),
      webdavEnabled: pulumi.Input.fromValue(map['webdavEnabled'] as bool),
      zfsEnabled: pulumi.Input.fromValue(map['zfsEnabled'] as bool),
    );
  }
}
