// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'template_template_metadata_multi_language_detection.dart';

class TemplateTemplateMetadata {
  /// Indicates the custom error code set by the user to be returned to the end
  /// user if the LLM response trips Model Armor filters.
  final pulumi.Input<int>? customLlmResponseSafetyErrorCode;
  /// Indicates the custom error message set by the user to be returned to the
  /// end user if the LLM response trips Model Armor filters.
  final pulumi.Input<String>? customLlmResponseSafetyErrorMessage;
  /// Indicates the custom error code set by the user to be returned to the end
  /// user by the service extension if the prompt trips Model Armor filters.
  final pulumi.Input<int>? customPromptSafetyErrorCode;
  /// Indicates the custom error message set by the user to be returned to the
  /// end user if the prompt trips Model Armor filters.
  final pulumi.Input<String>? customPromptSafetyErrorMessage;
  /// Possible values:
  /// INSPECT_ONLY
  /// INSPECT_AND_BLOCK
  final pulumi.Input<String>? enforcementType;
  /// If true, partial detector failures should be ignored.
  final pulumi.Input<bool>? ignorePartialInvocationFailures;
  /// If true, log sanitize operations.
  final pulumi.Input<bool>? logSanitizeOperations;
  /// If true, log template crud operations.
  final pulumi.Input<bool>? logTemplateOperations;
  /// Metadata to enable multi language detection via template.
  /// Structure is documented below.
  final pulumi.Input<TemplateTemplateMetadataMultiLanguageDetection>? multiLanguageDetection;

  /// Creates a new [TemplateTemplateMetadata].
  /// [customLlmResponseSafetyErrorCode] Indicates the custom error code set by the user to be returned to the end
  /// [customLlmResponseSafetyErrorMessage] Indicates the custom error message set by the user to be returned to the
  /// [customPromptSafetyErrorCode] Indicates the custom error code set by the user to be returned to the end
  /// [customPromptSafetyErrorMessage] Indicates the custom error message set by the user to be returned to the
  /// [enforcementType] Possible values:
  /// [ignorePartialInvocationFailures] If true, partial detector failures should be ignored.
  /// [logSanitizeOperations] If true, log sanitize operations.
  /// [logTemplateOperations] If true, log template crud operations.
  /// [multiLanguageDetection] Metadata to enable multi language detection via template.
  TemplateTemplateMetadata({
    this.customLlmResponseSafetyErrorCode,
    this.customLlmResponseSafetyErrorMessage,
    this.customPromptSafetyErrorCode,
    this.customPromptSafetyErrorMessage,
    this.enforcementType,
    this.ignorePartialInvocationFailures,
    this.logSanitizeOperations,
    this.logTemplateOperations,
    this.multiLanguageDetection,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customLlmResponseSafetyErrorCode': ?customLlmResponseSafetyErrorCode,
      'customLlmResponseSafetyErrorMessage': ?customLlmResponseSafetyErrorMessage,
      'customPromptSafetyErrorCode': ?customPromptSafetyErrorCode,
      'customPromptSafetyErrorMessage': ?customPromptSafetyErrorMessage,
      'enforcementType': ?enforcementType,
      'ignorePartialInvocationFailures': ?ignorePartialInvocationFailures,
      'logSanitizeOperations': ?logSanitizeOperations,
      'logTemplateOperations': ?logTemplateOperations,
      'multiLanguageDetection': ?pulumi.Input.mapOptionalInputValue<TemplateTemplateMetadataMultiLanguageDetection, Map<String, dynamic>>(multiLanguageDetection, (value) => value.toMap()),
    };
  }

  factory TemplateTemplateMetadata.fromMap(Map<String, dynamic> map) {
    return TemplateTemplateMetadata(
      customLlmResponseSafetyErrorCode: map['customLlmResponseSafetyErrorCode'] == null ? null : (map['customLlmResponseSafetyErrorCode'] as int).input(),
      customLlmResponseSafetyErrorMessage: map['customLlmResponseSafetyErrorMessage'] == null ? null : (map['customLlmResponseSafetyErrorMessage'] as String).input(),
      customPromptSafetyErrorCode: map['customPromptSafetyErrorCode'] == null ? null : (map['customPromptSafetyErrorCode'] as int).input(),
      customPromptSafetyErrorMessage: map['customPromptSafetyErrorMessage'] == null ? null : (map['customPromptSafetyErrorMessage'] as String).input(),
      enforcementType: map['enforcementType'] == null ? null : (map['enforcementType'] as String).input(),
      ignorePartialInvocationFailures: map['ignorePartialInvocationFailures'] == null ? null : (map['ignorePartialInvocationFailures'] as bool).input(),
      logSanitizeOperations: map['logSanitizeOperations'] == null ? null : (map['logSanitizeOperations'] as bool).input(),
      logTemplateOperations: map['logTemplateOperations'] == null ? null : (map['logTemplateOperations'] as bool).input(),
      multiLanguageDetection: map['multiLanguageDetection'] == null ? null : (TemplateTemplateMetadataMultiLanguageDetection.fromMap((map['multiLanguageDetection'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

