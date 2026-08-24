// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class WorkerVersionBindingOutboundWorker {
  /// Entrypoint to invoke on the outbound worker.
  final pulumi.Input<String?>? entrypoint;
  /// Environment of the outbound worker.
  final pulumi.Input<String?>? environment;
  /// Name of the outbound worker.
  final pulumi.Input<String?>? service;

  /// Creates a new [WorkerVersionBindingOutboundWorker].
  /// [entrypoint] Entrypoint to invoke on the outbound worker.
  /// [environment] Environment of the outbound worker.
  /// [service] Name of the outbound worker.
  const WorkerVersionBindingOutboundWorker({
    this.entrypoint,
    this.environment,
    this.service,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'entrypoint': ?entrypoint,
      'environment': ?environment,
      'service': ?service,
    };
  }

  factory WorkerVersionBindingOutboundWorker.fromMap(Map<String, dynamic> map) {
    return WorkerVersionBindingOutboundWorker(
      entrypoint: (() { final guardedValue = map['entrypoint']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      environment: (() { final guardedValue = map['environment']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      service: (() { final guardedValue = map['service']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
