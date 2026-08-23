// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'analyst_agent_persona_artifacts_config_visualization_options_visualization_example_resource.dart';

class AnalystAgentPersonaArtifactsConfigVisualizationOptionsVisualizationExample {
  /// Represents a resource that can be used by the Analyst Agent.
  final pulumi.Input<AnalystAgentPersonaArtifactsConfigVisualizationOptionsVisualizationExampleResource> resource;
  /// The type of the visualization (e.g. "Bar Chart", "Line Chart").
  final pulumi.Input<String> visualizationType;

  /// Creates a new [AnalystAgentPersonaArtifactsConfigVisualizationOptionsVisualizationExample].
  /// [resource] Represents a resource that can be used by the Analyst Agent.
  /// [visualizationType] The type of the visualization (e.g. "Bar Chart", "Line Chart").
  const AnalystAgentPersonaArtifactsConfigVisualizationOptionsVisualizationExample({
    required this.resource,
    required this.visualizationType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resource': pulumi.Input.mapInputValue<AnalystAgentPersonaArtifactsConfigVisualizationOptionsVisualizationExampleResource, Map<String, dynamic>>(resource, (value) => value.toMap()),
      'visualizationType': visualizationType,
    };
  }

  factory AnalystAgentPersonaArtifactsConfigVisualizationOptionsVisualizationExample.fromMap(Map<String, dynamic> map) {
    return AnalystAgentPersonaArtifactsConfigVisualizationOptionsVisualizationExample(
      resource: pulumi.Input.fromValue(AnalystAgentPersonaArtifactsConfigVisualizationOptionsVisualizationExampleResource.fromMap((map['resource']! as Map).cast<String, dynamic>())),
      visualizationType: pulumi.Input.fromValue(map['visualizationType'] as String),
    );
  }
}
