// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_workers_result_observability.dart';
import 'get_workers_result_references.dart';
import 'get_workers_result_subdomain.dart';
import 'get_workers_result_tail_consumer.dart';

class GetWorkersResult {
  /// When the Worker was created.
  final pulumi.Input<String> createdOn;
  /// When the Worker's most recent deployment was created. `null` if the Worker has never been deployed.
  final pulumi.Input<String> deployedOn;
  /// Immutable ID of the Worker.
  final pulumi.Input<String> id;
  /// Whether logpush is enabled for the Worker.
  final pulumi.Input<bool> logpush;
  /// Name of the Worker.
  final pulumi.Input<String> name;
  /// Observability settings for the Worker.
  final pulumi.Input<GetWorkersResultObservability> observability;
  /// Other resources that reference the Worker and depend on it existing.
  final pulumi.Input<GetWorkersResultReferences> references;
  /// Subdomain settings for the Worker.
  final pulumi.Input<GetWorkersResultSubdomain> subdomain;
  /// Tags associated with the Worker.
  final pulumi.Input<List<String>> tags;
  /// Other Workers that should consume logs from the Worker.
  final pulumi.Input<List<GetWorkersResultTailConsumer>> tailConsumers;
  /// When the Worker was most recently updated.
  final pulumi.Input<String> updatedOn;

  /// Creates a new [GetWorkersResult].
  /// [createdOn] When the Worker was created.
  /// [deployedOn] When the Worker's most recent deployment was created. `null` if the Worker has never been deployed.
  /// [id] Immutable ID of the Worker.
  /// [logpush] Whether logpush is enabled for the Worker.
  /// [name] Name of the Worker.
  /// [observability] Observability settings for the Worker.
  /// [references] Other resources that reference the Worker and depend on it existing.
  /// [subdomain] Subdomain settings for the Worker.
  /// [tags] Tags associated with the Worker.
  /// [tailConsumers] Other Workers that should consume logs from the Worker.
  /// [updatedOn] When the Worker was most recently updated.
  const GetWorkersResult({
    required this.createdOn,
    required this.deployedOn,
    required this.id,
    required this.logpush,
    required this.name,
    required this.observability,
    required this.references,
    required this.subdomain,
    required this.tags,
    required this.tailConsumers,
    required this.updatedOn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createdOn': createdOn,
      'deployedOn': deployedOn,
      'id': id,
      'logpush': logpush,
      'name': name,
      'observability': pulumi.Input.mapInputValue<GetWorkersResultObservability, Map<String, dynamic>>(observability, (value) => value.toMap()),
      'references': pulumi.Input.mapInputValue<GetWorkersResultReferences, Map<String, dynamic>>(references, (value) => value.toMap()),
      'subdomain': pulumi.Input.mapInputValue<GetWorkersResultSubdomain, Map<String, dynamic>>(subdomain, (value) => value.toMap()),
      'tags': tags,
      'tailConsumers': pulumi.Input.mapInputValue<List<GetWorkersResultTailConsumer>, List<Map<String, dynamic>>>(tailConsumers, (value) => pulumi.Input.encodeList<GetWorkersResultTailConsumer, Map<String, dynamic>>(value, (value) => value.toMap())),
      'updatedOn': updatedOn,
    };
  }

  factory GetWorkersResult.fromMap(Map<String, dynamic> map) {
    return GetWorkersResult(
      createdOn: pulumi.Input.fromValue(map['createdOn'] as String),
      deployedOn: pulumi.Input.fromValue(map['deployedOn'] as String),
      id: pulumi.Input.fromValue(map['id'] as String),
      logpush: pulumi.Input.fromValue(map['logpush'] as bool),
      name: pulumi.Input.fromValue(map['name'] as String),
      observability: pulumi.Input.fromValue(GetWorkersResultObservability.fromMap((map['observability']! as Map).cast<String, dynamic>())),
      references: pulumi.Input.fromValue(GetWorkersResultReferences.fromMap((map['references']! as Map).cast<String, dynamic>())),
      subdomain: pulumi.Input.fromValue(GetWorkersResultSubdomain.fromMap((map['subdomain']! as Map).cast<String, dynamic>())),
      tags: pulumi.Input.fromValue((map['tags'] as List).cast<String>()),
      tailConsumers: pulumi.Input.fromValue(pulumi.Input.decodeList<GetWorkersResultTailConsumer>(map['tailConsumers']!, (value) => GetWorkersResultTailConsumer.fromMap((value as Map).cast<String, dynamic>()))),
      updatedOn: pulumi.Input.fromValue(map['updatedOn'] as String),
    );
  }
}
