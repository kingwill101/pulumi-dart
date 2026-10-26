// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'template_template_metadata_filter_version_selector.dart';
import 'template_template_metadata_multi_language_detection.dart';

class TemplateTemplateMetadata {
  /// Indicates the custom error code set by the user to be returned to the end
  /// user if the LLM response trips Model Armor filters.
  final pulumi.Input<int?>? customLlmResponseSafetyErrorCode;
  /// Indicates the custom error message set by the user to be returned to the
  /// end user if the LLM response trips Model Armor filters.
  final pulumi.Input<String?>? customLlmResponseSafetyErrorMessage;
  /// Indicates the custom error code set by the user to be returned to the end
  /// user by the service extension if the prompt trips Model Armor filters.
  final pulumi.Input<int?>? customPromptSafetyErrorCode;
  /// Indicates the custom error message set by the user to be returned to the
  /// end user if the prompt trips Model Armor filters.
  final pulumi.Input<String?>? customPromptSafetyErrorMessage;
  /// Possible values:
  /// INSPECT_ONLY
  /// INSPECT_AND_BLOCK
  final pulumi.Input<String?>? enforcementType;
  /// Selects the filter version to use for this template. Set exactly one of
  /// 'alias' or 'version'.
  /// Structure is documented below.
  final pulumi.Input<TemplateTemplateMetadataFilterVersionSelector?>? filterVersionSelector;
  /// If true, partial detector failures should be ignored.
  final pulumi.Input<bool?>? ignorePartialInvocationFailures;
  /// If true, log sanitize operations.
  final pulumi.Input<bool?>? logSanitizeOperations;
  /// If true, log template crud operations.
  final pulumi.Input<bool?>? logTemplateOperations;
  /// Specifies the modalities to scan. If empty, only text modality will be
  /// scanned. Image screening is in Preview and is only supported in the `us`
  /// and `eu` multi-regions; regional endpoints such as `us-central1` do not
  /// support it.
  /// Possible values:
  /// MODALITY_TEXT
  /// MODALITY_IMAGE
  final pulumi.Input<List<String>?>? modalities;
  /// Metadata to enable multi language detection via template.
  /// Structure is documented below.
  final pulumi.Input<TemplateTemplateMetadataMultiLanguageDetection?>? multiLanguageDetection;

  /// Creates a new [TemplateTemplateMetadata].
  /// [customLlmResponseSafetyErrorCode] Indicates the custom error code set by the user to be returned to the end
  /// [customLlmResponseSafetyErrorMessage] Indicates the custom error message set by the user to be returned to the
  /// [customPromptSafetyErrorCode] Indicates the custom error code set by the user to be returned to the end
  /// [customPromptSafetyErrorMessage] Indicates the custom error message set by the user to be returned to the
  /// [enforcementType] Possible values:
  /// [filterVersionSelector] Selects the filter version to use for this template. Set exactly one of
  /// [ignorePartialInvocationFailures] If true, partial detector failures should be ignored.
  /// [logSanitizeOperations] If true, log sanitize operations.
  /// [logTemplateOperations] If true, log template crud operations.
  /// [modalities] Specifies the modalities to scan. If empty, only text modality will be
  /// [multiLanguageDetection] Metadata to enable multi language detection via template.
  const TemplateTemplateMetadata({
    this.customLlmResponseSafetyErrorCode,
    this.customLlmResponseSafetyErrorMessage,
    this.customPromptSafetyErrorCode,
    this.customPromptSafetyErrorMessage,
    this.enforcementType,
    this.filterVersionSelector,
    this.ignorePartialInvocationFailures,
    this.logSanitizeOperations,
    this.logTemplateOperations,
    this.modalities,
    this.multiLanguageDetection,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customLlmResponseSafetyErrorCode': ?customLlmResponseSafetyErrorCode,
      'customLlmResponseSafetyErrorMessage': ?customLlmResponseSafetyErrorMessage,
      'customPromptSafetyErrorCode': ?customPromptSafetyErrorCode,
      'customPromptSafetyErrorMessage': ?customPromptSafetyErrorMessage,
      'enforcementType': ?enforcementType,
      'filterVersionSelector': ?pulumi.Input.mapOptionalInputValue<TemplateTemplateMetadataFilterVersionSelector, Map<String, dynamic>>(filterVersionSelector, (value) => value.toMap()),
      'ignorePartialInvocationFailures': ?ignorePartialInvocationFailures,
      'logSanitizeOperations': ?logSanitizeOperations,
      'logTemplateOperations': ?logTemplateOperations,
      'modalities': ?modalities,
      'multiLanguageDetection': ?pulumi.Input.mapOptionalInputValue<TemplateTemplateMetadataMultiLanguageDetection, Map<String, dynamic>>(multiLanguageDetection, (value) => value.toMap()),
    };
  }

  factory TemplateTemplateMetadata.fromMap(Map<String, dynamic> map) {
    return TemplateTemplateMetadata(
      customLlmResponseSafetyErrorCode: (() { final guardedValue = map['customLlmResponseSafetyErrorCode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      customLlmResponseSafetyErrorMessage: (() { final guardedValue = map['customLlmResponseSafetyErrorMessage']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      customPromptSafetyErrorCode: (() { final guardedValue = map['customPromptSafetyErrorCode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      customPromptSafetyErrorMessage: (() { final guardedValue = map['customPromptSafetyErrorMessage']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      enforcementType: (() { final guardedValue = map['enforcementType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      filterVersionSelector: (() { final guardedValue = map['filterVersionSelector']; if (guardedValue == null) return null; return pulumi.Input.fromValue(TemplateTemplateMetadataFilterVersionSelector.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      ignorePartialInvocationFailures: (() { final guardedValue = map['ignorePartialInvocationFailures']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      logSanitizeOperations: (() { final guardedValue = map['logSanitizeOperations']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      logTemplateOperations: (() { final guardedValue = map['logTemplateOperations']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      modalities: (() { final guardedValue = map['modalities']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      multiLanguageDetection: (() { final guardedValue = map['multiLanguageDetection']; if (guardedValue == null) return null; return pulumi.Input.fromValue(TemplateTemplateMetadataMultiLanguageDetection.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
