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
      'rules':
          ?pulumi.Input.mapOptionalInputValue<
            List<ObjectReplicationRule>,
            List<Map<String, dynamic>>
          >(
            rules,
            (value) =>
                pulumi.Input.encodeList<
                  ObjectReplicationRule,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'sourceObjectReplicationId': ?sourceObjectReplicationId,
      'sourceStorageAccountId': ?sourceStorageAccountId,
    };
  }

  factory ObjectReplicationState.fromMap(Map<String, dynamic> map) {
    return ObjectReplicationState(
      destinationObjectReplicationId: (() {
        final guardedValue = map['destinationObjectReplicationId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      destinationStorageAccountId: (() {
        final guardedValue = map['destinationStorageAccountId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      rules: (() {
        final guardedValue = map['rules'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<ObjectReplicationRule>(
            guardedValue,
            (value) => ObjectReplicationRule.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      sourceObjectReplicationId: (() {
        final guardedValue = map['sourceObjectReplicationId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      sourceStorageAccountId: (() {
        final guardedValue = map['sourceStorageAccountId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
