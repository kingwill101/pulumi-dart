// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'workers_script_binding_outbound_worker.dart';

class WorkersScriptBindingOutbound {
  /// Pass information from the Dispatch Worker to the Outbound Worker through the parameters.
  final pulumi.Input<List<String>?>? params;
  /// Outbound worker.
  final pulumi.Input<WorkersScriptBindingOutboundWorker?>? worker;

  /// Creates a new [WorkersScriptBindingOutbound].
  /// [params] Pass information from the Dispatch Worker to the Outbound Worker through the parameters.
  /// [worker] Outbound worker.
  const WorkersScriptBindingOutbound({
    this.params,
    this.worker,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'params': ?params,
      'worker': ?pulumi.Input.mapOptionalInputValue<WorkersScriptBindingOutboundWorker, Map<String, dynamic>>(worker, (value) => value.toMap()),
    };
  }

  factory WorkersScriptBindingOutbound.fromMap(Map<String, dynamic> map) {
    return WorkersScriptBindingOutbound(
      params: (() { final guardedValue = map['params']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      worker: (() { final guardedValue = map['worker']; if (guardedValue == null) return null; return pulumi.Input.fromValue(WorkersScriptBindingOutboundWorker.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
