// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'analyst_agent_persona_artifacts_config_document_generation_options_document_example.dart';

class AnalystAgentPersonaArtifactsConfigDocumentGenerationOptions {
  /// Examples for document generation.
  final pulumi.Input<List<AnalystAgentPersonaArtifactsConfigDocumentGenerationOptionsDocumentExample>?>? documentExamples;
  /// Format for document export.
  /// Possible values:
  /// PDF
  /// DOCX
  /// GOOGLE_DOCS
  final pulumi.Input<String?>? exportFormat;

  /// Creates a new [AnalystAgentPersonaArtifactsConfigDocumentGenerationOptions].
  /// [documentExamples] Examples for document generation.
  /// [exportFormat] Format for document export.
  const AnalystAgentPersonaArtifactsConfigDocumentGenerationOptions({
    this.documentExamples,
    this.exportFormat,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'documentExamples': ?pulumi.Input.mapOptionalInputValue<List<AnalystAgentPersonaArtifactsConfigDocumentGenerationOptionsDocumentExample>, List<Map<String, dynamic>>>(documentExamples, (value) => pulumi.Input.encodeList<AnalystAgentPersonaArtifactsConfigDocumentGenerationOptionsDocumentExample, Map<String, dynamic>>(value, (value) => value.toMap())),
      'exportFormat': ?exportFormat,
    };
  }

  factory AnalystAgentPersonaArtifactsConfigDocumentGenerationOptions.fromMap(Map<String, dynamic> map) {
    return AnalystAgentPersonaArtifactsConfigDocumentGenerationOptions(
      documentExamples: (() { final guardedValue = map['documentExamples']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AnalystAgentPersonaArtifactsConfigDocumentGenerationOptionsDocumentExample>(guardedValue, (value) => AnalystAgentPersonaArtifactsConfigDocumentGenerationOptionsDocumentExample.fromMap((value as Map).cast<String, dynamic>()))); })(),
      exportFormat: (() { final guardedValue = map['exportFormat']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
