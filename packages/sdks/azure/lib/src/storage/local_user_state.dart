// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'local_user_permission_scope.dart';
import 'local_user_ssh_authorized_key.dart';

/// Input properties used for looking up and filtering LocalUser resources.
class LocalUserState {
  /// The home directory of the Storage Account Local User.
  final pulumi.Input<String>? homeDirectory;
  /// The name which should be used for this Storage Account Local User. Changing this forces a new Storage Account Local User to be created.
  final pulumi.Input<String>? name;
  /// The value of the password, which is only available when `sshPasswordEnabled` is set to `true`.
  final pulumi.Input<String>? password;
  /// One or more `permissionScope` blocks as defined below.
  final pulumi.Input<List<LocalUserPermissionScope>>? permissionScopes;
  /// The unique Security Identifier of this Storage Account Local User.
  final pulumi.Input<String>? sid;
  /// One or more `sshAuthorizedKey` blocks as defined below.
  final pulumi.Input<List<LocalUserSshAuthorizedKey>>? sshAuthorizedKeys;
  /// Specifies whether SSH Key Authentication is enabled. Defaults to `false`.
  final pulumi.Input<bool>? sshKeyEnabled;
  /// Specifies whether SSH Password Authentication is enabled. Defaults to `false`.
  final pulumi.Input<bool>? sshPasswordEnabled;
  /// The ID of the Storage Account that this Storage Account Local User resides in. Changing this forces a new Storage Account Local User to be created.
  final pulumi.Input<String>? storageAccountId;

  /// Creates a new [LocalUserState].
  /// [homeDirectory] The home directory of the Storage Account Local User.
  /// [name] The name which should be used for this Storage Account Local User. Changing this forces a new Storage Account Local User to be created.
  /// [password] The value of the password, which is only available when `sshPasswordEnabled` is set to `true`.
  /// [permissionScopes] One or more `permissionScope` blocks as defined below.
  /// [sid] The unique Security Identifier of this Storage Account Local User.
  /// [sshAuthorizedKeys] One or more `sshAuthorizedKey` blocks as defined below.
  /// [sshKeyEnabled] Specifies whether SSH Key Authentication is enabled. Defaults to `false`.
  /// [sshPasswordEnabled] Specifies whether SSH Password Authentication is enabled. Defaults to `false`.
  /// [storageAccountId] The ID of the Storage Account that this Storage Account Local User resides in. Changing this forces a new Storage Account Local User to be created.
  const LocalUserState({
    this.homeDirectory,
    this.name,
    this.password,
    this.permissionScopes,
    this.sid,
    this.sshAuthorizedKeys,
    this.sshKeyEnabled,
    this.sshPasswordEnabled,
    this.storageAccountId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'homeDirectory': ?homeDirectory,
      'name': ?name,
      'password': ?password,
      'permissionScopes': ?pulumi.Input.mapOptionalInputValue<List<LocalUserPermissionScope>, List<Map<String, dynamic>>>(permissionScopes, (value) => pulumi.Input.encodeList<LocalUserPermissionScope, Map<String, dynamic>>(value, (value) => value.toMap())),
      'sid': ?sid,
      'sshAuthorizedKeys': ?pulumi.Input.mapOptionalInputValue<List<LocalUserSshAuthorizedKey>, List<Map<String, dynamic>>>(sshAuthorizedKeys, (value) => pulumi.Input.encodeList<LocalUserSshAuthorizedKey, Map<String, dynamic>>(value, (value) => value.toMap())),
      'sshKeyEnabled': ?sshKeyEnabled,
      'sshPasswordEnabled': ?sshPasswordEnabled,
      'storageAccountId': ?storageAccountId,
    };
  }

  factory LocalUserState.fromMap(Map<String, dynamic> map) {
    return LocalUserState(
      homeDirectory: (() { final guardedValue = map['homeDirectory']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      password: (() { final guardedValue = map['password']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      permissionScopes: (() { final guardedValue = map['permissionScopes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<LocalUserPermissionScope>(guardedValue, (value) => LocalUserPermissionScope.fromMap((value as Map).cast<String, dynamic>()))); })(),
      sid: (() { final guardedValue = map['sid']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sshAuthorizedKeys: (() { final guardedValue = map['sshAuthorizedKeys']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<LocalUserSshAuthorizedKey>(guardedValue, (value) => LocalUserSshAuthorizedKey.fromMap((value as Map).cast<String, dynamic>()))); })(),
      sshKeyEnabled: (() { final guardedValue = map['sshKeyEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      sshPasswordEnabled: (() { final guardedValue = map['sshPasswordEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      storageAccountId: (() { final guardedValue = map['storageAccountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
