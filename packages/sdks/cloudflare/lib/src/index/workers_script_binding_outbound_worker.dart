// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class WorkersScriptBindingOutboundWorker {
  /// Environment of the outbound worker.
  final pulumi.Input<String?>? environment;
  /// Name of the outbound worker.
  final pulumi.Input<String?>? service;

  /// Creates a new [WorkersScriptBindingOutboundWorker].
  /// [environment] Environment of the outbound worker.
  /// [service] Name of the outbound worker.
  const WorkersScriptBindingOutboundWorker({
    this.environment,
    this.service,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'environment': ?environment,
      'service': ?service,
    };
  }

  factory WorkersScriptBindingOutboundWorker.fromMap(Map<String, dynamic> map) {
    return WorkersScriptBindingOutboundWorker(
      environment: (() { final guardedValue = map['environment']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      service: (() { final guardedValue = map['service']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
