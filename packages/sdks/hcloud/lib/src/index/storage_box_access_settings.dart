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
      reachableExternally: (() { final guardedValue = map['reachableExternally']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      sambaEnabled: (() { final guardedValue = map['sambaEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      sshEnabled: (() { final guardedValue = map['sshEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      webdavEnabled: (() { final guardedValue = map['webdavEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      zfsEnabled: (() { final guardedValue = map['zfsEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}

