// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering Lock resources.
class LockState {
  /// The ID of the entity to lock.
  final pulumi.Input<int>? entityId;
  /// The label of the locked entity.
  final pulumi.Input<String>? entityLabel;
  /// The type of the entity to lock. Currently only `linode` is supported. Note: Linodes that are part of an LKE cluster cannot be locked.
  final pulumi.Input<String>? entityType;
  /// The URL of the locked entity.
  final pulumi.Input<String>? entityUrl;
  /// The type of lock to apply. Only one lock type can exist per resource at a time. Valid values are:
  final pulumi.Input<String>? lockType;

  /// Creates a new [LockState].
  /// [entityId] The ID of the entity to lock.
  /// [entityLabel] The label of the locked entity.
  /// [entityType] The type of the entity to lock. Currently only `linode` is supported. Note: Linodes that are part of an LKE cluster cannot be locked.
  /// [entityUrl] The URL of the locked entity.
  /// [lockType] The type of lock to apply. Only one lock type can exist per resource at a time. Valid values are:
  LockState({
    this.entityId,
    this.entityLabel,
    this.entityType,
    this.entityUrl,
    this.lockType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'entityId': ?entityId,
      'entityLabel': ?entityLabel,
      'entityType': ?entityType,
      'entityUrl': ?entityUrl,
      'lockType': ?lockType,
    };
  }

  factory LockState.fromMap(Map<String, dynamic> map) {
    return LockState(
      entityId: map['entityId'] == null ? null : (map['entityId'] as int).input(),
      entityLabel: map['entityLabel'] == null ? null : (map['entityLabel'] as String).input(),
      entityType: map['entityType'] == null ? null : (map['entityType'] as String).input(),
      entityUrl: map['entityUrl'] == null ? null : (map['entityUrl'] as String).input(),
      lockType: map['lockType'] == null ? null : (map['lockType'] as String).input(),
    );
  }
}

