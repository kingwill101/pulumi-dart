// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'transfer_job_replication_spec_transfer_options_metadata_options.dart';

class TransferJobReplicationSpecTransferOptions {
  /// Whether objects should be deleted from the source after they are transferred to the sink. Note that this option and `delete_objects_unique_in_sink` are mutually exclusive.
  final pulumi.Input<bool>? deleteObjectsFromSourceAfterTransfer;
  /// Whether objects that exist only in the sink should be deleted. Note that this option and
  /// `delete_objects_from_source_after_transfer` are mutually exclusive.
  final pulumi.Input<bool>? deleteObjectsUniqueInSink;
  /// Specifies the metadata options for running a transfer. Structure documented below.
  final pulumi.Input<TransferJobReplicationSpecTransferOptionsMetadataOptions>? metadataOptions;
  /// Whether overwriting objects that already exist in the sink is allowed.
  final pulumi.Input<bool>? overwriteObjectsAlreadyExistingInSink;
  /// When to overwrite objects that already exist in the sink. If not set, overwrite behavior is determined by `overwrite_objects_already_existing_in_sink`. Possible values: ALWAYS, DIFFERENT, NEVER.
  final pulumi.Input<String>? overwriteWhen;

  /// Creates a new [TransferJobReplicationSpecTransferOptions].
  /// [deleteObjectsFromSourceAfterTransfer] Whether objects should be deleted from the source after they are transferred to the sink. Note that this option and `delete_objects_unique_in_sink` are mutually exclusive.
  /// [deleteObjectsUniqueInSink] Whether objects that exist only in the sink should be deleted. Note that this option and
  /// [metadataOptions] Specifies the metadata options for running a transfer. Structure documented below.
  /// [overwriteObjectsAlreadyExistingInSink] Whether overwriting objects that already exist in the sink is allowed.
  /// [overwriteWhen] When to overwrite objects that already exist in the sink. If not set, overwrite behavior is determined by `overwrite_objects_already_existing_in_sink`. Possible values: ALWAYS, DIFFERENT, NEVER.
  TransferJobReplicationSpecTransferOptions({
    this.deleteObjectsFromSourceAfterTransfer,
    this.deleteObjectsUniqueInSink,
    this.metadataOptions,
    this.overwriteObjectsAlreadyExistingInSink,
    this.overwriteWhen,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deleteObjectsFromSourceAfterTransfer': ?deleteObjectsFromSourceAfterTransfer,
      'deleteObjectsUniqueInSink': ?deleteObjectsUniqueInSink,
      'metadataOptions': ?pulumi.Input.mapOptionalInputValue<TransferJobReplicationSpecTransferOptionsMetadataOptions, Map<String, dynamic>>(metadataOptions, (value) => value.toMap()),
      'overwriteObjectsAlreadyExistingInSink': ?overwriteObjectsAlreadyExistingInSink,
      'overwriteWhen': ?overwriteWhen,
    };
  }

  factory TransferJobReplicationSpecTransferOptions.fromMap(Map<String, dynamic> map) {
    return TransferJobReplicationSpecTransferOptions(
      deleteObjectsFromSourceAfterTransfer: map['deleteObjectsFromSourceAfterTransfer'] == null ? null : (map['deleteObjectsFromSourceAfterTransfer']! as bool).input(),
      deleteObjectsUniqueInSink: map['deleteObjectsUniqueInSink'] == null ? null : (map['deleteObjectsUniqueInSink']! as bool).input(),
      metadataOptions: map['metadataOptions'] == null ? null : (TransferJobReplicationSpecTransferOptionsMetadataOptions.fromMap((map['metadataOptions']! as Map).cast<String, dynamic>())).input(),
      overwriteObjectsAlreadyExistingInSink: map['overwriteObjectsAlreadyExistingInSink'] == null ? null : (map['overwriteObjectsAlreadyExistingInSink']! as bool).input(),
      overwriteWhen: map['overwriteWhen'] == null ? null : (map['overwriteWhen']! as String).input(),
    );
  }
}

