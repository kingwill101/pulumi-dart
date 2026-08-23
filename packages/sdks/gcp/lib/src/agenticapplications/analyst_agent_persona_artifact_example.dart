// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'analyst_agent_persona_artifact_example_resource.dart';

class AnalystAgentPersonaArtifactExample {
  /// Represents a resource that can be used by the Analyst Agent.
  /// Structure is documented below.
  final pulumi.Input<AnalystAgentPersonaArtifactExampleResource> resource;

  /// Creates a new [AnalystAgentPersonaArtifactExample].
  /// [resource] Represents a resource that can be used by the Analyst Agent.
  const AnalystAgentPersonaArtifactExample({
    required this.resource,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resource': pulumi.Input.mapInputValue<AnalystAgentPersonaArtifactExampleResource, Map<String, dynamic>>(resource, (value) => value.toMap()),
    };
  }

  factory AnalystAgentPersonaArtifactExample.fromMap(Map<String, dynamic> map) {
    return AnalystAgentPersonaArtifactExample(
      resource: pulumi.Input.fromValue(AnalystAgentPersonaArtifactExampleResource.fromMap((map['resource']! as Map).cast<String, dynamic>())),
    );
  }
}
