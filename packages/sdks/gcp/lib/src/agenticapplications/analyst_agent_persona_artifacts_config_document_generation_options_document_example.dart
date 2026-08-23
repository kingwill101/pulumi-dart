// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'analyst_agent_persona_artifacts_config_document_generation_options_document_example_resource.dart';

class AnalystAgentPersonaArtifactsConfigDocumentGenerationOptionsDocumentExample {
  /// Represents a resource that can be used by the Analyst Agent.
  final pulumi.Input<AnalystAgentPersonaArtifactsConfigDocumentGenerationOptionsDocumentExampleResource> resource;

  /// Creates a new [AnalystAgentPersonaArtifactsConfigDocumentGenerationOptionsDocumentExample].
  /// [resource] Represents a resource that can be used by the Analyst Agent.
  const AnalystAgentPersonaArtifactsConfigDocumentGenerationOptionsDocumentExample({
    required this.resource,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resource': pulumi.Input.mapInputValue<AnalystAgentPersonaArtifactsConfigDocumentGenerationOptionsDocumentExampleResource, Map<String, dynamic>>(resource, (value) => value.toMap()),
    };
  }

  factory AnalystAgentPersonaArtifactsConfigDocumentGenerationOptionsDocumentExample.fromMap(Map<String, dynamic> map) {
    return AnalystAgentPersonaArtifactsConfigDocumentGenerationOptionsDocumentExample(
      resource: pulumi.Input.fromValue(AnalystAgentPersonaArtifactsConfigDocumentGenerationOptionsDocumentExampleResource.fromMap((map['resource']! as Map).cast<String, dynamic>())),
    );
  }
}
