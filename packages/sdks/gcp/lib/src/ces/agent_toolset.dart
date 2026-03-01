// ignore_for_file: unused_element, unnecessary_cast


class AgentToolset {
  /// The tools IDs to filter the toolset.
  final List<String>? toolIds;
  /// The resource name of the toolset.
  /// Format:
  /// `projects/{project}/locations/{location}/apps/{app}/toolsets/{toolset}`
  final String toolset;

  /// Creates a new [AgentToolset].
  /// [toolIds] The tools IDs to filter the toolset.
  /// [toolset] The resource name of the toolset.
  AgentToolset({
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
      toolIds: map['toolIds'] == null ? null : (map['toolIds'] as List).cast<String>(),
      toolset: map['toolset'] as String,
    );
  }
}

