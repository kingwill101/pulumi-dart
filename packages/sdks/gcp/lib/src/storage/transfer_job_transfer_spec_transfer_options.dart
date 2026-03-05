// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'transfer_job_transfer_spec_transfer_options_metadata_options.dart';

class TransferJobTransferSpecTransferOptions {
  /// Whether objects should be deleted from the source after they are transferred to the sink. Note that this option and `delete_objects_unique_in_sink` are mutually exclusive.
  final pulumi.Input<bool>? deleteObjectsFromSourceAfterTransfer;
  /// Whether objects that exist only in the sink should be deleted. Note that this option and
  /// `delete_objects_from_source_after_transfer` are mutually exclusive.
  final pulumi.Input<bool>? deleteObjectsUniqueInSink;
  /// Specifies the metadata options for running a transfer. Structure documented below.
  final pulumi.Input<TransferJobTransferSpecTransferOptionsMetadataOptions>? metadataOptions;
  /// Whether overwriting objects that already exist in the sink is allowed.
  final pulumi.Input<bool>? overwriteObjectsAlreadyExistingInSink;
  /// When to overwrite objects that already exist in the sink. If not set, overwrite behavior is determined by `overwrite_objects_already_existing_in_sink`. Possible values: ALWAYS, DIFFERENT, NEVER.
  final pulumi.Input<String>? overwriteWhen;

  /// Creates a new [TransferJobTransferSpecTransferOptions].
  /// [deleteObjectsFromSourceAfterTransfer] Whether objects should be deleted from the source after they are transferred to the sink. Note that this option and `delete_objects_unique_in_sink` are mutually exclusive.
  /// [deleteObjectsUniqueInSink] Whether objects that exist only in the sink should be deleted. Note that this option and
  /// [metadataOptions] Specifies the metadata options for running a transfer. Structure documented below.
  /// [overwriteObjectsAlreadyExistingInSink] Whether overwriting objects that already exist in the sink is allowed.
  /// [overwriteWhen] When to overwrite objects that already exist in the sink. If not set, overwrite behavior is determined by `overwrite_objects_already_existing_in_sink`. Possible values: ALWAYS, DIFFERENT, NEVER.
  TransferJobTransferSpecTransferOptions({
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
      'metadataOptions': ?pulumi.Input.mapOptionalInputValue<TransferJobTransferSpecTransferOptionsMetadataOptions, Map<String, dynamic>>(metadataOptions, (value) => value.toMap()),
      'overwriteObjectsAlreadyExistingInSink': ?overwriteObjectsAlreadyExistingInSink,
      'overwriteWhen': ?overwriteWhen,
    };
  }

  factory TransferJobTransferSpecTransferOptions.fromMap(Map<String, dynamic> map) {
    return TransferJobTransferSpecTransferOptions(
      deleteObjectsFromSourceAfterTransfer: (() { final guardedValue = map['deleteObjectsFromSourceAfterTransfer']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      deleteObjectsUniqueInSink: (() { final guardedValue = map['deleteObjectsUniqueInSink']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      metadataOptions: (() { final guardedValue = map['metadataOptions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(TransferJobTransferSpecTransferOptionsMetadataOptions.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      overwriteObjectsAlreadyExistingInSink: (() { final guardedValue = map['overwriteObjectsAlreadyExistingInSink']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      overwriteWhen: (() { final guardedValue = map['overwriteWhen']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

