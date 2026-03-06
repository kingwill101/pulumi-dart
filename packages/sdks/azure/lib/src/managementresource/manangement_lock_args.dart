// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_managementresource_manangement_lock_manangement_lock_args_doc}
/// The set of arguments for ManangementLock.
/// {@endtemplate}
/// {@macro pulumi_managementresource_manangement_lock_manangement_lock_args_doc}
class ManangementLockArgs {
  /// Specifies the Level to be used for this Lock. Possible values are `CanNotDelete` and `ReadOnly`. Changing this forces a new resource to be created.
  ///
  /// &gt; **Note:** `CanNotDelete` means authorized users are able to read and modify the resources, but not delete. `ReadOnly` means authorized users can only read from a resource, but they can't modify or delete it.
  final pulumi.Input<String> lockLevel;
  /// Specifies the name of the Management Lock. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// Specifies some notes about the lock. Maximum of 512 characters. Changing this forces a new resource to be created.
  final pulumi.Input<String>? notes;
  /// Specifies the scope at which the Management Lock should be created. Changing this forces a new resource to be created.
  final pulumi.Input<String> scope;

  /// Creates a new [ManangementLockArgs].
  /// [lockLevel] Specifies the Level to be used for this Lock. Possible values are `CanNotDelete` and `ReadOnly`. Changing this forces a new resource to be created.
  /// [name] Specifies the name of the Management Lock. Changing this forces a new resource to be created.
  /// [notes] Specifies some notes about the lock. Maximum of 512 characters. Changing this forces a new resource to be created.
  /// [scope] Specifies the scope at which the Management Lock should be created. Changing this forces a new resource to be created.
  const ManangementLockArgs({
    required this.lockLevel,
    this.name,
    this.notes,
    required this.scope,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'lockLevel': lockLevel,
      'name': ?name,
      'notes': ?notes,
      'scope': scope,
    };
  }

  factory ManangementLockArgs.fromMap(Map<String, dynamic> map) {
    return ManangementLockArgs(
      lockLevel: pulumi.Input.fromValue(map['lockLevel'] as String),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      notes: (() { final guardedValue = map['notes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      scope: pulumi.Input.fromValue(map['scope'] as String),
    );
  }
}

