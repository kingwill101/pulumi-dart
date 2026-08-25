// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AnalystAgentPersonaArtifactsConfigVisualizationOptionsVisualizationExampleResourceF1Resource {
  /// ## - Points to an f1 table to use.
  ///
  /// - Expected Format:
  /// - {group}.{table_name}
  final pulumi.Input<String?>? f1Table;

  /// Creates a new [AnalystAgentPersonaArtifactsConfigVisualizationOptionsVisualizationExampleResourceF1Resource].
  /// [f1Table] ## - Points to an f1 table to use.
  const AnalystAgentPersonaArtifactsConfigVisualizationOptionsVisualizationExampleResourceF1Resource({
    this.f1Table,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'f1Table': ?f1Table,
    };
  }

  factory AnalystAgentPersonaArtifactsConfigVisualizationOptionsVisualizationExampleResourceF1Resource.fromMap(Map<String, dynamic> map) {
    return AnalystAgentPersonaArtifactsConfigVisualizationOptionsVisualizationExampleResourceF1Resource(
      f1Table: (() { final guardedValue = map['f1Table']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
