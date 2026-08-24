// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_worker_references_dispatch_namespace_outbound.dart';
import 'get_worker_references_domain.dart';
import 'get_worker_references_durable_object.dart';
import 'get_worker_references_queue.dart';
import 'get_worker_references_worker.dart';

class GetWorkerReferences {
  /// Other Workers that reference the Worker as an outbound for a dispatch namespace.
  final pulumi.Input<List<GetWorkerReferencesDispatchNamespaceOutbound>> dispatchNamespaceOutbounds;
  /// Custom domains connected to the Worker.
  final pulumi.Input<List<GetWorkerReferencesDomain>> domains;
  /// Other Workers that reference Durable Object classes implemented by the Worker.
  final pulumi.Input<List<GetWorkerReferencesDurableObject>> durableObjects;
  /// Queues that send messages to the Worker.
  final pulumi.Input<List<GetWorkerReferencesQueue>> queues;
  /// Other Workers that reference the Worker using [service bindings](https://developers.cloudflare.com/workers/runtime-apis/bindings/service-bindings/).
  final pulumi.Input<List<GetWorkerReferencesWorker>> workers;

  /// Creates a new [GetWorkerReferences].
  /// [dispatchNamespaceOutbounds] Other Workers that reference the Worker as an outbound for a dispatch namespace.
  /// [domains] Custom domains connected to the Worker.
  /// [durableObjects] Other Workers that reference Durable Object classes implemented by the Worker.
  /// [queues] Queues that send messages to the Worker.
  /// [workers] Other Workers that reference the Worker using [service bindings](https://developers.cloudflare.com/workers/runtime-apis/bindings/service-bindings/).
  const GetWorkerReferences({
    required this.dispatchNamespaceOutbounds,
    required this.domains,
    required this.durableObjects,
    required this.queues,
    required this.workers,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dispatchNamespaceOutbounds': pulumi.Input.mapInputValue<List<GetWorkerReferencesDispatchNamespaceOutbound>, List<Map<String, dynamic>>>(dispatchNamespaceOutbounds, (value) => pulumi.Input.encodeList<GetWorkerReferencesDispatchNamespaceOutbound, Map<String, dynamic>>(value, (value) => value.toMap())),
      'domains': pulumi.Input.mapInputValue<List<GetWorkerReferencesDomain>, List<Map<String, dynamic>>>(domains, (value) => pulumi.Input.encodeList<GetWorkerReferencesDomain, Map<String, dynamic>>(value, (value) => value.toMap())),
      'durableObjects': pulumi.Input.mapInputValue<List<GetWorkerReferencesDurableObject>, List<Map<String, dynamic>>>(durableObjects, (value) => pulumi.Input.encodeList<GetWorkerReferencesDurableObject, Map<String, dynamic>>(value, (value) => value.toMap())),
      'queues': pulumi.Input.mapInputValue<List<GetWorkerReferencesQueue>, List<Map<String, dynamic>>>(queues, (value) => pulumi.Input.encodeList<GetWorkerReferencesQueue, Map<String, dynamic>>(value, (value) => value.toMap())),
      'workers': pulumi.Input.mapInputValue<List<GetWorkerReferencesWorker>, List<Map<String, dynamic>>>(workers, (value) => pulumi.Input.encodeList<GetWorkerReferencesWorker, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetWorkerReferences.fromMap(Map<String, dynamic> map) {
    return GetWorkerReferences(
      dispatchNamespaceOutbounds: pulumi.Input.fromValue(pulumi.Input.decodeList<GetWorkerReferencesDispatchNamespaceOutbound>(map['dispatchNamespaceOutbounds']!, (value) => GetWorkerReferencesDispatchNamespaceOutbound.fromMap((value as Map).cast<String, dynamic>()))),
      domains: pulumi.Input.fromValue(pulumi.Input.decodeList<GetWorkerReferencesDomain>(map['domains']!, (value) => GetWorkerReferencesDomain.fromMap((value as Map).cast<String, dynamic>()))),
      durableObjects: pulumi.Input.fromValue(pulumi.Input.decodeList<GetWorkerReferencesDurableObject>(map['durableObjects']!, (value) => GetWorkerReferencesDurableObject.fromMap((value as Map).cast<String, dynamic>()))),
      queues: pulumi.Input.fromValue(pulumi.Input.decodeList<GetWorkerReferencesQueue>(map['queues']!, (value) => GetWorkerReferencesQueue.fromMap((value as Map).cast<String, dynamic>()))),
      workers: pulumi.Input.fromValue(pulumi.Input.decodeList<GetWorkerReferencesWorker>(map['workers']!, (value) => GetWorkerReferencesWorker.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}
