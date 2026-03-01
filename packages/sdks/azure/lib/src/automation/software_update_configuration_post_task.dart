// ignore_for_file: unused_element, unnecessary_cast


class SoftwareUpdateConfigurationPostTask {
  /// Specifies a map of parameters for the task.
  final Map<String, String>? parameters;
  /// The name of the runbook for the post task.
  final String? source;

  /// Creates a new [SoftwareUpdateConfigurationPostTask].
  /// [parameters] Specifies a map of parameters for the task.
  /// [source] The name of the runbook for the post task.
  SoftwareUpdateConfigurationPostTask({
    this.parameters,
    this.source,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'parameters': ?parameters,
      'source': ?source,
    };
  }

  factory SoftwareUpdateConfigurationPostTask.fromMap(Map<String, dynamic> map) {
    return SoftwareUpdateConfigurationPostTask(
      parameters: map['parameters'] == null ? null : (map['parameters'] as Map).cast<String, String>(),
      source: map['source'] == null ? null : map['source'] as String,
    );
  }
}

