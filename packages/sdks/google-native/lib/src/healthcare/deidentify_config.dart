// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'dicom_config.dart';
import 'fhir_config.dart';
import 'image_config.dart';
import 'text_config.dart';

/// Configures de-id options specific to different types of content. Each submessage customizes the handling of an https://tools.ietf.org/html/rfc6838 media type or subtype. Configs are applied in a nested manner at runtime.
class DeidentifyConfig {
  /// Configures de-id of application/DICOM content.
  final pulumi.Input<DicomConfig>? dicom;
  /// Configures de-id of application/FHIR content.
  final pulumi.Input<FhirConfig>? fhir;
  /// Configures de-identification of image pixels wherever they are found in the source_dataset.
  final pulumi.Input<ImageConfig>? image;
  /// Configures de-identification of text wherever it is found in the source_dataset.
  final pulumi.Input<TextConfig>? text;
  /// Ensures in-flight data remains in the region of origin during de-identification. Using this option results in a significant reduction of throughput, and is not compatible with `LOCATION` or `ORGANIZATION_NAME` infoTypes. `LOCATION` must be excluded within TextConfig, and must also be excluded within ImageConfig if image redaction is required.
  final pulumi.Input<bool>? useRegionalDataProcessing;

  /// Creates a new [DeidentifyConfig].
  /// [dicom] Configures de-id of application/DICOM content.
  /// [fhir] Configures de-id of application/FHIR content.
  /// [image] Configures de-identification of image pixels wherever they are found in the source_dataset.
  /// [text] Configures de-identification of text wherever it is found in the source_dataset.
  /// [useRegionalDataProcessing] Ensures in-flight data remains in the region of origin during de-identification. Using this option results in a significant reduction of throughput, and is not compatible with `LOCATION` or `ORGANIZATION_NAME` infoTypes. `LOCATION` must be excluded within TextConfig, and must also be excluded within ImageConfig if image redaction is required.
  DeidentifyConfig({
    this.dicom,
    this.fhir,
    this.image,
    this.text,
    this.useRegionalDataProcessing,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dicom': ?pulumi.Input.mapOptionalInputValue<DicomConfig, Map<String, dynamic>>(dicom, (value) => value.toMap()),
      'fhir': ?pulumi.Input.mapOptionalInputValue<FhirConfig, Map<String, dynamic>>(fhir, (value) => value.toMap()),
      'image': ?pulumi.Input.mapOptionalInputValue<ImageConfig, Map<String, dynamic>>(image, (value) => value.toMap()),
      'text': ?pulumi.Input.mapOptionalInputValue<TextConfig, Map<String, dynamic>>(text, (value) => value.toMap()),
      'useRegionalDataProcessing': ?useRegionalDataProcessing,
    };
  }

  factory DeidentifyConfig.fromMap(Map<String, dynamic> map) {
    return DeidentifyConfig(
      dicom: map['dicom'] == null ? null : (DicomConfig.fromMap((map['dicom']! as Map).cast<String, dynamic>())).input(),
      fhir: map['fhir'] == null ? null : (FhirConfig.fromMap((map['fhir']! as Map).cast<String, dynamic>())).input(),
      image: map['image'] == null ? null : (ImageConfig.fromMap((map['image']! as Map).cast<String, dynamic>())).input(),
      text: map['text'] == null ? null : (TextConfig.fromMap((map['text']! as Map).cast<String, dynamic>())).input(),
      useRegionalDataProcessing: map['useRegionalDataProcessing'] == null ? null : (map['useRegionalDataProcessing']! as bool).input(),
    );
  }
}

