// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_privacy_dlp_v2_deidentify_file_types_to_transform_item.dart';
import 'google_privacy_dlp_v2_transformation_config.dart';
import 'google_privacy_dlp_v2_transformation_details_storage_config.dart';

/// Create a de-identified copy of the requested table or files. A TransformationDetail will be created for each transformation. If any rows in BigQuery are skipped during de-identification (transformation errors or row size exceeds BigQuery insert API limits) they are placed in the failure output table. If the original row exceeds the BigQuery insert API limit it will be truncated when written to the failure output table. The failure output table can be set in the action.deidentify.output.big_query_output.deidentified_failure_output_table field, if no table is set, a table will be automatically created in the same project and dataset as the original table. Compatible with: Inspect
class GooglePrivacyDlpV2Deidentify {
  /// User settable Cloud Storage bucket and folders to store de-identified files. This field must be set for cloud storage deidentification. The output Cloud Storage bucket must be different from the input bucket. De-identified files will overwrite files in the output path. Form of: gs://bucket/folder/ or gs://bucket
  final pulumi.Input<String> cloudStorageOutput;
  /// List of user-specified file type groups to transform. If specified, only the files with these filetypes will be transformed. If empty, all supported files will be transformed. Supported types may be automatically added over time. If a file type is set in this field that isn't supported by the Deidentify action then the job will fail and will not be successfully created/started. Currently the only filetypes supported are: IMAGES, TEXT_FILES, CSV, TSV.
  final pulumi.Input<List<GooglePrivacyDlpV2DeidentifyFileTypesToTransformItem>>? fileTypesToTransform;
  /// User specified deidentify templates and configs for structured, unstructured, and image files.
  final pulumi.Input<GooglePrivacyDlpV2TransformationConfig>? transformationConfig;
  /// Config for storing transformation details. This is separate from the de-identified content, and contains metadata about the successful transformations and/or failures that occurred while de-identifying. This needs to be set in order for users to access information about the status of each transformation (see TransformationDetails message for more information about what is noted).
  final pulumi.Input<GooglePrivacyDlpV2TransformationDetailsStorageConfig>? transformationDetailsStorageConfig;

  /// Creates a new [GooglePrivacyDlpV2Deidentify].
  /// [cloudStorageOutput] User settable Cloud Storage bucket and folders to store de-identified files. This field must be set for cloud storage deidentification. The output Cloud Storage bucket must be different from the input bucket. De-identified files will overwrite files in the output path. Form of: gs://bucket/folder/ or gs://bucket
  /// [fileTypesToTransform] List of user-specified file type groups to transform. If specified, only the files with these filetypes will be transformed. If empty, all supported files will be transformed. Supported types may be automatically added over time. If a file type is set in this field that isn't supported by the Deidentify action then the job will fail and will not be successfully created/started. Currently the only filetypes supported are: IMAGES, TEXT_FILES, CSV, TSV.
  /// [transformationConfig] User specified deidentify templates and configs for structured, unstructured, and image files.
  /// [transformationDetailsStorageConfig] Config for storing transformation details. This is separate from the de-identified content, and contains metadata about the successful transformations and/or failures that occurred while de-identifying. This needs to be set in order for users to access information about the status of each transformation (see TransformationDetails message for more information about what is noted).
  const GooglePrivacyDlpV2Deidentify({
    required this.cloudStorageOutput,
    this.fileTypesToTransform,
    this.transformationConfig,
    this.transformationDetailsStorageConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cloudStorageOutput': cloudStorageOutput,
      'fileTypesToTransform': ?pulumi.Input.mapOptionalInputValue<List<GooglePrivacyDlpV2DeidentifyFileTypesToTransformItem>, List<String>>(fileTypesToTransform, (value) => pulumi.Input.encodeList<GooglePrivacyDlpV2DeidentifyFileTypesToTransformItem, String>(value, (value) => value.wireValue)),
      'transformationConfig': ?pulumi.Input.mapOptionalInputValue<GooglePrivacyDlpV2TransformationConfig, Map<String, dynamic>>(transformationConfig, (value) => value.toMap()),
      'transformationDetailsStorageConfig': ?pulumi.Input.mapOptionalInputValue<GooglePrivacyDlpV2TransformationDetailsStorageConfig, Map<String, dynamic>>(transformationDetailsStorageConfig, (value) => value.toMap()),
    };
  }

  factory GooglePrivacyDlpV2Deidentify.fromMap(Map<String, dynamic> map) {
    return GooglePrivacyDlpV2Deidentify(
      cloudStorageOutput: pulumi.Input.fromValue(map['cloudStorageOutput'] as String),
      fileTypesToTransform: (() { final guardedValue = map['fileTypesToTransform']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<GooglePrivacyDlpV2DeidentifyFileTypesToTransformItem>(guardedValue, (value) => GooglePrivacyDlpV2DeidentifyFileTypesToTransformItem.fromValue(value as String))); })(),
      transformationConfig: (() { final guardedValue = map['transformationConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GooglePrivacyDlpV2TransformationConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      transformationDetailsStorageConfig: (() { final guardedValue = map['transformationDetailsStorageConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GooglePrivacyDlpV2TransformationDetailsStorageConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

