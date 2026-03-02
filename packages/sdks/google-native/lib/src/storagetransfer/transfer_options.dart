// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'metadata_options.dart';
import 'transfer_options_overwrite_when.dart';

/// TransferOptions define the actions to be performed on objects in a transfer.
class TransferOptions {
  /// Whether objects should be deleted from the source after they are transferred to the sink. **Note:** This option and delete_objects_unique_in_sink are mutually exclusive.
  final pulumi.Input<bool>? deleteObjectsFromSourceAfterTransfer;
  /// Whether objects that exist only in the sink should be deleted. **Note:** This option and delete_objects_from_source_after_transfer are mutually exclusive.
  final pulumi.Input<bool>? deleteObjectsUniqueInSink;
  /// Represents the selected metadata options for a transfer job.
  final pulumi.Input<MetadataOptions>? metadataOptions;
  /// When to overwrite objects that already exist in the sink. The default is that only objects that are different from the source are ovewritten. If true, all objects in the sink whose name matches an object in the source are overwritten with the source object.
  final pulumi.Input<bool>? overwriteObjectsAlreadyExistingInSink;
  /// When to overwrite objects that already exist in the sink. If not set, overwrite behavior is determined by overwrite_objects_already_existing_in_sink.
  final pulumi.Input<TransferOptionsOverwriteWhen>? overwriteWhen;

  /// Creates a new [TransferOptions].
  /// [deleteObjectsFromSourceAfterTransfer] Whether objects should be deleted from the source after they are transferred to the sink. **Note:** This option and delete_objects_unique_in_sink are mutually exclusive.
  /// [deleteObjectsUniqueInSink] Whether objects that exist only in the sink should be deleted. **Note:** This option and delete_objects_from_source_after_transfer are mutually exclusive.
  /// [metadataOptions] Represents the selected metadata options for a transfer job.
  /// [overwriteObjectsAlreadyExistingInSink] When to overwrite objects that already exist in the sink. The default is that only objects that are different from the source are ovewritten. If true, all objects in the sink whose name matches an object in the source are overwritten with the source object.
  /// [overwriteWhen] When to overwrite objects that already exist in the sink. If not set, overwrite behavior is determined by overwrite_objects_already_existing_in_sink.
  TransferOptions({
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
      'metadataOptions': ?pulumi.Input.mapOptionalInputValue<MetadataOptions, Map<String, dynamic>>(metadataOptions, (value) => value.toMap()),
      'overwriteObjectsAlreadyExistingInSink': ?overwriteObjectsAlreadyExistingInSink,
      'overwriteWhen': ?pulumi.Input.mapOptionalInputValue<TransferOptionsOverwriteWhen, String>(overwriteWhen, (value) => value.value),
    };
  }

  factory TransferOptions.fromMap(Map<String, dynamic> map) {
    return TransferOptions(
      deleteObjectsFromSourceAfterTransfer: map['deleteObjectsFromSourceAfterTransfer'] == null ? null : (map['deleteObjectsFromSourceAfterTransfer']! as bool).input(),
      deleteObjectsUniqueInSink: map['deleteObjectsUniqueInSink'] == null ? null : (map['deleteObjectsUniqueInSink']! as bool).input(),
      metadataOptions: map['metadataOptions'] == null ? null : (MetadataOptions.fromMap((map['metadataOptions']! as Map).cast<String, dynamic>())).input(),
      overwriteObjectsAlreadyExistingInSink: map['overwriteObjectsAlreadyExistingInSink'] == null ? null : (map['overwriteObjectsAlreadyExistingInSink']! as bool).input(),
      overwriteWhen: map['overwriteWhen'] == null ? null : (TransferOptionsOverwriteWhen.fromValue(map['overwriteWhen']! as String)).input(),
    );
  }
}

