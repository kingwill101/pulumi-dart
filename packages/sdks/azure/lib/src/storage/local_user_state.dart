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
  /// The value of the password, which is only available when `ssh_password_enabled` is set to `true`.
  final pulumi.Input<String>? password;
  /// One or more `permission_scope` blocks as defined below.
  final pulumi.Input<List<LocalUserPermissionScope>>? permissionScopes;
  /// The unique Security Identifier of this Storage Account Local User.
  final pulumi.Input<String>? sid;
  /// One or more `ssh_authorized_key` blocks as defined below.
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
  /// [password] The value of the password, which is only available when `ssh_password_enabled` is set to `true`.
  /// [permissionScopes] One or more `permission_scope` blocks as defined below.
  /// [sid] The unique Security Identifier of this Storage Account Local User.
  /// [sshAuthorizedKeys] One or more `ssh_authorized_key` blocks as defined below.
  /// [sshKeyEnabled] Specifies whether SSH Key Authentication is enabled. Defaults to `false`.
  /// [sshPasswordEnabled] Specifies whether SSH Password Authentication is enabled. Defaults to `false`.
  /// [storageAccountId] The ID of the Storage Account that this Storage Account Local User resides in. Changing this forces a new Storage Account Local User to be created.
  LocalUserState({
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
      homeDirectory: map['homeDirectory'] == null ? null : (map['homeDirectory']! as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      password: map['password'] == null ? null : (map['password']! as String).input(),
      permissionScopes: map['permissionScopes'] == null ? null : (pulumi.Input.decodeList<LocalUserPermissionScope>(map['permissionScopes']!, (value) => LocalUserPermissionScope.fromMap((value as Map).cast<String, dynamic>()))).input(),
      sid: map['sid'] == null ? null : (map['sid']! as String).input(),
      sshAuthorizedKeys: map['sshAuthorizedKeys'] == null ? null : (pulumi.Input.decodeList<LocalUserSshAuthorizedKey>(map['sshAuthorizedKeys']!, (value) => LocalUserSshAuthorizedKey.fromMap((value as Map).cast<String, dynamic>()))).input(),
      sshKeyEnabled: map['sshKeyEnabled'] == null ? null : (map['sshKeyEnabled']! as bool).input(),
      sshPasswordEnabled: map['sshPasswordEnabled'] == null ? null : (map['sshPasswordEnabled']! as bool).input(),
      storageAccountId: map['storageAccountId'] == null ? null : (map['storageAccountId']! as String).input(),
    );
  }
}

