// ignore_for_file: unused_element, unnecessary_cast


class GetStorageBoxesStorageBoxAccessSettings {
  /// Whether access from outside the Hetzner network is allowed.
  final bool reachableExternally;
  /// Whether the Samba subsystem is enabled.
  final bool sambaEnabled;
  /// Whether the SSH subsystem is enabled.
  final bool sshEnabled;
  /// Whether the WebDAV subsystem is enabled.
  final bool webdavEnabled;
  /// Whether the ZFS snapshot folder is visible.
  final bool zfsEnabled;

  /// Creates a new [GetStorageBoxesStorageBoxAccessSettings].
  /// [reachableExternally] Whether access from outside the Hetzner network is allowed.
  /// [sambaEnabled] Whether the Samba subsystem is enabled.
  /// [sshEnabled] Whether the SSH subsystem is enabled.
  /// [webdavEnabled] Whether the WebDAV subsystem is enabled.
  /// [zfsEnabled] Whether the ZFS snapshot folder is visible.
  GetStorageBoxesStorageBoxAccessSettings({
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
      reachableExternally: map['reachableExternally'] as bool,
      sambaEnabled: map['sambaEnabled'] as bool,
      sshEnabled: map['sshEnabled'] as bool,
      webdavEnabled: map['webdavEnabled'] as bool,
      zfsEnabled: map['zfsEnabled'] as bool,
    );
  }
}

