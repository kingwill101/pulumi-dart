// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_contentwarehouse_v1_merge_fields_options.dart';
import 'google_cloud_contentwarehouse_v1_update_options_update_type.dart';

/// Options for Update operations.
class GoogleCloudContentwarehouseV1UpdateOptions {
  /// Options for merging.
  final pulumi.Input<GoogleCloudContentwarehouseV1MergeFieldsOptions>? mergeFieldsOptions;
  /// Field mask for merging Document fields. For the `FieldMask` definition, see https://developers.google.com/protocol-buffers/docs/reference/google.protobuf#fieldmask
  final pulumi.Input<String>? updateMask;
  /// Type for update.
  final pulumi.Input<GoogleCloudContentwarehouseV1UpdateOptionsUpdateType>? updateType;

  /// Creates a new [GoogleCloudContentwarehouseV1UpdateOptions].
  /// [mergeFieldsOptions] Options for merging.
  /// [updateMask] Field mask for merging Document fields. For the `FieldMask` definition, see https://developers.google.com/protocol-buffers/docs/reference/google.protobuf#fieldmask
  /// [updateType] Type for update.
  GoogleCloudContentwarehouseV1UpdateOptions({
    this.mergeFieldsOptions,
    this.updateMask,
    this.updateType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'mergeFieldsOptions': ?pulumi.Input.mapOptionalInputValue<GoogleCloudContentwarehouseV1MergeFieldsOptions, Map<String, dynamic>>(mergeFieldsOptions, (value) => value.toMap()),
      'updateMask': ?updateMask,
      'updateType': ?pulumi.Input.mapOptionalInputValue<GoogleCloudContentwarehouseV1UpdateOptionsUpdateType, String>(updateType, (value) => value.wireValue),
    };
  }

  factory GoogleCloudContentwarehouseV1UpdateOptions.fromMap(Map<String, dynamic> map) {
    return GoogleCloudContentwarehouseV1UpdateOptions(
      mergeFieldsOptions: (() { final guardedValue = map['mergeFieldsOptions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GoogleCloudContentwarehouseV1MergeFieldsOptions.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      updateMask: (() { final guardedValue = map['updateMask']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      updateType: (() { final guardedValue = map['updateType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GoogleCloudContentwarehouseV1UpdateOptionsUpdateType.fromValue(guardedValue as String)); })(),
    );
  }
}

