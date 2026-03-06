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
  const TransferOptions({
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
      'overwriteWhen': ?pulumi.Input.mapOptionalInputValue<TransferOptionsOverwriteWhen, String>(overwriteWhen, (value) => value.wireValue),
    };
  }

  factory TransferOptions.fromMap(Map<String, dynamic> map) {
    return TransferOptions(
      deleteObjectsFromSourceAfterTransfer: (() { final guardedValue = map['deleteObjectsFromSourceAfterTransfer']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      deleteObjectsUniqueInSink: (() { final guardedValue = map['deleteObjectsUniqueInSink']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      metadataOptions: (() { final guardedValue = map['metadataOptions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(MetadataOptions.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      overwriteObjectsAlreadyExistingInSink: (() { final guardedValue = map['overwriteObjectsAlreadyExistingInSink']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      overwriteWhen: (() { final guardedValue = map['overwriteWhen']; if (guardedValue == null) return null; return pulumi.Input.fromValue(TransferOptionsOverwriteWhen.fromValue(guardedValue as String)); })(),
    );
  }
}

