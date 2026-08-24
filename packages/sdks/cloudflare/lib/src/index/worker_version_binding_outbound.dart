// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'worker_version_binding_outbound_param.dart';
import 'worker_version_binding_outbound_worker.dart';

class WorkerVersionBindingOutbound {
  /// Pass information from the Dispatch Worker to the Outbound Worker through the parameters.
  final pulumi.Input<List<WorkerVersionBindingOutboundParam>?>? params;
  /// Outbound worker.
  final pulumi.Input<WorkerVersionBindingOutboundWorker?>? worker;

  /// Creates a new [WorkerVersionBindingOutbound].
  /// [params] Pass information from the Dispatch Worker to the Outbound Worker through the parameters.
  /// [worker] Outbound worker.
  const WorkerVersionBindingOutbound({
    this.params,
    this.worker,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'params': ?pulumi.Input.mapOptionalInputValue<List<WorkerVersionBindingOutboundParam>, List<Map<String, dynamic>>>(params, (value) => pulumi.Input.encodeList<WorkerVersionBindingOutboundParam, Map<String, dynamic>>(value, (value) => value.toMap())),
      'worker': ?pulumi.Input.mapOptionalInputValue<WorkerVersionBindingOutboundWorker, Map<String, dynamic>>(worker, (value) => value.toMap()),
    };
  }

  factory WorkerVersionBindingOutbound.fromMap(Map<String, dynamic> map) {
    return WorkerVersionBindingOutbound(
      params: (() { final guardedValue = map['params']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<WorkerVersionBindingOutboundParam>(guardedValue, (value) => WorkerVersionBindingOutboundParam.fromMap((value as Map).cast<String, dynamic>()))); })(),
      worker: (() { final guardedValue = map['worker']; if (guardedValue == null) return null; return pulumi.Input.fromValue(WorkerVersionBindingOutboundWorker.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
