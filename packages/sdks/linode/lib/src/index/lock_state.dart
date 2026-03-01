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
    pulumi.Output<int>? entityId,
    pulumi.Output<String>? entityLabel,
    pulumi.Output<String>? entityType,
    pulumi.Output<String>? entityUrl,
    pulumi.Output<String>? lockType,
  }) :
      entityId = pulumi.Input.asOptionalInput<int>(entityId),
      entityLabel = pulumi.Input.asOptionalInput<String>(entityLabel),
      entityType = pulumi.Input.asOptionalInput<String>(entityType),
      entityUrl = pulumi.Input.asOptionalInput<String>(entityUrl),
      lockType = pulumi.Input.asOptionalInput<String>(lockType);

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
      entityId: map['entityId'] == null ? null : pulumi.Output.create<int>(map['entityId'] as int),
      entityLabel: map['entityLabel'] == null ? null : pulumi.Output.create<String>(map['entityLabel'] as String),
      entityType: map['entityType'] == null ? null : pulumi.Output.create<String>(map['entityType'] as String),
      entityUrl: map['entityUrl'] == null ? null : pulumi.Output.create<String>(map['entityUrl'] as String),
      lockType: map['lockType'] == null ? null : pulumi.Output.create<String>(map['lockType'] as String),
    );
  }
}

