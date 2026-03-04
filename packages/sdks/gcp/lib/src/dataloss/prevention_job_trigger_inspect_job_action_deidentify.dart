// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'prevention_job_trigger_inspect_job_action_deidentify_transformation_config.dart';
import 'prevention_job_trigger_inspect_job_action_deidentify_transformation_details_storage_config.dart';

class PreventionJobTriggerInspectJobActionDeidentify {
  /// User settable Cloud Storage bucket and folders to store de-identified files.
  /// This field must be set for cloud storage deidentification.
  /// The output Cloud Storage bucket must be different from the input bucket.
  /// De-identified files will overwrite files in the output path.
  /// Form of: gs://bucket/folder/ or gs://bucket
  final pulumi.Input<String> cloudStorageOutput;

  /// List of user-specified file type groups to transform. If specified, only the files with these filetypes will be transformed.
  /// If empty, all supported files will be transformed. Supported types may be automatically added over time.
  /// If a file type is set in this field that isn't supported by the Deidentify action then the job will fail and will not be successfully created/started.
  /// Each value may be one of: `IMAGE`, `TEXT_FILE`, `CSV`, `TSV`.
  final pulumi.Input<List<String>>? fileTypesToTransforms;

  /// User specified deidentify templates and configs for structured, unstructured, and image files.
  /// Structure is documented below.
  final pulumi.Input<
    PreventionJobTriggerInspectJobActionDeidentifyTransformationConfig
  >?
  transformationConfig;

  /// Config for storing transformation details.
  /// Structure is documented below.
  final pulumi.Input<
    PreventionJobTriggerInspectJobActionDeidentifyTransformationDetailsStorageConfig
  >?
  transformationDetailsStorageConfig;

  /// Creates a new [PreventionJobTriggerInspectJobActionDeidentify].
  /// [cloudStorageOutput] User settable Cloud Storage bucket and folders to store de-identified files.
  /// [fileTypesToTransforms] List of user-specified file type groups to transform. If specified, only the files with these filetypes will be transformed.
  /// [transformationConfig] User specified deidentify templates and configs for structured, unstructured, and image files.
  /// [transformationDetailsStorageConfig] Config for storing transformation details.
  PreventionJobTriggerInspectJobActionDeidentify({
    required this.cloudStorageOutput,
    this.fileTypesToTransforms,
    this.transformationConfig,
    this.transformationDetailsStorageConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cloudStorageOutput': cloudStorageOutput,
      'fileTypesToTransforms': ?fileTypesToTransforms,
      'transformationConfig':
          ?pulumi.Input.mapOptionalInputValue<
            PreventionJobTriggerInspectJobActionDeidentifyTransformationConfig,
            Map<String, dynamic>
          >(transformationConfig, (value) => value.toMap()),
      'transformationDetailsStorageConfig':
          ?pulumi.Input.mapOptionalInputValue<
            PreventionJobTriggerInspectJobActionDeidentifyTransformationDetailsStorageConfig,
            Map<String, dynamic>
          >(transformationDetailsStorageConfig, (value) => value.toMap()),
    };
  }

  factory PreventionJobTriggerInspectJobActionDeidentify.fromMap(
    Map<String, dynamic> map,
  ) {
    return PreventionJobTriggerInspectJobActionDeidentify(
      cloudStorageOutput: pulumi.Input.fromValue(
        map['cloudStorageOutput'] as String,
      ),
      fileTypesToTransforms: (() {
        final guardedValue = map['fileTypesToTransforms'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      transformationConfig: (() {
        final guardedValue = map['transformationConfig'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          PreventionJobTriggerInspectJobActionDeidentifyTransformationConfig.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      transformationDetailsStorageConfig: (() {
        final guardedValue = map['transformationDetailsStorageConfig'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          PreventionJobTriggerInspectJobActionDeidentifyTransformationDetailsStorageConfig.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
    );
  }
}
