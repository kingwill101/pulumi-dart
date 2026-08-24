// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_worker_versions_result_binding_outbound_param.dart';
import 'get_worker_versions_result_binding_outbound_worker.dart';

class GetWorkerVersionsResultBindingOutbound {
  /// Pass information from the Dispatch Worker to the Outbound Worker through the parameters.
  final pulumi.Input<List<GetWorkerVersionsResultBindingOutboundParam>> params;
  /// Outbound worker.
  final pulumi.Input<GetWorkerVersionsResultBindingOutboundWorker> worker;

  /// Creates a new [GetWorkerVersionsResultBindingOutbound].
  /// [params] Pass information from the Dispatch Worker to the Outbound Worker through the parameters.
  /// [worker] Outbound worker.
  const GetWorkerVersionsResultBindingOutbound({
    required this.params,
    required this.worker,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'params': pulumi.Input.mapInputValue<List<GetWorkerVersionsResultBindingOutboundParam>, List<Map<String, dynamic>>>(params, (value) => pulumi.Input.encodeList<GetWorkerVersionsResultBindingOutboundParam, Map<String, dynamic>>(value, (value) => value.toMap())),
      'worker': pulumi.Input.mapInputValue<GetWorkerVersionsResultBindingOutboundWorker, Map<String, dynamic>>(worker, (value) => value.toMap()),
    };
  }

  factory GetWorkerVersionsResultBindingOutbound.fromMap(Map<String, dynamic> map) {
    return GetWorkerVersionsResultBindingOutbound(
      params: pulumi.Input.fromValue(pulumi.Input.decodeList<GetWorkerVersionsResultBindingOutboundParam>(map['params']!, (value) => GetWorkerVersionsResultBindingOutboundParam.fromMap((value as Map).cast<String, dynamic>()))),
      worker: pulumi.Input.fromValue(GetWorkerVersionsResultBindingOutboundWorker.fromMap((map['worker']! as Map).cast<String, dynamic>())),
    );
  }
}
