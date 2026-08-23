// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class SoftwareUpdateConfigurationPostTask {
  /// Specifies a map of parameters for the task.
  final pulumi.Input<Map<String, String>>? parameters;
  /// The name of the runbook for the post task.
  final pulumi.Input<String>? source;

  /// Creates a new [SoftwareUpdateConfigurationPostTask].
  /// [parameters] Specifies a map of parameters for the task.
  /// [source] The name of the runbook for the post task.
  const SoftwareUpdateConfigurationPostTask({
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
      parameters: (() { final guardedValue = map['parameters']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      source: (() { final guardedValue = map['source']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
