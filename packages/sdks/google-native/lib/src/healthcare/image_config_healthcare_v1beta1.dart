// ignore_for_file: unused_element, unnecessary_cast

import 'image_config_text_redaction_mode_healthcare_v1beta1.dart';

/// Specifies how to handle de-identification of image pixels.
class ImageConfigHealthcareV1beta1 {
  /// Additional InfoTypes to redact in the images in addition to those used by `text_redaction_mode`. Can only be used when `text_redaction_mode` is set to `REDACT_SENSITIVE_TEXT`, `REDACT_SENSITIVE_TEXT_CLEAN_DESCRIPTORS` or `TEXT_REDACTION_MODE_UNSPECIFIED`.
  final List<String>? additionalInfoTypes;
  /// InfoTypes to skip redacting, overriding those used by `text_redaction_mode`. Can only be used when `text_redaction_mode` is set to `REDACT_SENSITIVE_TEXT` or `REDACT_SENSITIVE_TEXT_CLEAN_DESCRIPTORS`.
  final List<String>? excludeInfoTypes;
  /// Determines how to redact text from image.
  final ImageConfigTextRedactionModeHealthcareV1beta1? textRedactionMode;

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
      'textRedactionMode': ?textRedactionMode == null ? null : textRedactionMode!.value,
    };
  }

  factory ImageConfigHealthcareV1beta1.fromMap(Map<String, dynamic> map) {
    return ImageConfigHealthcareV1beta1(
      additionalInfoTypes: map['additionalInfoTypes'] == null ? null : (map['additionalInfoTypes'] as List).cast<String>(),
      excludeInfoTypes: map['excludeInfoTypes'] == null ? null : (map['excludeInfoTypes'] as List).cast<String>(),
      textRedactionMode: map['textRedactionMode'] == null ? null : ImageConfigTextRedactionModeHealthcareV1beta1.fromValue(map['textRedactionMode'] as String),
    );
  }
}

