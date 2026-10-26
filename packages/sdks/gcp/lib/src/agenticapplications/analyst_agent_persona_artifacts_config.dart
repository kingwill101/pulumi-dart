// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'analyst_agent_persona_artifacts_config_document_generation_options.dart';
import 'analyst_agent_persona_artifacts_config_methodology_export_options.dart';
import 'analyst_agent_persona_artifacts_config_slide_generation_options.dart';
import 'analyst_agent_persona_artifacts_config_visualization_options.dart';

class AnalystAgentPersonaArtifactsConfig {
  /// Options for document generation.
  final pulumi.Input<AnalystAgentPersonaArtifactsConfigDocumentGenerationOptions?>? documentGenerationOptions;
  /// Options for methodology export.
  final pulumi.Input<AnalystAgentPersonaArtifactsConfigMethodologyExportOptions?>? methodologyExportOptions;
  /// Options for slide generation.
  final pulumi.Input<AnalystAgentPersonaArtifactsConfigSlideGenerationOptions?>? slideGenerationOptions;
  /// Options for visualizations.
  final pulumi.Input<AnalystAgentPersonaArtifactsConfigVisualizationOptions?>? visualizationOptions;

  /// Creates a new [AnalystAgentPersonaArtifactsConfig].
  /// [documentGenerationOptions] Options for document generation.
  /// [methodologyExportOptions] Options for methodology export.
  /// [slideGenerationOptions] Options for slide generation.
  /// [visualizationOptions] Options for visualizations.
  const AnalystAgentPersonaArtifactsConfig({
    this.documentGenerationOptions,
    this.methodologyExportOptions,
    this.slideGenerationOptions,
    this.visualizationOptions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'documentGenerationOptions': ?pulumi.Input.mapOptionalInputValue<AnalystAgentPersonaArtifactsConfigDocumentGenerationOptions, Map<String, dynamic>>(documentGenerationOptions, (value) => value.toMap()),
      'methodologyExportOptions': ?pulumi.Input.mapOptionalInputValue<AnalystAgentPersonaArtifactsConfigMethodologyExportOptions, Map<String, dynamic>>(methodologyExportOptions, (value) => value.toMap()),
      'slideGenerationOptions': ?pulumi.Input.mapOptionalInputValue<AnalystAgentPersonaArtifactsConfigSlideGenerationOptions, Map<String, dynamic>>(slideGenerationOptions, (value) => value.toMap()),
      'visualizationOptions': ?pulumi.Input.mapOptionalInputValue<AnalystAgentPersonaArtifactsConfigVisualizationOptions, Map<String, dynamic>>(visualizationOptions, (value) => value.toMap()),
    };
  }

  factory AnalystAgentPersonaArtifactsConfig.fromMap(Map<String, dynamic> map) {
    return AnalystAgentPersonaArtifactsConfig(
      documentGenerationOptions: (() { final guardedValue = map['documentGenerationOptions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AnalystAgentPersonaArtifactsConfigDocumentGenerationOptions.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      methodologyExportOptions: (() { final guardedValue = map['methodologyExportOptions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AnalystAgentPersonaArtifactsConfigMethodologyExportOptions.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      slideGenerationOptions: (() { final guardedValue = map['slideGenerationOptions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AnalystAgentPersonaArtifactsConfigSlideGenerationOptions.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      visualizationOptions: (() { final guardedValue = map['visualizationOptions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AnalystAgentPersonaArtifactsConfigVisualizationOptions.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
