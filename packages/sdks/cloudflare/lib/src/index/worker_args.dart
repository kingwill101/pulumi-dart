// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'worker_observability.dart';
import 'worker_subdomain.dart';
import 'worker_tail_consumer.dart';

/// {@template pulumi_index_worker_worker_args_doc}
/// The set of arguments for Worker.
/// {@endtemplate}
/// {@macro pulumi_index_worker_worker_args_doc}
class WorkerArgs {
  /// Identifier.
  final pulumi.Input<String> accountId;
  /// Whether logpush is enabled for the Worker.
  final pulumi.Input<bool?>? logpush;
  /// Name of the Worker.
  final pulumi.Input<String> name;
  /// Observability settings for the Worker.
  final pulumi.Input<WorkerObservability?>? observability;
  /// Subdomain settings for the Worker.
  final pulumi.Input<WorkerSubdomain?>? subdomain;
  /// Tags associated with the Worker.
  final pulumi.Input<List<String>?>? tags;
  /// Other Workers that should consume logs from the Worker.
  final pulumi.Input<List<WorkerTailConsumer>?>? tailConsumers;

  /// Creates a new [WorkerArgs].
  /// [accountId] Identifier.
  /// [logpush] Whether logpush is enabled for the Worker.
  /// [name] Name of the Worker.
  /// [observability] Observability settings for the Worker.
  /// [subdomain] Subdomain settings for the Worker.
  /// [tags] Tags associated with the Worker.
  /// [tailConsumers] Other Workers that should consume logs from the Worker.
  const WorkerArgs({
    required this.accountId,
    this.logpush,
    required this.name,
    this.observability,
    this.subdomain,
    this.tags,
    this.tailConsumers,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': accountId,
      'logpush': ?logpush,
      'name': name,
      'observability': ?pulumi.Input.mapOptionalInputValue<WorkerObservability, Map<String, dynamic>>(observability, (value) => value.toMap()),
      'subdomain': ?pulumi.Input.mapOptionalInputValue<WorkerSubdomain, Map<String, dynamic>>(subdomain, (value) => value.toMap()),
      'tags': ?tags,
      'tailConsumers': ?pulumi.Input.mapOptionalInputValue<List<WorkerTailConsumer>, List<Map<String, dynamic>>>(tailConsumers, (value) => pulumi.Input.encodeList<WorkerTailConsumer, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory WorkerArgs.fromMap(Map<String, dynamic> map) {
    return WorkerArgs(
      accountId: pulumi.Input.fromValue(map['accountId'] as String),
      logpush: (() { final guardedValue = map['logpush']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      name: pulumi.Input.fromValue(map['name'] as String),
      observability: (() { final guardedValue = map['observability']; if (guardedValue == null) return null; return pulumi.Input.fromValue(WorkerObservability.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      subdomain: (() { final guardedValue = map['subdomain']; if (guardedValue == null) return null; return pulumi.Input.fromValue(WorkerSubdomain.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      tailConsumers: (() { final guardedValue = map['tailConsumers']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<WorkerTailConsumer>(guardedValue, (value) => WorkerTailConsumer.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
