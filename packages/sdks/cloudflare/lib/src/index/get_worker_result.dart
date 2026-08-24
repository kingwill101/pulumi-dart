// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_worker_filter.dart';
import 'get_worker_observability.dart';
import 'get_worker_references.dart';
import 'get_worker_subdomain.dart';
import 'get_worker_tail_consumer.dart';

/// Result data returned by getWorker.
class GetWorkerResult {
  /// Identifier.
  final String? accountId;
  /// When the Worker was created.
  final String? createdOn;
  /// When the Worker's most recent deployment was created. `null` if the Worker has never been deployed.
  final String? deployedOn;
  final GetWorkerFilter? filter;
  /// Identifier for the Worker, which can be ID or name.
  final String? id;
  /// Whether logpush is enabled for the Worker.
  final bool? logpush;
  /// Name of the Worker.
  final String? name;
  /// Observability settings for the Worker.
  final GetWorkerObservability? observability;
  /// Other resources that reference the Worker and depend on it existing.
  final GetWorkerReferences? references;
  /// Subdomain settings for the Worker.
  final GetWorkerSubdomain? subdomain;
  /// Tags associated with the Worker.
  final List<String>? tags;
  /// Other Workers that should consume logs from the Worker.
  final List<GetWorkerTailConsumer>? tailConsumers;
  /// When the Worker was most recently updated.
  final String? updatedOn;
  /// Identifier for the Worker, which can be ID or name.
  final String? workerId;

  /// Creates a new [GetWorkerResult].
  /// [accountId] Identifier.
  /// [createdOn] When the Worker was created.
  /// [deployedOn] When the Worker's most recent deployment was created. `null` if the Worker has never been deployed.
  /// [filter] Optional.
  /// [id] Identifier for the Worker, which can be ID or name.
  /// [logpush] Whether logpush is enabled for the Worker.
  /// [name] Name of the Worker.
  /// [observability] Observability settings for the Worker.
  /// [references] Other resources that reference the Worker and depend on it existing.
  /// [subdomain] Subdomain settings for the Worker.
  /// [tags] Tags associated with the Worker.
  /// [tailConsumers] Other Workers that should consume logs from the Worker.
  /// [updatedOn] When the Worker was most recently updated.
  /// [workerId] Identifier for the Worker, which can be ID or name.
  const GetWorkerResult({
    this.accountId,
    this.createdOn,
    this.deployedOn,
    this.filter,
    this.id,
    this.logpush,
    this.name,
    this.observability,
    this.references,
    this.subdomain,
    this.tags,
    this.tailConsumers,
    this.updatedOn,
    this.workerId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'createdOn': ?createdOn,
      'deployedOn': ?deployedOn,
      'filter': ?filter?.toMap(),
      'id': ?id,
      'logpush': ?logpush,
      'name': ?name,
      'observability': ?observability?.toMap(),
      'references': ?references?.toMap(),
      'subdomain': ?subdomain?.toMap(),
      'tags': ?tags,
      'tailConsumers': ?(() { final guardedValue = tailConsumers; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetWorkerTailConsumer, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'updatedOn': ?updatedOn,
      'workerId': ?workerId,
    };
  }

  factory GetWorkerResult.fromMap(Map<String, dynamic> map) {
    return GetWorkerResult(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      createdOn: (() { final guardedValue = map['createdOn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      deployedOn: (() { final guardedValue = map['deployedOn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      filter: (() { final guardedValue = map['filter']; if (guardedValue == null) return null; return GetWorkerFilter.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      logpush: (() { final guardedValue = map['logpush']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      observability: (() { final guardedValue = map['observability']; if (guardedValue == null) return null; return GetWorkerObservability.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      references: (() { final guardedValue = map['references']; if (guardedValue == null) return null; return GetWorkerReferences.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      subdomain: (() { final guardedValue = map['subdomain']; if (guardedValue == null) return null; return GetWorkerSubdomain.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      tailConsumers: (() { final guardedValue = map['tailConsumers']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetWorkerTailConsumer>(guardedValue, (value) => GetWorkerTailConsumer.fromMap((value as Map).cast<String, dynamic>())); })(),
      updatedOn: (() { final guardedValue = map['updatedOn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      workerId: (() { final guardedValue = map['workerId']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
