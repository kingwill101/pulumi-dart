// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'worker_references_dispatch_namespace_outbound.dart';
import 'worker_references_domain.dart';
import 'worker_references_durable_object.dart';
import 'worker_references_queue.dart';
import 'worker_references_worker.dart';

class WorkerReferences {
  /// Other Workers that reference the Worker as an outbound for a dispatch namespace.
  final pulumi.Input<List<WorkerReferencesDispatchNamespaceOutbound>?>? dispatchNamespaceOutbounds;
  /// Custom domains connected to the Worker.
  final pulumi.Input<List<WorkerReferencesDomain>?>? domains;
  /// Other Workers that reference Durable Object classes implemented by the Worker.
  final pulumi.Input<List<WorkerReferencesDurableObject>?>? durableObjects;
  /// Queues that send messages to the Worker.
  final pulumi.Input<List<WorkerReferencesQueue>?>? queues;
  /// Other Workers that reference the Worker using [service bindings](https://developers.cloudflare.com/workers/runtime-apis/bindings/service-bindings/).
  final pulumi.Input<List<WorkerReferencesWorker>?>? workers;

  /// Creates a new [WorkerReferences].
  /// [dispatchNamespaceOutbounds] Other Workers that reference the Worker as an outbound for a dispatch namespace.
  /// [domains] Custom domains connected to the Worker.
  /// [durableObjects] Other Workers that reference Durable Object classes implemented by the Worker.
  /// [queues] Queues that send messages to the Worker.
  /// [workers] Other Workers that reference the Worker using [service bindings](https://developers.cloudflare.com/workers/runtime-apis/bindings/service-bindings/).
  const WorkerReferences({
    this.dispatchNamespaceOutbounds,
    this.domains,
    this.durableObjects,
    this.queues,
    this.workers,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dispatchNamespaceOutbounds': ?pulumi.Input.mapOptionalInputValue<List<WorkerReferencesDispatchNamespaceOutbound>, List<Map<String, dynamic>>>(dispatchNamespaceOutbounds, (value) => pulumi.Input.encodeList<WorkerReferencesDispatchNamespaceOutbound, Map<String, dynamic>>(value, (value) => value.toMap())),
      'domains': ?pulumi.Input.mapOptionalInputValue<List<WorkerReferencesDomain>, List<Map<String, dynamic>>>(domains, (value) => pulumi.Input.encodeList<WorkerReferencesDomain, Map<String, dynamic>>(value, (value) => value.toMap())),
      'durableObjects': ?pulumi.Input.mapOptionalInputValue<List<WorkerReferencesDurableObject>, List<Map<String, dynamic>>>(durableObjects, (value) => pulumi.Input.encodeList<WorkerReferencesDurableObject, Map<String, dynamic>>(value, (value) => value.toMap())),
      'queues': ?pulumi.Input.mapOptionalInputValue<List<WorkerReferencesQueue>, List<Map<String, dynamic>>>(queues, (value) => pulumi.Input.encodeList<WorkerReferencesQueue, Map<String, dynamic>>(value, (value) => value.toMap())),
      'workers': ?pulumi.Input.mapOptionalInputValue<List<WorkerReferencesWorker>, List<Map<String, dynamic>>>(workers, (value) => pulumi.Input.encodeList<WorkerReferencesWorker, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory WorkerReferences.fromMap(Map<String, dynamic> map) {
    return WorkerReferences(
      dispatchNamespaceOutbounds: (() { final guardedValue = map['dispatchNamespaceOutbounds']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<WorkerReferencesDispatchNamespaceOutbound>(guardedValue, (value) => WorkerReferencesDispatchNamespaceOutbound.fromMap((value as Map).cast<String, dynamic>()))); })(),
      domains: (() { final guardedValue = map['domains']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<WorkerReferencesDomain>(guardedValue, (value) => WorkerReferencesDomain.fromMap((value as Map).cast<String, dynamic>()))); })(),
      durableObjects: (() { final guardedValue = map['durableObjects']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<WorkerReferencesDurableObject>(guardedValue, (value) => WorkerReferencesDurableObject.fromMap((value as Map).cast<String, dynamic>()))); })(),
      queues: (() { final guardedValue = map['queues']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<WorkerReferencesQueue>(guardedValue, (value) => WorkerReferencesQueue.fromMap((value as Map).cast<String, dynamic>()))); })(),
      workers: (() { final guardedValue = map['workers']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<WorkerReferencesWorker>(guardedValue, (value) => WorkerReferencesWorker.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
