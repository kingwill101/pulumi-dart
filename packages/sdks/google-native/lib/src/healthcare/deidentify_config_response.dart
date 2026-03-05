// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'dicom_config_response.dart';
import 'fhir_config_response.dart';
import 'image_config_response.dart';
import 'text_config_response.dart';

/// Configures de-id options specific to different types of content. Each submessage customizes the handling of an https://tools.ietf.org/html/rfc6838 media type or subtype. Configs are applied in a nested manner at runtime.
class DeidentifyConfigResponse {
  /// Configures de-id of application/DICOM content.
  final pulumi.Input<DicomConfigResponse> dicom;
  /// Configures de-id of application/FHIR content.
  final pulumi.Input<FhirConfigResponse> fhir;
  /// Configures de-identification of image pixels wherever they are found in the source_dataset.
  final pulumi.Input<ImageConfigResponse> image;
  /// Configures de-identification of text wherever it is found in the source_dataset.
  final pulumi.Input<TextConfigResponse> text;
  /// Ensures in-flight data remains in the region of origin during de-identification. Using this option results in a significant reduction of throughput, and is not compatible with `LOCATION` or `ORGANIZATION_NAME` infoTypes. `LOCATION` must be excluded within TextConfig, and must also be excluded within ImageConfig if image redaction is required.
  final pulumi.Input<bool> useRegionalDataProcessing;

  /// Creates a new [DeidentifyConfigResponse].
  /// [dicom] Configures de-id of application/DICOM content.
  /// [fhir] Configures de-id of application/FHIR content.
  /// [image] Configures de-identification of image pixels wherever they are found in the source_dataset.
  /// [text] Configures de-identification of text wherever it is found in the source_dataset.
  /// [useRegionalDataProcessing] Ensures in-flight data remains in the region of origin during de-identification. Using this option results in a significant reduction of throughput, and is not compatible with `LOCATION` or `ORGANIZATION_NAME` infoTypes. `LOCATION` must be excluded within TextConfig, and must also be excluded within ImageConfig if image redaction is required.
  DeidentifyConfigResponse({
    required this.dicom,
    required this.fhir,
    required this.image,
    required this.text,
    required this.useRegionalDataProcessing,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dicom': pulumi.Input.mapInputValue<DicomConfigResponse, Map<String, dynamic>>(dicom, (value) => value.toMap()),
      'fhir': pulumi.Input.mapInputValue<FhirConfigResponse, Map<String, dynamic>>(fhir, (value) => value.toMap()),
      'image': pulumi.Input.mapInputValue<ImageConfigResponse, Map<String, dynamic>>(image, (value) => value.toMap()),
      'text': pulumi.Input.mapInputValue<TextConfigResponse, Map<String, dynamic>>(text, (value) => value.toMap()),
      'useRegionalDataProcessing': useRegionalDataProcessing,
    };
  }

  factory DeidentifyConfigResponse.fromMap(Map<String, dynamic> map) {
    return DeidentifyConfigResponse(
      dicom: pulumi.Input.fromValue(DicomConfigResponse.fromMap((map['dicom']! as Map).cast<String, dynamic>())),
      fhir: pulumi.Input.fromValue(FhirConfigResponse.fromMap((map['fhir']! as Map).cast<String, dynamic>())),
      image: pulumi.Input.fromValue(ImageConfigResponse.fromMap((map['image']! as Map).cast<String, dynamic>())),
      text: pulumi.Input.fromValue(TextConfigResponse.fromMap((map['text']! as Map).cast<String, dynamic>())),
      useRegionalDataProcessing: pulumi.Input.fromValue(map['useRegionalDataProcessing'] as bool),
    );
  }
}

