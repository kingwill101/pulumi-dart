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
  const DeidentifyConfig({
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
      dicom: (() { final guardedValue = map['dicom']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DicomConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      fhir: (() { final guardedValue = map['fhir']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FhirConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      image: (() { final guardedValue = map['image']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ImageConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      text: (() { final guardedValue = map['text']; if (guardedValue == null) return null; return pulumi.Input.fromValue(TextConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      useRegionalDataProcessing: (() { final guardedValue = map['useRegionalDataProcessing']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
