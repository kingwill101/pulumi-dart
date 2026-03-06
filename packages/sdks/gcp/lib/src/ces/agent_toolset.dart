// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AgentToolset {
  /// The tools IDs to filter the toolset.
  final pulumi.Input<List<String>>? toolIds;
  /// The resource name of the toolset.
  /// Format:
  /// `projects/{project}/locations/{location}/apps/{app}/toolsets/{toolset}`
  final pulumi.Input<String> toolset;

  /// Creates a new [AgentToolset].
  /// [toolIds] The tools IDs to filter the toolset.
  /// [toolset] The resource name of the toolset.
  const AgentToolset({
    this.toolIds,
    required this.toolset,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'toolIds': ?toolIds,
      'toolset': toolset,
    };
  }

  factory AgentToolset.fromMap(Map<String, dynamic> map) {
    return AgentToolset(
      toolIds: (() { final guardedValue = map['toolIds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      toolset: pulumi.Input.fromValue(map['toolset'] as String),
    );
  }
}

