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
    this.destinationObjectReplicationId,
    this.destinationStorageAccountId,
    this.rules,
    this.sourceObjectReplicationId,
    this.sourceStorageAccountId,
  });

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
      destinationObjectReplicationId: map['destinationObjectReplicationId'] == null ? null : (map['destinationObjectReplicationId'] as String).input(),
      destinationStorageAccountId: map['destinationStorageAccountId'] == null ? null : (map['destinationStorageAccountId'] as String).input(),
      rules: map['rules'] == null ? null : (pulumi.Input.decodeList<ObjectReplicationRule>(map['rules'], (value) => ObjectReplicationRule.fromMap((value as Map).cast<String, dynamic>()))).input(),
      sourceObjectReplicationId: map['sourceObjectReplicationId'] == null ? null : (map['sourceObjectReplicationId'] as String).input(),
      sourceStorageAccountId: map['sourceStorageAccountId'] == null ? null : (map['sourceStorageAccountId'] as String).input(),
    );
  }
}

