// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'worker_observability.dart';
import 'worker_references.dart';
import 'worker_subdomain.dart';
import 'worker_tail_consumer.dart';

/// Input properties used for looking up and filtering Worker resources.
class WorkerState {
  /// Identifier.
  final pulumi.Input<String?>? accountId;
  /// When the Worker was created.
  final pulumi.Input<String?>? createdOn;
  /// When the Worker's most recent deployment was created. `null` if the Worker has never been deployed.
  final pulumi.Input<String?>? deployedOn;
  /// Whether logpush is enabled for the Worker.
  final pulumi.Input<bool?>? logpush;
  /// Name of the Worker.
  final pulumi.Input<String?>? name;
  /// Observability settings for the Worker.
  final pulumi.Input<WorkerObservability?>? observability;
  /// Other resources that reference the Worker and depend on it existing.
  final pulumi.Input<WorkerReferences?>? references;
  /// Subdomain settings for the Worker.
  final pulumi.Input<WorkerSubdomain?>? subdomain;
  /// Tags associated with the Worker.
  final pulumi.Input<List<String>?>? tags;
  /// Other Workers that should consume logs from the Worker.
  final pulumi.Input<List<WorkerTailConsumer>?>? tailConsumers;
  /// When the Worker was most recently updated.
  final pulumi.Input<String?>? updatedOn;

  /// Creates a new [WorkerState].
  /// [accountId] Identifier.
  /// [createdOn] When the Worker was created.
  /// [deployedOn] When the Worker's most recent deployment was created. `null` if the Worker has never been deployed.
  /// [logpush] Whether logpush is enabled for the Worker.
  /// [name] Name of the Worker.
  /// [observability] Observability settings for the Worker.
  /// [references] Other resources that reference the Worker and depend on it existing.
  /// [subdomain] Subdomain settings for the Worker.
  /// [tags] Tags associated with the Worker.
  /// [tailConsumers] Other Workers that should consume logs from the Worker.
  /// [updatedOn] When the Worker was most recently updated.
  const WorkerState({
    this.accountId,
    this.createdOn,
    this.deployedOn,
    this.logpush,
    this.name,
    this.observability,
    this.references,
    this.subdomain,
    this.tags,
    this.tailConsumers,
    this.updatedOn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'createdOn': ?createdOn,
      'deployedOn': ?deployedOn,
      'logpush': ?logpush,
      'name': ?name,
      'observability': ?pulumi.Input.mapOptionalInputValue<WorkerObservability, Map<String, dynamic>>(observability, (value) => value.toMap()),
      'references': ?pulumi.Input.mapOptionalInputValue<WorkerReferences, Map<String, dynamic>>(references, (value) => value.toMap()),
      'subdomain': ?pulumi.Input.mapOptionalInputValue<WorkerSubdomain, Map<String, dynamic>>(subdomain, (value) => value.toMap()),
      'tags': ?tags,
      'tailConsumers': ?pulumi.Input.mapOptionalInputValue<List<WorkerTailConsumer>, List<Map<String, dynamic>>>(tailConsumers, (value) => pulumi.Input.encodeList<WorkerTailConsumer, Map<String, dynamic>>(value, (value) => value.toMap())),
      'updatedOn': ?updatedOn,
    };
  }

  factory WorkerState.fromMap(Map<String, dynamic> map) {
    return WorkerState(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      createdOn: (() { final guardedValue = map['createdOn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      deployedOn: (() { final guardedValue = map['deployedOn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      logpush: (() { final guardedValue = map['logpush']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      observability: (() { final guardedValue = map['observability']; if (guardedValue == null) return null; return pulumi.Input.fromValue(WorkerObservability.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      references: (() { final guardedValue = map['references']; if (guardedValue == null) return null; return pulumi.Input.fromValue(WorkerReferences.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      subdomain: (() { final guardedValue = map['subdomain']; if (guardedValue == null) return null; return pulumi.Input.fromValue(WorkerSubdomain.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      tailConsumers: (() { final guardedValue = map['tailConsumers']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<WorkerTailConsumer>(guardedValue, (value) => WorkerTailConsumer.fromMap((value as Map).cast<String, dynamic>()))); })(),
      updatedOn: (() { final guardedValue = map['updatedOn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
