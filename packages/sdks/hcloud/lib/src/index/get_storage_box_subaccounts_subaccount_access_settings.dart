// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetStorageBoxSubaccountsSubaccountAccessSettings {
  /// Whether access from outside the Hetzner network is allowed.
  final pulumi.Input<bool> reachableExternally;

  /// Whether the Subaccount is read-only.
  final pulumi.Input<bool> readonly;

  /// Whether the Samba subsystem is enabled.
  final pulumi.Input<bool> sambaEnabled;

  /// Whether the SSH subsystem is enabled.
  final pulumi.Input<bool> sshEnabled;

  /// Whether the WebDAV subsystem is enabled.
  final pulumi.Input<bool> webdavEnabled;

  /// Creates a new [GetStorageBoxSubaccountsSubaccountAccessSettings].
  /// [reachableExternally] Whether access from outside the Hetzner network is allowed.
  /// [readonly] Whether the Subaccount is read-only.
  /// [sambaEnabled] Whether the Samba subsystem is enabled.
  /// [sshEnabled] Whether the SSH subsystem is enabled.
  /// [webdavEnabled] Whether the WebDAV subsystem is enabled.
  GetStorageBoxSubaccountsSubaccountAccessSettings({
    required this.reachableExternally,
    required this.readonly,
    required this.sambaEnabled,
    required this.sshEnabled,
    required this.webdavEnabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'reachableExternally': reachableExternally,
      'readonly': readonly,
      'sambaEnabled': sambaEnabled,
      'sshEnabled': sshEnabled,
      'webdavEnabled': webdavEnabled,
    };
  }

  factory GetStorageBoxSubaccountsSubaccountAccessSettings.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetStorageBoxSubaccountsSubaccountAccessSettings(
      reachableExternally: pulumi.Input.fromValue(
        map['reachableExternally'] as bool,
      ),
      readonly: pulumi.Input.fromValue(map['readonly'] as bool),
      sambaEnabled: pulumi.Input.fromValue(map['sambaEnabled'] as bool),
      sshEnabled: pulumi.Input.fromValue(map['sshEnabled'] as bool),
      webdavEnabled: pulumi.Input.fromValue(map['webdavEnabled'] as bool),
    );
  }
}
