// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class WorkerScriptTailConsumer {
  /// Optional environment if the Worker utilizes one.
  final pulumi.Input<String?>? environment;
  /// Optional dispatch namespace the script belongs to.
  final pulumi.Input<String?>? namespace;
  /// Name of Worker that is to be the consumer.
  final pulumi.Input<String> service;

  /// Creates a new [WorkerScriptTailConsumer].
  /// [environment] Optional environment if the Worker utilizes one.
  /// [namespace] Optional dispatch namespace the script belongs to.
  /// [service] Name of Worker that is to be the consumer.
  const WorkerScriptTailConsumer({
    this.environment,
    this.namespace,
    required this.service,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'environment': ?environment,
      'namespace': ?namespace,
      'service': service,
    };
  }

  factory WorkerScriptTailConsumer.fromMap(Map<String, dynamic> map) {
    return WorkerScriptTailConsumer(
      environment: (() { final guardedValue = map['environment']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      namespace: (() { final guardedValue = map['namespace']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      service: pulumi.Input.fromValue(map['service'] as String),
    );
  }
}
