// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetWorkersScriptsResultTailConsumer {
  /// Optional environment if the Worker utilizes one.
  final pulumi.Input<String> environment;
  /// Optional dispatch namespace the script belongs to.
  final pulumi.Input<String> namespace;
  /// Name of Worker that is to be the consumer.
  final pulumi.Input<String> service;

  /// Creates a new [GetWorkersScriptsResultTailConsumer].
  /// [environment] Optional environment if the Worker utilizes one.
  /// [namespace] Optional dispatch namespace the script belongs to.
  /// [service] Name of Worker that is to be the consumer.
  const GetWorkersScriptsResultTailConsumer({
    required this.environment,
    required this.namespace,
    required this.service,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'environment': environment,
      'namespace': namespace,
      'service': service,
    };
  }

  factory GetWorkersScriptsResultTailConsumer.fromMap(Map<String, dynamic> map) {
    return GetWorkersScriptsResultTailConsumer(
      environment: pulumi.Input.fromValue(map['environment'] as String),
      namespace: pulumi.Input.fromValue(map['namespace'] as String),
      service: pulumi.Input.fromValue(map['service'] as String),
    );
  }
}
