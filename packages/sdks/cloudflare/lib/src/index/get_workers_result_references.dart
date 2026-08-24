// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_workers_result_references_dispatch_namespace_outbound.dart';
import 'get_workers_result_references_domain.dart';
import 'get_workers_result_references_durable_object.dart';
import 'get_workers_result_references_queue.dart';
import 'get_workers_result_references_worker.dart';

class GetWorkersResultReferences {
  /// Other Workers that reference the Worker as an outbound for a dispatch namespace.
  final pulumi.Input<List<GetWorkersResultReferencesDispatchNamespaceOutbound>> dispatchNamespaceOutbounds;
  /// Custom domains connected to the Worker.
  final pulumi.Input<List<GetWorkersResultReferencesDomain>> domains;
  /// Other Workers that reference Durable Object classes implemented by the Worker.
  final pulumi.Input<List<GetWorkersResultReferencesDurableObject>> durableObjects;
  /// Queues that send messages to the Worker.
  final pulumi.Input<List<GetWorkersResultReferencesQueue>> queues;
  /// Other Workers that reference the Worker using [service bindings](https://developers.cloudflare.com/workers/runtime-apis/bindings/service-bindings/).
  final pulumi.Input<List<GetWorkersResultReferencesWorker>> workers;

  /// Creates a new [GetWorkersResultReferences].
  /// [dispatchNamespaceOutbounds] Other Workers that reference the Worker as an outbound for a dispatch namespace.
  /// [domains] Custom domains connected to the Worker.
  /// [durableObjects] Other Workers that reference Durable Object classes implemented by the Worker.
  /// [queues] Queues that send messages to the Worker.
  /// [workers] Other Workers that reference the Worker using [service bindings](https://developers.cloudflare.com/workers/runtime-apis/bindings/service-bindings/).
  const GetWorkersResultReferences({
    required this.dispatchNamespaceOutbounds,
    required this.domains,
    required this.durableObjects,
    required this.queues,
    required this.workers,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dispatchNamespaceOutbounds': pulumi.Input.mapInputValue<List<GetWorkersResultReferencesDispatchNamespaceOutbound>, List<Map<String, dynamic>>>(dispatchNamespaceOutbounds, (value) => pulumi.Input.encodeList<GetWorkersResultReferencesDispatchNamespaceOutbound, Map<String, dynamic>>(value, (value) => value.toMap())),
      'domains': pulumi.Input.mapInputValue<List<GetWorkersResultReferencesDomain>, List<Map<String, dynamic>>>(domains, (value) => pulumi.Input.encodeList<GetWorkersResultReferencesDomain, Map<String, dynamic>>(value, (value) => value.toMap())),
      'durableObjects': pulumi.Input.mapInputValue<List<GetWorkersResultReferencesDurableObject>, List<Map<String, dynamic>>>(durableObjects, (value) => pulumi.Input.encodeList<GetWorkersResultReferencesDurableObject, Map<String, dynamic>>(value, (value) => value.toMap())),
      'queues': pulumi.Input.mapInputValue<List<GetWorkersResultReferencesQueue>, List<Map<String, dynamic>>>(queues, (value) => pulumi.Input.encodeList<GetWorkersResultReferencesQueue, Map<String, dynamic>>(value, (value) => value.toMap())),
      'workers': pulumi.Input.mapInputValue<List<GetWorkersResultReferencesWorker>, List<Map<String, dynamic>>>(workers, (value) => pulumi.Input.encodeList<GetWorkersResultReferencesWorker, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetWorkersResultReferences.fromMap(Map<String, dynamic> map) {
    return GetWorkersResultReferences(
      dispatchNamespaceOutbounds: pulumi.Input.fromValue(pulumi.Input.decodeList<GetWorkersResultReferencesDispatchNamespaceOutbound>(map['dispatchNamespaceOutbounds']!, (value) => GetWorkersResultReferencesDispatchNamespaceOutbound.fromMap((value as Map).cast<String, dynamic>()))),
      domains: pulumi.Input.fromValue(pulumi.Input.decodeList<GetWorkersResultReferencesDomain>(map['domains']!, (value) => GetWorkersResultReferencesDomain.fromMap((value as Map).cast<String, dynamic>()))),
      durableObjects: pulumi.Input.fromValue(pulumi.Input.decodeList<GetWorkersResultReferencesDurableObject>(map['durableObjects']!, (value) => GetWorkersResultReferencesDurableObject.fromMap((value as Map).cast<String, dynamic>()))),
      queues: pulumi.Input.fromValue(pulumi.Input.decodeList<GetWorkersResultReferencesQueue>(map['queues']!, (value) => GetWorkersResultReferencesQueue.fromMap((value as Map).cast<String, dynamic>()))),
      workers: pulumi.Input.fromValue(pulumi.Input.decodeList<GetWorkersResultReferencesWorker>(map['workers']!, (value) => GetWorkersResultReferencesWorker.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}
