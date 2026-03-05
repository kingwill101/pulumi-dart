// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Options for merging updated fields.
class GoogleCloudContentwarehouseV1MergeFieldsOptions {
  /// When merging message fields, the default behavior is to merge the content of two message fields together. If you instead want to use the field from the source message to replace the corresponding field in the destination message, set this flag to true. When this flag is set, specified submessage fields that are missing in source will be cleared in destination.
  final pulumi.Input<bool>? replaceMessageFields;
  /// When merging repeated fields, the default behavior is to append entries from the source repeated field to the destination repeated field. If you instead want to keep only the entries from the source repeated field, set this flag to true. If you want to replace a repeated field within a message field on the destination message, you must set both replace_repeated_fields and replace_message_fields to true, otherwise the repeated fields will be appended.
  final pulumi.Input<bool>? replaceRepeatedFields;

  /// Creates a new [GoogleCloudContentwarehouseV1MergeFieldsOptions].
  /// [replaceMessageFields] When merging message fields, the default behavior is to merge the content of two message fields together. If you instead want to use the field from the source message to replace the corresponding field in the destination message, set this flag to true. When this flag is set, specified submessage fields that are missing in source will be cleared in destination.
  /// [replaceRepeatedFields] When merging repeated fields, the default behavior is to append entries from the source repeated field to the destination repeated field. If you instead want to keep only the entries from the source repeated field, set this flag to true. If you want to replace a repeated field within a message field on the destination message, you must set both replace_repeated_fields and replace_message_fields to true, otherwise the repeated fields will be appended.
  GoogleCloudContentwarehouseV1MergeFieldsOptions({
    this.replaceMessageFields,
    this.replaceRepeatedFields,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'replaceMessageFields': ?replaceMessageFields,
      'replaceRepeatedFields': ?replaceRepeatedFields,
    };
  }

  factory GoogleCloudContentwarehouseV1MergeFieldsOptions.fromMap(Map<String, dynamic> map) {
    return GoogleCloudContentwarehouseV1MergeFieldsOptions(
      replaceMessageFields: (() { final guardedValue = map['replaceMessageFields']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      replaceRepeatedFields: (() { final guardedValue = map['replaceRepeatedFields']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}

