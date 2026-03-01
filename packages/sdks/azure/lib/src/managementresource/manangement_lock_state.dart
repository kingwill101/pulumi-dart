// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering ManangementLock resources.
class ManangementLockState {
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

  /// Creates a new [ManangementLockState].
  /// [lockLevel] Specifies the Level to be used for this Lock. Possible values are `CanNotDelete` and `ReadOnly`. Changing this forces a new resource to be created.
  /// [name] Specifies the name of the Management Lock. Changing this forces a new resource to be created.
  /// [notes] Specifies some notes about the lock. Maximum of 512 characters. Changing this forces a new resource to be created.
  /// [scope] Specifies the scope at which the Management Lock should be created. Changing this forces a new resource to be created.
  ManangementLockState({
    pulumi.Output<String>? lockLevel,
    pulumi.Output<String>? name,
    pulumi.Output<String>? notes,
    pulumi.Output<String>? scope,
  }) :
      lockLevel = pulumi.Input.asOptionalInput<String>(lockLevel),
      name = pulumi.Input.asOptionalInput<String>(name),
      notes = pulumi.Input.asOptionalInput<String>(notes),
      scope = pulumi.Input.asOptionalInput<String>(scope);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'lockLevel': ?lockLevel,
      'name': ?name,
      'notes': ?notes,
      'scope': ?scope,
    };
  }

  factory ManangementLockState.fromMap(Map<String, dynamic> map) {
    return ManangementLockState(
      lockLevel: map['lockLevel'] == null ? null : pulumi.Output.create<String>(map['lockLevel'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      notes: map['notes'] == null ? null : pulumi.Output.create<String>(map['notes'] as String),
      scope: map['scope'] == null ? null : pulumi.Output.create<String>(map['scope'] as String),
    );
  }
}

