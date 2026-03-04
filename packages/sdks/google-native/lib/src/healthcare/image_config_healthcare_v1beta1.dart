// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'image_config_text_redaction_mode_healthcare_v1beta1.dart';

/// Specifies how to handle de-identification of image pixels.
class ImageConfigHealthcareV1beta1 {
  /// Additional InfoTypes to redact in the images in addition to those used by `text_redaction_mode`. Can only be used when `text_redaction_mode` is set to `REDACT_SENSITIVE_TEXT`, `REDACT_SENSITIVE_TEXT_CLEAN_DESCRIPTORS` or `TEXT_REDACTION_MODE_UNSPECIFIED`.
  final pulumi.Input<List<String>>? additionalInfoTypes;

  /// InfoTypes to skip redacting, overriding those used by `text_redaction_mode`. Can only be used when `text_redaction_mode` is set to `REDACT_SENSITIVE_TEXT` or `REDACT_SENSITIVE_TEXT_CLEAN_DESCRIPTORS`.
  final pulumi.Input<List<String>>? excludeInfoTypes;

  /// Determines how to redact text from image.
  final pulumi.Input<ImageConfigTextRedactionModeHealthcareV1beta1>?
  textRedactionMode;

  /// Creates a new [ImageConfigHealthcareV1beta1].
  /// [additionalInfoTypes] Additional InfoTypes to redact in the images in addition to those used by `text_redaction_mode`. Can only be used when `text_redaction_mode` is set to `REDACT_SENSITIVE_TEXT`, `REDACT_SENSITIVE_TEXT_CLEAN_DESCRIPTORS` or `TEXT_REDACTION_MODE_UNSPECIFIED`.
  /// [excludeInfoTypes] InfoTypes to skip redacting, overriding those used by `text_redaction_mode`. Can only be used when `text_redaction_mode` is set to `REDACT_SENSITIVE_TEXT` or `REDACT_SENSITIVE_TEXT_CLEAN_DESCRIPTORS`.
  /// [textRedactionMode] Determines how to redact text from image.
  ImageConfigHealthcareV1beta1({
    this.additionalInfoTypes,
    this.excludeInfoTypes,
    this.textRedactionMode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'additionalInfoTypes': ?additionalInfoTypes,
      'excludeInfoTypes': ?excludeInfoTypes,
      'textRedactionMode':
          ?pulumi.Input.mapOptionalInputValue<
            ImageConfigTextRedactionModeHealthcareV1beta1,
            String
          >(textRedactionMode, (value) => value.wireValue),
    };
  }

  factory ImageConfigHealthcareV1beta1.fromMap(Map<String, dynamic> map) {
    return ImageConfigHealthcareV1beta1(
      additionalInfoTypes: (() {
        final guardedValue = map['additionalInfoTypes'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      excludeInfoTypes: (() {
        final guardedValue = map['excludeInfoTypes'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      textRedactionMode: (() {
        final guardedValue = map['textRedactionMode'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ImageConfigTextRedactionModeHealthcareV1beta1.fromValue(
            guardedValue as String,
          ),
        );
      })(),
    );
  }
}
