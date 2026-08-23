// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'parser_low_code_field_extractors_extractor.dart';
import 'parser_low_code_field_extractors_preprocess_config.dart';

class ParserLowCodeFieldExtractors {
  /// Whether to append repeated fields or not.
  /// When false, repeated fields will be replaced.
  final pulumi.Input<bool>? appendRepeatedFields;
  /// List of FieldExtractors.
  /// Structure is documented below.
  final pulumi.Input<List<ParserLowCodeFieldExtractorsExtractor>>? extractors;
  /// Possible values:
  /// JSON
  /// CSV
  /// XML
  final pulumi.Input<String>? logFormat;
  /// PreProcessConfig holds the GROK expression to extract the syslog header.
  /// Structure is documented below.
  final pulumi.Input<ParserLowCodeFieldExtractorsPreprocessConfig>? preprocessConfig;
  /// (Output)
  /// CBN snippet generated from field extractors.
  final pulumi.Input<String>? transformedCbnSnippet;

  /// Creates a new [ParserLowCodeFieldExtractors].
  /// [appendRepeatedFields] Whether to append repeated fields or not.
  /// [extractors] List of FieldExtractors.
  /// [logFormat] Possible values:
  /// [preprocessConfig] PreProcessConfig holds the GROK expression to extract the syslog header.
  /// [transformedCbnSnippet] (Output)
  const ParserLowCodeFieldExtractors({
    this.appendRepeatedFields,
    this.extractors,
    this.logFormat,
    this.preprocessConfig,
    this.transformedCbnSnippet,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appendRepeatedFields': ?appendRepeatedFields,
      'extractors': ?pulumi.Input.mapOptionalInputValue<List<ParserLowCodeFieldExtractorsExtractor>, List<Map<String, dynamic>>>(extractors, (value) => pulumi.Input.encodeList<ParserLowCodeFieldExtractorsExtractor, Map<String, dynamic>>(value, (value) => value.toMap())),
      'logFormat': ?logFormat,
      'preprocessConfig': ?pulumi.Input.mapOptionalInputValue<ParserLowCodeFieldExtractorsPreprocessConfig, Map<String, dynamic>>(preprocessConfig, (value) => value.toMap()),
      'transformedCbnSnippet': ?transformedCbnSnippet,
    };
  }

  factory ParserLowCodeFieldExtractors.fromMap(Map<String, dynamic> map) {
    return ParserLowCodeFieldExtractors(
      appendRepeatedFields: (() { final guardedValue = map['appendRepeatedFields']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      extractors: (() { final guardedValue = map['extractors']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ParserLowCodeFieldExtractorsExtractor>(guardedValue, (value) => ParserLowCodeFieldExtractorsExtractor.fromMap((value as Map).cast<String, dynamic>()))); })(),
      logFormat: (() { final guardedValue = map['logFormat']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      preprocessConfig: (() { final guardedValue = map['preprocessConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ParserLowCodeFieldExtractorsPreprocessConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      transformedCbnSnippet: (() { final guardedValue = map['transformedCbnSnippet']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
