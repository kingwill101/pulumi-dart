// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'object_replication_rule.dart';

/// Input properties used for looking up and filtering ObjectReplication resources.
class ObjectReplicationState {
  /// The ID of the Object Replication in the destination storage account.
  final pulumi.Input<String>? destinationObjectReplicationId;
  /// The ID of the destination storage account. Changing this forces a new Storage Object Replication to be created.
  final pulumi.Input<String>? destinationStorageAccountId;
  /// One or more `rules` blocks as defined below.
  final pulumi.Input<List<ObjectReplicationRule>>? rules;
  /// The ID of the Object Replication in the source storage account.
  final pulumi.Input<String>? sourceObjectReplicationId;
  /// The ID of the source storage account. Changing this forces a new Storage Object Replication to be created.
  final pulumi.Input<String>? sourceStorageAccountId;

  /// Creates a new [ObjectReplicationState].
  /// [destinationObjectReplicationId] The ID of the Object Replication in the destination storage account.
  /// [destinationStorageAccountId] The ID of the destination storage account. Changing this forces a new Storage Object Replication to be created.
  /// [rules] One or more `rules` blocks as defined below.
  /// [sourceObjectReplicationId] The ID of the Object Replication in the source storage account.
  /// [sourceStorageAccountId] The ID of the source storage account. Changing this forces a new Storage Object Replication to be created.
  ObjectReplicationState({
    pulumi.Output<String>? destinationObjectReplicationId,
    pulumi.Output<String>? destinationStorageAccountId,
    pulumi.Output<List<ObjectReplicationRule>>? rules,
    pulumi.Output<String>? sourceObjectReplicationId,
    pulumi.Output<String>? sourceStorageAccountId,
  }) :
      destinationObjectReplicationId = pulumi.Input.asOptionalInput<String>(destinationObjectReplicationId),
      destinationStorageAccountId = pulumi.Input.asOptionalInput<String>(destinationStorageAccountId),
      rules = pulumi.Input.asOptionalInput<List<ObjectReplicationRule>>(rules),
      sourceObjectReplicationId = pulumi.Input.asOptionalInput<String>(sourceObjectReplicationId),
      sourceStorageAccountId = pulumi.Input.asOptionalInput<String>(sourceStorageAccountId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'destinationObjectReplicationId': ?destinationObjectReplicationId,
      'destinationStorageAccountId': ?destinationStorageAccountId,
      'rules': ?pulumi.Input.mapOptionalInputValue<List<ObjectReplicationRule>, List<Map<String, dynamic>>>(rules, (value) => pulumi.Input.encodeList<ObjectReplicationRule, Map<String, dynamic>>(value, (value) => value.toMap())),
      'sourceObjectReplicationId': ?sourceObjectReplicationId,
      'sourceStorageAccountId': ?sourceStorageAccountId,
    };
  }

  factory ObjectReplicationState.fromMap(Map<String, dynamic> map) {
    return ObjectReplicationState(
      destinationObjectReplicationId: map['destinationObjectReplicationId'] == null ? null : pulumi.Output.create<String>(map['destinationObjectReplicationId'] as String),
      destinationStorageAccountId: map['destinationStorageAccountId'] == null ? null : pulumi.Output.create<String>(map['destinationStorageAccountId'] as String),
      rules: map['rules'] == null ? null : pulumi.Output.create<List<ObjectReplicationRule>>(pulumi.Input.decodeList<ObjectReplicationRule>(map['rules'], (value) => ObjectReplicationRule.fromMap((value as Map).cast<String, dynamic>()))),
      sourceObjectReplicationId: map['sourceObjectReplicationId'] == null ? null : pulumi.Output.create<String>(map['sourceObjectReplicationId'] as String),
      sourceStorageAccountId: map['sourceStorageAccountId'] == null ? null : pulumi.Output.create<String>(map['sourceStorageAccountId'] as String),
    );
  }
}

