// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_worker_version_binding_outbound_param.dart';
import 'get_worker_version_binding_outbound_worker.dart';

class GetWorkerVersionBindingOutbound {
  /// Pass information from the Dispatch Worker to the Outbound Worker through the parameters.
  final pulumi.Input<List<GetWorkerVersionBindingOutboundParam>> params;
  /// Outbound worker.
  final pulumi.Input<GetWorkerVersionBindingOutboundWorker> worker;

  /// Creates a new [GetWorkerVersionBindingOutbound].
  /// [params] Pass information from the Dispatch Worker to the Outbound Worker through the parameters.
  /// [worker] Outbound worker.
  const GetWorkerVersionBindingOutbound({
    required this.params,
    required this.worker,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'params': pulumi.Input.mapInputValue<List<GetWorkerVersionBindingOutboundParam>, List<Map<String, dynamic>>>(params, (value) => pulumi.Input.encodeList<GetWorkerVersionBindingOutboundParam, Map<String, dynamic>>(value, (value) => value.toMap())),
      'worker': pulumi.Input.mapInputValue<GetWorkerVersionBindingOutboundWorker, Map<String, dynamic>>(worker, (value) => value.toMap()),
    };
  }

  factory GetWorkerVersionBindingOutbound.fromMap(Map<String, dynamic> map) {
    return GetWorkerVersionBindingOutbound(
      params: pulumi.Input.fromValue(pulumi.Input.decodeList<GetWorkerVersionBindingOutboundParam>(map['params']!, (value) => GetWorkerVersionBindingOutboundParam.fromMap((value as Map).cast<String, dynamic>()))),
      worker: pulumi.Input.fromValue(GetWorkerVersionBindingOutboundWorker.fromMap((map['worker']! as Map).cast<String, dynamic>())),
    );
  }
}
