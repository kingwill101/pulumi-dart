// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'annotation_config.dart';
import 'deidentify_operation_metadata.dart';
import 'dicom_config_healthcare_v1beta1.dart';
import 'dicom_tag_config.dart';
import 'fhir_config_healthcare_v1beta1.dart';
import 'fhir_field_config.dart';
import 'image_config_healthcare_v1beta1.dart';
import 'text_config_healthcare_v1beta1.dart';

/// Configures de-id options specific to different types of content. Each submessage customizes the handling of an https://tools.ietf.org/html/rfc6838 media type or subtype. Configs are applied in a nested manner at runtime.
class DeidentifyConfigHealthcareV1beta1 {
  /// Configures how annotations, meaning that the location and infoType of sensitive information findings, are created during de-identification. If unspecified, no annotations are created.
  final pulumi.Input<AnnotationConfig>? annotation;
  /// Configures de-id of application/DICOM content. Deprecated. Use `dicom_tag_config` instead.
  final pulumi.Input<DicomConfigHealthcareV1beta1>? dicom;
  /// Configures de-id of application/DICOM content.
  final pulumi.Input<DicomTagConfig>? dicomTagConfig;
  /// Configures de-id of application/FHIR content. Deprecated. Use `fhir_field_config` instead.
  final pulumi.Input<FhirConfigHealthcareV1beta1>? fhir;
  /// Configures de-id of application/FHIR content.
  final pulumi.Input<FhirFieldConfig>? fhirFieldConfig;
  /// Configures the de-identification of image pixels in the source_dataset. Deprecated. Use `dicom_tag_config.options.clean_image` instead.
  final pulumi.Input<ImageConfigHealthcareV1beta1>? image;
  /// Details about the work the de-identify operation performed.
  final pulumi.Input<DeidentifyOperationMetadata>? operationMetadata;
  /// Configures de-identification of text wherever it is found in the source_dataset.
  final pulumi.Input<TextConfigHealthcareV1beta1>? text;
  /// Ensures in-flight data remains in the region of origin during de-identification. Using this option results in a significant reduction of throughput, and is not compatible with `LOCATION` or `ORGANIZATION_NAME` infoTypes. If the deprecated DicomConfig or FhirConfig are used, then `LOCATION` must be excluded within TextConfig, and must also be excluded within ImageConfig if image redaction is required.
  final pulumi.Input<bool>? useRegionalDataProcessing;

  /// Creates a new [DeidentifyConfigHealthcareV1beta1].
  /// [annotation] Configures how annotations, meaning that the location and infoType of sensitive information findings, are created during de-identification. If unspecified, no annotations are created.
  /// [dicom] Configures de-id of application/DICOM content. Deprecated. Use `dicom_tag_config` instead.
  /// [dicomTagConfig] Configures de-id of application/DICOM content.
  /// [fhir] Configures de-id of application/FHIR content. Deprecated. Use `fhir_field_config` instead.
  /// [fhirFieldConfig] Configures de-id of application/FHIR content.
  /// [image] Configures the de-identification of image pixels in the source_dataset. Deprecated. Use `dicom_tag_config.options.clean_image` instead.
  /// [operationMetadata] Details about the work the de-identify operation performed.
  /// [text] Configures de-identification of text wherever it is found in the source_dataset.
  /// [useRegionalDataProcessing] Ensures in-flight data remains in the region of origin during de-identification. Using this option results in a significant reduction of throughput, and is not compatible with `LOCATION` or `ORGANIZATION_NAME` infoTypes. If the deprecated DicomConfig or FhirConfig are used, then `LOCATION` must be excluded within TextConfig, and must also be excluded within ImageConfig if image redaction is required.
  DeidentifyConfigHealthcareV1beta1({
    this.annotation,
    this.dicom,
    this.dicomTagConfig,
    this.fhir,
    this.fhirFieldConfig,
    this.image,
    this.operationMetadata,
    this.text,
    this.useRegionalDataProcessing,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'annotation': ?pulumi.Input.mapOptionalInputValue<AnnotationConfig, Map<String, dynamic>>(annotation, (value) => value.toMap()),
      'dicom': ?pulumi.Input.mapOptionalInputValue<DicomConfigHealthcareV1beta1, Map<String, dynamic>>(dicom, (value) => value.toMap()),
      'dicomTagConfig': ?pulumi.Input.mapOptionalInputValue<DicomTagConfig, Map<String, dynamic>>(dicomTagConfig, (value) => value.toMap()),
      'fhir': ?pulumi.Input.mapOptionalInputValue<FhirConfigHealthcareV1beta1, Map<String, dynamic>>(fhir, (value) => value.toMap()),
      'fhirFieldConfig': ?pulumi.Input.mapOptionalInputValue<FhirFieldConfig, Map<String, dynamic>>(fhirFieldConfig, (value) => value.toMap()),
      'image': ?pulumi.Input.mapOptionalInputValue<ImageConfigHealthcareV1beta1, Map<String, dynamic>>(image, (value) => value.toMap()),
      'operationMetadata': ?pulumi.Input.mapOptionalInputValue<DeidentifyOperationMetadata, Map<String, dynamic>>(operationMetadata, (value) => value.toMap()),
      'text': ?pulumi.Input.mapOptionalInputValue<TextConfigHealthcareV1beta1, Map<String, dynamic>>(text, (value) => value.toMap()),
      'useRegionalDataProcessing': ?useRegionalDataProcessing,
    };
  }

  factory DeidentifyConfigHealthcareV1beta1.fromMap(Map<String, dynamic> map) {
    return DeidentifyConfigHealthcareV1beta1(
      annotation: map['annotation'] == null ? null : (AnnotationConfig.fromMap((map['annotation']! as Map).cast<String, dynamic>())).input(),
      dicom: map['dicom'] == null ? null : (DicomConfigHealthcareV1beta1.fromMap((map['dicom']! as Map).cast<String, dynamic>())).input(),
      dicomTagConfig: map['dicomTagConfig'] == null ? null : (DicomTagConfig.fromMap((map['dicomTagConfig']! as Map).cast<String, dynamic>())).input(),
      fhir: map['fhir'] == null ? null : (FhirConfigHealthcareV1beta1.fromMap((map['fhir']! as Map).cast<String, dynamic>())).input(),
      fhirFieldConfig: map['fhirFieldConfig'] == null ? null : (FhirFieldConfig.fromMap((map['fhirFieldConfig']! as Map).cast<String, dynamic>())).input(),
      image: map['image'] == null ? null : (ImageConfigHealthcareV1beta1.fromMap((map['image']! as Map).cast<String, dynamic>())).input(),
      operationMetadata: map['operationMetadata'] == null ? null : (DeidentifyOperationMetadata.fromMap((map['operationMetadata']! as Map).cast<String, dynamic>())).input(),
      text: map['text'] == null ? null : (TextConfigHealthcareV1beta1.fromMap((map['text']! as Map).cast<String, dynamic>())).input(),
      useRegionalDataProcessing: map['useRegionalDataProcessing'] == null ? null : (map['useRegionalDataProcessing']! as bool).input(),
    );
  }
}

