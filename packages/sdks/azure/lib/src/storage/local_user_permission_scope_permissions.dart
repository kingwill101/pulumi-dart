// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class LocalUserPermissionScopePermissions {
  /// Specifies if the Local User has the create permission for this scope. Defaults to `false`.
  final pulumi.Input<bool?>? create;
  /// Specifies if the Local User has the delete permission for this scope. Defaults to `false`.
  final pulumi.Input<bool?>? delete;
  /// Specifies if the Local User has the list permission for this scope. Defaults to `false`.
  final pulumi.Input<bool?>? list;
  /// Specifies if the Local User has the read permission for this scope. Defaults to `false`.
  final pulumi.Input<bool?>? read;
  /// Specifies if the Local User has the write permission for this scope. Defaults to `false`.
  final pulumi.Input<bool?>? write;

  /// Creates a new [LocalUserPermissionScopePermissions].
  /// [create] Specifies if the Local User has the create permission for this scope. Defaults to `false`.
  /// [delete] Specifies if the Local User has the delete permission for this scope. Defaults to `false`.
  /// [list] Specifies if the Local User has the list permission for this scope. Defaults to `false`.
  /// [read] Specifies if the Local User has the read permission for this scope. Defaults to `false`.
  /// [write] Specifies if the Local User has the write permission for this scope. Defaults to `false`.
  const LocalUserPermissionScopePermissions({
    this.create,
    this.delete,
    this.list,
    this.read,
    this.write,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'create': ?create,
      'delete': ?delete,
      'list': ?list,
      'read': ?read,
      'write': ?write,
    };
  }

  factory LocalUserPermissionScopePermissions.fromMap(Map<String, dynamic> map) {
    return LocalUserPermissionScopePermissions(
      create: (() { final guardedValue = map['create']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      delete: (() { final guardedValue = map['delete']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      list: (() { final guardedValue = map['list']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      read: (() { final guardedValue = map['read']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      write: (() { final guardedValue = map['write']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
