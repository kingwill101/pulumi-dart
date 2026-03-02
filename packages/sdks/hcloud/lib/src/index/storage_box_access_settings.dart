// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class StorageBoxAccessSettings {
  /// Whether access from outside the Hetzner network is allowed.
  final pulumi.Input<bool>? reachableExternally;
  /// Whether the Samba subsystem is enabled.
  final pulumi.Input<bool>? sambaEnabled;
  /// Whether the SSH subsystem is enabled.
  final pulumi.Input<bool>? sshEnabled;
  /// Whether the WebDAV subsystem is enabled.
  final pulumi.Input<bool>? webdavEnabled;
  /// Whether the ZFS snapshot folder is visible.
  final pulumi.Input<bool>? zfsEnabled;

  /// Creates a new [StorageBoxAccessSettings].
  /// [reachableExternally] Whether access from outside the Hetzner network is allowed.
  /// [sambaEnabled] Whether the Samba subsystem is enabled.
  /// [sshEnabled] Whether the SSH subsystem is enabled.
  /// [webdavEnabled] Whether the WebDAV subsystem is enabled.
  /// [zfsEnabled] Whether the ZFS snapshot folder is visible.
  StorageBoxAccessSettings({
    this.reachableExternally,
    this.sambaEnabled,
    this.sshEnabled,
    this.webdavEnabled,
    this.zfsEnabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'reachableExternally': ?reachableExternally,
      'sambaEnabled': ?sambaEnabled,
      'sshEnabled': ?sshEnabled,
      'webdavEnabled': ?webdavEnabled,
      'zfsEnabled': ?zfsEnabled,
    };
  }

  factory StorageBoxAccessSettings.fromMap(Map<String, dynamic> map) {
    return StorageBoxAccessSettings(
      reachableExternally: map['reachableExternally'] == null ? null : (map['reachableExternally'] as bool).input(),
      sambaEnabled: map['sambaEnabled'] == null ? null : (map['sambaEnabled'] as bool).input(),
      sshEnabled: map['sshEnabled'] == null ? null : (map['sshEnabled'] as bool).input(),
      webdavEnabled: map['webdavEnabled'] == null ? null : (map['webdavEnabled'] as bool).input(),
      zfsEnabled: map['zfsEnabled'] == null ? null : (map['zfsEnabled'] as bool).input(),
    );
  }
}

