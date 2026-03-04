// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'metadata_options_response.dart';

/// TransferOptions define the actions to be performed on objects in a transfer.
class TransferOptionsResponse {
  /// Whether objects should be deleted from the source after they are transferred to the sink. **Note:** This option and delete_objects_unique_in_sink are mutually exclusive.
  final pulumi.Input<bool> deleteObjectsFromSourceAfterTransfer;

  /// Whether objects that exist only in the sink should be deleted. **Note:** This option and delete_objects_from_source_after_transfer are mutually exclusive.
  final pulumi.Input<bool> deleteObjectsUniqueInSink;

  /// Represents the selected metadata options for a transfer job.
  final pulumi.Input<MetadataOptionsResponse> metadataOptions;

  /// When to overwrite objects that already exist in the sink. The default is that only objects that are different from the source are ovewritten. If true, all objects in the sink whose name matches an object in the source are overwritten with the source object.
  final pulumi.Input<bool> overwriteObjectsAlreadyExistingInSink;

  /// When to overwrite objects that already exist in the sink. If not set, overwrite behavior is determined by overwrite_objects_already_existing_in_sink.
  final pulumi.Input<String> overwriteWhen;

  /// Creates a new [TransferOptionsResponse].
  /// [deleteObjectsFromSourceAfterTransfer] Whether objects should be deleted from the source after they are transferred to the sink. **Note:** This option and delete_objects_unique_in_sink are mutually exclusive.
  /// [deleteObjectsUniqueInSink] Whether objects that exist only in the sink should be deleted. **Note:** This option and delete_objects_from_source_after_transfer are mutually exclusive.
  /// [metadataOptions] Represents the selected metadata options for a transfer job.
  /// [overwriteObjectsAlreadyExistingInSink] When to overwrite objects that already exist in the sink. The default is that only objects that are different from the source are ovewritten. If true, all objects in the sink whose name matches an object in the source are overwritten with the source object.
  /// [overwriteWhen] When to overwrite objects that already exist in the sink. If not set, overwrite behavior is determined by overwrite_objects_already_existing_in_sink.
  TransferOptionsResponse({
    required this.deleteObjectsFromSourceAfterTransfer,
    required this.deleteObjectsUniqueInSink,
    required this.metadataOptions,
    required this.overwriteObjectsAlreadyExistingInSink,
    required this.overwriteWhen,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deleteObjectsFromSourceAfterTransfer':
          deleteObjectsFromSourceAfterTransfer,
      'deleteObjectsUniqueInSink': deleteObjectsUniqueInSink,
      'metadataOptions':
          pulumi.Input.mapInputValue<
            MetadataOptionsResponse,
            Map<String, dynamic>
          >(metadataOptions, (value) => value.toMap()),
      'overwriteObjectsAlreadyExistingInSink':
          overwriteObjectsAlreadyExistingInSink,
      'overwriteWhen': overwriteWhen,
    };
  }

  factory TransferOptionsResponse.fromMap(Map<String, dynamic> map) {
    return TransferOptionsResponse(
      deleteObjectsFromSourceAfterTransfer: pulumi.Input.fromValue(
        map['deleteObjectsFromSourceAfterTransfer'] as bool,
      ),
      deleteObjectsUniqueInSink: pulumi.Input.fromValue(
        map['deleteObjectsUniqueInSink'] as bool,
      ),
      metadataOptions: pulumi.Input.fromValue(
        MetadataOptionsResponse.fromMap(
          (map['metadataOptions']! as Map).cast<String, dynamic>(),
        ),
      ),
      overwriteObjectsAlreadyExistingInSink: pulumi.Input.fromValue(
        map['overwriteObjectsAlreadyExistingInSink'] as bool,
      ),
      overwriteWhen: pulumi.Input.fromValue(map['overwriteWhen'] as String),
    );
  }
}
