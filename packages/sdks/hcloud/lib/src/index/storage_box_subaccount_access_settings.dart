// ignore_for_file: unused_element, unnecessary_cast


class StorageBoxSubaccountAccessSettings {
  /// Whether access from outside the Hetzner network is allowed.
  final bool? reachableExternally;
  /// Whether the Subaccount is read-only.
  final bool? readonly;
  /// Whether the Samba subsystem is enabled.
  final bool? sambaEnabled;
  /// Whether the SSH subsystem is enabled.
  final bool? sshEnabled;
  /// Whether the WebDAV subsystem is enabled.
  final bool? webdavEnabled;

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
      reachableExternally: map['reachableExternally'] == null ? null : map['reachableExternally'] as bool,
      readonly: map['readonly'] == null ? null : map['readonly'] as bool,
      sambaEnabled: map['sambaEnabled'] == null ? null : map['sambaEnabled'] as bool,
      sshEnabled: map['sshEnabled'] == null ? null : map['sshEnabled'] as bool,
      webdavEnabled: map['webdavEnabled'] == null ? null : map['webdavEnabled'] as bool,
    );
  }
}

