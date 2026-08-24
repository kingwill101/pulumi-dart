// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetWorkerVersionBindingOutboundWorker {
  /// Entrypoint to invoke on the outbound worker.
  final pulumi.Input<String> entrypoint;
  /// Environment of the outbound worker.
  final pulumi.Input<String> environment;
  /// Name of the outbound worker.
  final pulumi.Input<String> service;

  /// Creates a new [GetWorkerVersionBindingOutboundWorker].
  /// [entrypoint] Entrypoint to invoke on the outbound worker.
  /// [environment] Environment of the outbound worker.
  /// [service] Name of the outbound worker.
  const GetWorkerVersionBindingOutboundWorker({
    required this.entrypoint,
    required this.environment,
    required this.service,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'entrypoint': entrypoint,
      'environment': environment,
      'service': service,
    };
  }

  factory GetWorkerVersionBindingOutboundWorker.fromMap(Map<String, dynamic> map) {
    return GetWorkerVersionBindingOutboundWorker(
      entrypoint: pulumi.Input.fromValue(map['entrypoint'] as String),
      environment: pulumi.Input.fromValue(map['environment'] as String),
      service: pulumi.Input.fromValue(map['service'] as String),
    );
  }
}
