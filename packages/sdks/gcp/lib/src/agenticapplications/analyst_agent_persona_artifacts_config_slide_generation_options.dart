// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'analyst_agent_persona_artifacts_config_slide_generation_options_slide_example.dart';

class AnalystAgentPersonaArtifactsConfigSlideGenerationOptions {
  /// Format for slide export.
  /// Possible values:
  /// PDF
  /// PNG
  /// PPTX
  /// GOOGLE_SLIDES
  final pulumi.Input<String>? exportFormat;
  /// Examples for slide generation.
  final pulumi.Input<List<AnalystAgentPersonaArtifactsConfigSlideGenerationOptionsSlideExample>>? slideExamples;

  /// Creates a new [AnalystAgentPersonaArtifactsConfigSlideGenerationOptions].
  /// [exportFormat] Format for slide export.
  /// [slideExamples] Examples for slide generation.
  const AnalystAgentPersonaArtifactsConfigSlideGenerationOptions({
    this.exportFormat,
    this.slideExamples,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'exportFormat': ?exportFormat,
      'slideExamples': ?pulumi.Input.mapOptionalInputValue<List<AnalystAgentPersonaArtifactsConfigSlideGenerationOptionsSlideExample>, List<Map<String, dynamic>>>(slideExamples, (value) => pulumi.Input.encodeList<AnalystAgentPersonaArtifactsConfigSlideGenerationOptionsSlideExample, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory AnalystAgentPersonaArtifactsConfigSlideGenerationOptions.fromMap(Map<String, dynamic> map) {
    return AnalystAgentPersonaArtifactsConfigSlideGenerationOptions(
      exportFormat: (() { final guardedValue = map['exportFormat']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      slideExamples: (() { final guardedValue = map['slideExamples']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AnalystAgentPersonaArtifactsConfigSlideGenerationOptionsSlideExample>(guardedValue, (value) => AnalystAgentPersonaArtifactsConfigSlideGenerationOptionsSlideExample.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
