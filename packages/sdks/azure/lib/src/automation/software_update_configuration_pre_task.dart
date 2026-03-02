// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class SoftwareUpdateConfigurationPreTask {
  /// Specifies a map of parameters for the task.
  final pulumi.Input<Map<String, String>>? parameters;
  /// The name of the runbook for the pre task.
  final pulumi.Input<String>? source;

  /// Creates a new [SoftwareUpdateConfigurationPreTask].
  /// [parameters] Specifies a map of parameters for the task.
  /// [source] The name of the runbook for the pre task.
  SoftwareUpdateConfigurationPreTask({
    this.parameters,
    this.source,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'parameters': ?parameters,
      'source': ?source,
    };
  }

  factory SoftwareUpdateConfigurationPreTask.fromMap(Map<String, dynamic> map) {
    return SoftwareUpdateConfigurationPreTask(
      parameters: map['parameters'] == null ? null : ((map['parameters']! as Map).cast<String, String>()).input(),
      source: map['source'] == null ? null : (map['source']! as String).input(),
    );
  }
}

