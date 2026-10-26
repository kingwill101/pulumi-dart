// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'analyst_agent_persona_artifacts_config_visualization_options_visualization_example.dart';

class AnalystAgentPersonaArtifactsConfigVisualizationOptions {
  /// Examples for visualizations.
  final pulumi.Input<List<AnalystAgentPersonaArtifactsConfigVisualizationOptionsVisualizationExample>?>? visualizationExamples;
  /// Mode for generating visualizations.
  /// Possible values:
  /// VISUALIZATION_MODE_EXPLICIT_ONLY
  /// VISUALIZATION_MODE_WHEN_NECESSARY
  /// VISUALIZATION_MODE_WHEN_HELPFUL
  /// VISUALIZATION_MODE_ALWAYS
  final pulumi.Input<String?>? visualizationMode;

  /// Creates a new [AnalystAgentPersonaArtifactsConfigVisualizationOptions].
  /// [visualizationExamples] Examples for visualizations.
  /// [visualizationMode] Mode for generating visualizations.
  const AnalystAgentPersonaArtifactsConfigVisualizationOptions({
    this.visualizationExamples,
    this.visualizationMode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'visualizationExamples': ?pulumi.Input.mapOptionalInputValue<List<AnalystAgentPersonaArtifactsConfigVisualizationOptionsVisualizationExample>, List<Map<String, dynamic>>>(visualizationExamples, (value) => pulumi.Input.encodeList<AnalystAgentPersonaArtifactsConfigVisualizationOptionsVisualizationExample, Map<String, dynamic>>(value, (value) => value.toMap())),
      'visualizationMode': ?visualizationMode,
    };
  }

  factory AnalystAgentPersonaArtifactsConfigVisualizationOptions.fromMap(Map<String, dynamic> map) {
    return AnalystAgentPersonaArtifactsConfigVisualizationOptions(
      visualizationExamples: (() { final guardedValue = map['visualizationExamples']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AnalystAgentPersonaArtifactsConfigVisualizationOptionsVisualizationExample>(guardedValue, (value) => AnalystAgentPersonaArtifactsConfigVisualizationOptionsVisualizationExample.fromMap((value as Map).cast<String, dynamic>()))); })(),
      visualizationMode: (() { final guardedValue = map['visualizationMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
