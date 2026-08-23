// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'analyst_agent_persona_artifacts_config_slide_generation_options_slide_example_resource.dart';

class AnalystAgentPersonaArtifactsConfigSlideGenerationOptionsSlideExample {
  /// Represents a resource that can be used by the Analyst Agent.
  final pulumi.Input<AnalystAgentPersonaArtifactsConfigSlideGenerationOptionsSlideExampleResource> resource;

  /// Creates a new [AnalystAgentPersonaArtifactsConfigSlideGenerationOptionsSlideExample].
  /// [resource] Represents a resource that can be used by the Analyst Agent.
  const AnalystAgentPersonaArtifactsConfigSlideGenerationOptionsSlideExample({
    required this.resource,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resource': pulumi.Input.mapInputValue<AnalystAgentPersonaArtifactsConfigSlideGenerationOptionsSlideExampleResource, Map<String, dynamic>>(resource, (value) => value.toMap()),
    };
  }

  factory AnalystAgentPersonaArtifactsConfigSlideGenerationOptionsSlideExample.fromMap(Map<String, dynamic> map) {
    return AnalystAgentPersonaArtifactsConfigSlideGenerationOptionsSlideExample(
      resource: pulumi.Input.fromValue(AnalystAgentPersonaArtifactsConfigSlideGenerationOptionsSlideExampleResource.fromMap((map['resource']! as Map).cast<String, dynamic>())),
    );
  }
}
