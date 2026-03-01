// ignore_for_file: unused_element, unnecessary_cast

import 'annotation_config_response.dart';
import 'deidentify_operation_metadata_response.dart';
import 'dicom_config_response_healthcare_v1beta1.dart';
import 'dicom_tag_config_response.dart';
import 'fhir_config_response_healthcare_v1beta1.dart';
import 'fhir_field_config_response.dart';
import 'image_config_response_healthcare_v1beta1.dart';
import 'text_config_response_healthcare_v1beta1.dart';

/// Configures de-id options specific to different types of content. Each submessage customizes the handling of an https://tools.ietf.org/html/rfc6838 media type or subtype. Configs are applied in a nested manner at runtime.
class DeidentifyConfigResponseHealthcareV1beta1 {
  /// Configures how annotations, meaning that the location and infoType of sensitive information findings, are created during de-identification. If unspecified, no annotations are created.
  final AnnotationConfigResponse annotation;
  /// Configures de-id of application/DICOM content. Deprecated. Use `dicom_tag_config` instead.
  final DicomConfigResponseHealthcareV1beta1 dicom;
  /// Configures de-id of application/DICOM content.
  final DicomTagConfigResponse dicomTagConfig;
  /// Configures de-id of application/FHIR content. Deprecated. Use `fhir_field_config` instead.
  final FhirConfigResponseHealthcareV1beta1 fhir;
  /// Configures de-id of application/FHIR content.
  final FhirFieldConfigResponse fhirFieldConfig;
  /// Configures the de-identification of image pixels in the source_dataset. Deprecated. Use `dicom_tag_config.options.clean_image` instead.
  final ImageConfigResponseHealthcareV1beta1 image;
  /// Details about the work the de-identify operation performed.
  final DeidentifyOperationMetadataResponse operationMetadata;
  /// Configures de-identification of text wherever it is found in the source_dataset.
  final TextConfigResponseHealthcareV1beta1 text;
  /// Ensures in-flight data remains in the region of origin during de-identification. Using this option results in a significant reduction of throughput, and is not compatible with `LOCATION` or `ORGANIZATION_NAME` infoTypes. If the deprecated DicomConfig or FhirConfig are used, then `LOCATION` must be excluded within TextConfig, and must also be excluded within ImageConfig if image redaction is required.
  final bool useRegionalDataProcessing;

  /// Creates a new [DeidentifyConfigResponseHealthcareV1beta1].
  /// [annotation] Configures how annotations, meaning that the location and infoType of sensitive information findings, are created during de-identification. If unspecified, no annotations are created.
  /// [dicom] Configures de-id of application/DICOM content. Deprecated. Use `dicom_tag_config` instead.
  /// [dicomTagConfig] Configures de-id of application/DICOM content.
  /// [fhir] Configures de-id of application/FHIR content. Deprecated. Use `fhir_field_config` instead.
  /// [fhirFieldConfig] Configures de-id of application/FHIR content.
  /// [image] Configures the de-identification of image pixels in the source_dataset. Deprecated. Use `dicom_tag_config.options.clean_image` instead.
  /// [operationMetadata] Details about the work the de-identify operation performed.
  /// [text] Configures de-identification of text wherever it is found in the source_dataset.
  /// [useRegionalDataProcessing] Ensures in-flight data remains in the region of origin during de-identification. Using this option results in a significant reduction of throughput, and is not compatible with `LOCATION` or `ORGANIZATION_NAME` infoTypes. If the deprecated DicomConfig or FhirConfig are used, then `LOCATION` must be excluded within TextConfig, and must also be excluded within ImageConfig if image redaction is required.
  DeidentifyConfigResponseHealthcareV1beta1({
    required this.annotation,
    required this.dicom,
    required this.dicomTagConfig,
    required this.fhir,
    required this.fhirFieldConfig,
    required this.image,
    required this.operationMetadata,
    required this.text,
    required this.useRegionalDataProcessing,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'annotation': annotation.toMap(),
      'dicom': dicom.toMap(),
      'dicomTagConfig': dicomTagConfig.toMap(),
      'fhir': fhir.toMap(),
      'fhirFieldConfig': fhirFieldConfig.toMap(),
      'image': image.toMap(),
      'operationMetadata': operationMetadata.toMap(),
      'text': text.toMap(),
      'useRegionalDataProcessing': useRegionalDataProcessing,
    };
  }

  factory DeidentifyConfigResponseHealthcareV1beta1.fromMap(Map<String, dynamic> map) {
    return DeidentifyConfigResponseHealthcareV1beta1(
      annotation: AnnotationConfigResponse.fromMap((map['annotation'] as Map).cast<String, dynamic>()),
      dicom: DicomConfigResponseHealthcareV1beta1.fromMap((map['dicom'] as Map).cast<String, dynamic>()),
      dicomTagConfig: DicomTagConfigResponse.fromMap((map['dicomTagConfig'] as Map).cast<String, dynamic>()),
      fhir: FhirConfigResponseHealthcareV1beta1.fromMap((map['fhir'] as Map).cast<String, dynamic>()),
      fhirFieldConfig: FhirFieldConfigResponse.fromMap((map['fhirFieldConfig'] as Map).cast<String, dynamic>()),
      image: ImageConfigResponseHealthcareV1beta1.fromMap((map['image'] as Map).cast<String, dynamic>()),
      operationMetadata: DeidentifyOperationMetadataResponse.fromMap((map['operationMetadata'] as Map).cast<String, dynamic>()),
      text: TextConfigResponseHealthcareV1beta1.fromMap((map['text'] as Map).cast<String, dynamic>()),
      useRegionalDataProcessing: map['useRegionalDataProcessing'] as bool,
    );
  }
}

