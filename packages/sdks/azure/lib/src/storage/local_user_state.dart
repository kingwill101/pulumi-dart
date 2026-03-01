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
    pulumi.Output<String>? homeDirectory,
    pulumi.Output<String>? name,
    pulumi.Output<String>? password,
    pulumi.Output<List<LocalUserPermissionScope>>? permissionScopes,
    pulumi.Output<String>? sid,
    pulumi.Output<List<LocalUserSshAuthorizedKey>>? sshAuthorizedKeys,
    pulumi.Output<bool>? sshKeyEnabled,
    pulumi.Output<bool>? sshPasswordEnabled,
    pulumi.Output<String>? storageAccountId,
  }) :
      homeDirectory = pulumi.Input.asOptionalInput<String>(homeDirectory),
      name = pulumi.Input.asOptionalInput<String>(name),
      password = pulumi.Input.asOptionalInput<String>(password),
      permissionScopes = pulumi.Input.asOptionalInput<List<LocalUserPermissionScope>>(permissionScopes),
      sid = pulumi.Input.asOptionalInput<String>(sid),
      sshAuthorizedKeys = pulumi.Input.asOptionalInput<List<LocalUserSshAuthorizedKey>>(sshAuthorizedKeys),
      sshKeyEnabled = pulumi.Input.asOptionalInput<bool>(sshKeyEnabled),
      sshPasswordEnabled = pulumi.Input.asOptionalInput<bool>(sshPasswordEnabled),
      storageAccountId = pulumi.Input.asOptionalInput<String>(storageAccountId);

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
      homeDirectory: map['homeDirectory'] == null ? null : pulumi.Output.create<String>(map['homeDirectory'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      password: map['password'] == null ? null : pulumi.Output.create<String>(map['password'] as String),
      permissionScopes: map['permissionScopes'] == null ? null : pulumi.Output.create<List<LocalUserPermissionScope>>(pulumi.Input.decodeList<LocalUserPermissionScope>(map['permissionScopes'], (value) => LocalUserPermissionScope.fromMap((value as Map).cast<String, dynamic>()))),
      sid: map['sid'] == null ? null : pulumi.Output.create<String>(map['sid'] as String),
      sshAuthorizedKeys: map['sshAuthorizedKeys'] == null ? null : pulumi.Output.create<List<LocalUserSshAuthorizedKey>>(pulumi.Input.decodeList<LocalUserSshAuthorizedKey>(map['sshAuthorizedKeys'], (value) => LocalUserSshAuthorizedKey.fromMap((value as Map).cast<String, dynamic>()))),
      sshKeyEnabled: map['sshKeyEnabled'] == null ? null : pulumi.Output.create<bool>(map['sshKeyEnabled'] as bool),
      sshPasswordEnabled: map['sshPasswordEnabled'] == null ? null : pulumi.Output.create<bool>(map['sshPasswordEnabled'] as bool),
      storageAccountId: map['storageAccountId'] == null ? null : pulumi.Output.create<String>(map['storageAccountId'] as String),
    );
  }
}

