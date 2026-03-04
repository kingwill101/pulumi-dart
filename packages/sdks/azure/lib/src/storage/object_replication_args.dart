// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'object_replication_rule.dart';

/// {@template pulumi_storage_object_replication_object_replication_args_doc}
/// The set of arguments for ObjectReplication.
/// {@endtemplate}
/// {@macro pulumi_storage_object_replication_object_replication_args_doc}
class ObjectReplicationArgs {
  /// The ID of the destination storage account. Changing this forces a new Storage Object Replication to be created.
  final pulumi.Input<String> destinationStorageAccountId;

  /// One or more `rules` blocks as defined below.
  final pulumi.Input<List<ObjectReplicationRule>> rules;

  /// The ID of the source storage account. Changing this forces a new Storage Object Replication to be created.
  final pulumi.Input<String> sourceStorageAccountId;

  /// Creates a new [ObjectReplicationArgs].
  /// [destinationStorageAccountId] The ID of the destination storage account. Changing this forces a new Storage Object Replication to be created.
  /// [rules] One or more `rules` blocks as defined below.
  /// [sourceStorageAccountId] The ID of the source storage account. Changing this forces a new Storage Object Replication to be created.
  ObjectReplicationArgs({
    required this.destinationStorageAccountId,
    required this.rules,
    required this.sourceStorageAccountId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'destinationStorageAccountId': destinationStorageAccountId,
      'rules':
          pulumi.Input.mapInputValue<
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
      'sourceStorageAccountId': sourceStorageAccountId,
    };
  }

  factory ObjectReplicationArgs.fromMap(Map<String, dynamic> map) {
    return ObjectReplicationArgs(
      destinationStorageAccountId: pulumi.Input.fromValue(
        map['destinationStorageAccountId'] as String,
      ),
      rules: pulumi.Input.fromValue(
        pulumi.Input.decodeList<ObjectReplicationRule>(
          map['rules']!,
          (value) => ObjectReplicationRule.fromMap(
            (value as Map).cast<String, dynamic>(),
          ),
        ),
      ),
      sourceStorageAccountId: pulumi.Input.fromValue(
        map['sourceStorageAccountId'] as String,
      ),
    );
  }
}
