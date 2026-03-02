// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering Lock resources.
class LockState {
  /// Specifies the Level to be used for this Lock. Possible values are `CanNotDelete` and `ReadOnly`. Changing this forces a new resource to be created.
  ///
  /// > **Note:** `CanNotDelete` means authorized users are able to read and modify the resources, but not delete. `ReadOnly` means authorized users can only read from a resource, but they can't modify or delete it.
  final pulumi.Input<String>? lockLevel;
  /// Specifies the name of the Management Lock. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// Specifies some notes about the lock. Maximum of 512 characters. Changing this forces a new resource to be created.
  final pulumi.Input<String>? notes;
  /// Specifies the scope at which the Management Lock should be created. Changing this forces a new resource to be created.
  final pulumi.Input<String>? scope;

  /// Creates a new [LockState].
  /// [lockLevel] Specifies the Level to be used for this Lock. Possible values are `CanNotDelete` and `ReadOnly`. Changing this forces a new resource to be created.
  /// [name] Specifies the name of the Management Lock. Changing this forces a new resource to be created.
  /// [notes] Specifies some notes about the lock. Maximum of 512 characters. Changing this forces a new resource to be created.
  /// [scope] Specifies the scope at which the Management Lock should be created. Changing this forces a new resource to be created.
  LockState({
    this.lockLevel,
    this.name,
    this.notes,
    this.scope,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'lockLevel': ?lockLevel,
      'name': ?name,
      'notes': ?notes,
      'scope': ?scope,
    };
  }

  factory LockState.fromMap(Map<String, dynamic> map) {
    return LockState(
      lockLevel: map['lockLevel'] == null ? null : (map['lockLevel'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      notes: map['notes'] == null ? null : (map['notes'] as String).input(),
      scope: map['scope'] == null ? null : (map['scope'] as String).input(),
    );
  }
}

