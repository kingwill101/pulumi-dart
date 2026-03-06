// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'prevention_job_trigger_inspect_job_storage_config_datastore_options_kind.dart';
import 'prevention_job_trigger_inspect_job_storage_config_datastore_options_partition_id.dart';

class PreventionJobTriggerInspectJobStorageConfigDatastoreOptions {
  /// A representation of a Datastore kind.
  /// Structure is documented below.
  final pulumi.Input<PreventionJobTriggerInspectJobStorageConfigDatastoreOptionsKind> kind;
  /// Datastore partition ID. A partition ID identifies a grouping of entities. The grouping
  /// is always by project and namespace, however the namespace ID may be empty.
  /// Structure is documented below.
  final pulumi.Input<PreventionJobTriggerInspectJobStorageConfigDatastoreOptionsPartitionId> partitionId;

  /// Creates a new [PreventionJobTriggerInspectJobStorageConfigDatastoreOptions].
  /// [kind] A representation of a Datastore kind.
  /// [partitionId] Datastore partition ID. A partition ID identifies a grouping of entities. The grouping
  const PreventionJobTriggerInspectJobStorageConfigDatastoreOptions({
    required this.kind,
    required this.partitionId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'kind': pulumi.Input.mapInputValue<PreventionJobTriggerInspectJobStorageConfigDatastoreOptionsKind, Map<String, dynamic>>(kind, (value) => value.toMap()),
      'partitionId': pulumi.Input.mapInputValue<PreventionJobTriggerInspectJobStorageConfigDatastoreOptionsPartitionId, Map<String, dynamic>>(partitionId, (value) => value.toMap()),
    };
  }

  factory PreventionJobTriggerInspectJobStorageConfigDatastoreOptions.fromMap(Map<String, dynamic> map) {
    return PreventionJobTriggerInspectJobStorageConfigDatastoreOptions(
      kind: pulumi.Input.fromValue(PreventionJobTriggerInspectJobStorageConfigDatastoreOptionsKind.fromMap((map['kind']! as Map).cast<String, dynamic>())),
      partitionId: pulumi.Input.fromValue(PreventionJobTriggerInspectJobStorageConfigDatastoreOptionsPartitionId.fromMap((map['partitionId']! as Map).cast<String, dynamic>())),
    );
  }
}

