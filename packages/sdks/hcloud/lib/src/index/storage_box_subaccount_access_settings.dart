// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class StorageBoxSubaccountAccessSettings {
  /// Whether access from outside the Hetzner network is allowed.
  final pulumi.Input<bool>? reachableExternally;
  /// Whether the Subaccount is read-only.
  final pulumi.Input<bool>? readonly;
  /// Whether the Samba subsystem is enabled.
  final pulumi.Input<bool>? sambaEnabled;
  /// Whether the SSH subsystem is enabled.
  final pulumi.Input<bool>? sshEnabled;
  /// Whether the WebDAV subsystem is enabled.
  final pulumi.Input<bool>? webdavEnabled;

  /// Creates a new [StorageBoxSubaccountAccessSettings].
  /// [reachableExternally] Whether access from outside the Hetzner network is allowed.
  /// [readonly] Whether the Subaccount is read-only.
  /// [sambaEnabled] Whether the Samba subsystem is enabled.
  /// [sshEnabled] Whether the SSH subsystem is enabled.
  /// [webdavEnabled] Whether the WebDAV subsystem is enabled.
  StorageBoxSubaccountAccessSettings({
    this.reachableExternally,
    this.readonly,
    this.sambaEnabled,
    this.sshEnabled,
    this.webdavEnabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'reachableExternally': ?reachableExternally,
      'readonly': ?readonly,
      'sambaEnabled': ?sambaEnabled,
      'sshEnabled': ?sshEnabled,
      'webdavEnabled': ?webdavEnabled,
    };
  }

  factory StorageBoxSubaccountAccessSettings.fromMap(Map<String, dynamic> map) {
    return StorageBoxSubaccountAccessSettings(
      reachableExternally: (() { final guardedValue = map['reachableExternally']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      readonly: (() { final guardedValue = map['readonly']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      sambaEnabled: (() { final guardedValue = map['sambaEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      sshEnabled: (() { final guardedValue = map['sshEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      webdavEnabled: (() { final guardedValue = map['webdavEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}

