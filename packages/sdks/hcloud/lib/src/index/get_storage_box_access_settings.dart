// ignore_for_file: unused_element, unnecessary_cast


class GetStorageBoxAccessSettings {
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

  /// Creates a new [GetStorageBoxAccessSettings].
  /// [reachableExternally] Whether access from outside the Hetzner network is allowed.
  /// [sambaEnabled] Whether the Samba subsystem is enabled.
  /// [sshEnabled] Whether the SSH subsystem is enabled.
  /// [webdavEnabled] Whether the WebDAV subsystem is enabled.
  /// [zfsEnabled] Whether the ZFS snapshot folder is visible.
  GetStorageBoxAccessSettings({
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

  factory GetStorageBoxAccessSettings.fromMap(Map<String, dynamic> map) {
    return GetStorageBoxAccessSettings(
      reachableExternally: map['reachableExternally'] as bool,
      sambaEnabled: map['sambaEnabled'] as bool,
      sshEnabled: map['sshEnabled'] as bool,
      webdavEnabled: map['webdavEnabled'] as bool,
      zfsEnabled: map['zfsEnabled'] as bool,
    );
  }
}

