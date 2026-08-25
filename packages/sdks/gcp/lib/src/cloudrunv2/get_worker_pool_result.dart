// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_worker_pool_binary_authorization.dart';
import 'get_worker_pool_condition.dart';
import 'get_worker_pool_instance_split.dart';
import 'get_worker_pool_instance_split_status.dart';
import 'get_worker_pool_scaling.dart';
import 'get_worker_pool_template.dart';
import 'get_worker_pool_terminal_condition.dart';

/// Result data returned by getWorkerPool.
class GetWorkerPoolResult {
  final Map<String, String>? annotations;
  final List<GetWorkerPoolBinaryAuthorization>? binaryAuthorizations;
  final String? client;
  final String? clientVersion;
  final List<GetWorkerPoolCondition>? conditions;
  final String? createTime;
  final String? creator;
  final List<String>? customAudiences;
  final String? deleteTime;
  final String? deletionPolicy;
  final bool? deletionProtection;
  final String? description;
  final Map<String, String>? effectiveAnnotations;
  final Map<String, String>? effectiveLabels;
  final String? etag;
  final String? expireTime;
  final String? generation;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final List<GetWorkerPoolInstanceSplitStatus>? instanceSplitStatuses;
  final List<GetWorkerPoolInstanceSplit>? instanceSplits;
  final Map<String, String>? labels;
  final String? lastModifier;
  final String? latestCreatedRevision;
  final String? latestReadyRevision;
  final String? launchStage;
  final String? location;
  final String? name;
  final String? observedGeneration;
  final String? project;
  final Map<String, String>? pulumiLabels;
  final bool? reconciling;
  final List<GetWorkerPoolScaling>? scalings;
  final List<GetWorkerPoolTemplate>? templates;
  final List<GetWorkerPoolTerminalCondition>? terminalConditions;
  final String? uid;
  final String? updateTime;

  /// Creates a new [GetWorkerPoolResult].
  /// [annotations] Optional.
  /// [binaryAuthorizations] Optional.
  /// [client] Optional.
  /// [clientVersion] Optional.
  /// [conditions] Optional.
  /// [createTime] Optional.
  /// [creator] Optional.
  /// [customAudiences] Optional.
  /// [deleteTime] Optional.
  /// [deletionPolicy] Optional.
  /// [deletionProtection] Optional.
  /// [description] Optional.
  /// [effectiveAnnotations] Optional.
  /// [effectiveLabels] Optional.
  /// [etag] Optional.
  /// [expireTime] Optional.
  /// [generation] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [instanceSplitStatuses] Optional.
  /// [instanceSplits] Optional.
  /// [labels] Optional.
  /// [lastModifier] Optional.
  /// [latestCreatedRevision] Optional.
  /// [latestReadyRevision] Optional.
  /// [launchStage] Optional.
  /// [location] Optional.
  /// [name] Optional.
  /// [observedGeneration] Optional.
  /// [project] Optional.
  /// [pulumiLabels] Optional.
  /// [reconciling] Optional.
  /// [scalings] Optional.
  /// [templates] Optional.
  /// [terminalConditions] Optional.
  /// [uid] Optional.
  /// [updateTime] Optional.
  const GetWorkerPoolResult({
    this.annotations,
    this.binaryAuthorizations,
    this.client,
    this.clientVersion,
    this.conditions,
    this.createTime,
    this.creator,
    this.customAudiences,
    this.deleteTime,
    this.deletionPolicy,
    this.deletionProtection,
    this.description,
    this.effectiveAnnotations,
    this.effectiveLabels,
    this.etag,
    this.expireTime,
    this.generation,
    this.id,
    this.instanceSplitStatuses,
    this.instanceSplits,
    this.labels,
    this.lastModifier,
    this.latestCreatedRevision,
    this.latestReadyRevision,
    this.launchStage,
    this.location,
    this.name,
    this.observedGeneration,
    this.project,
    this.pulumiLabels,
    this.reconciling,
    this.scalings,
    this.templates,
    this.terminalConditions,
    this.uid,
    this.updateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'annotations': ?annotations,
      'binaryAuthorizations': ?(() { final guardedValue = binaryAuthorizations; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetWorkerPoolBinaryAuthorization, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'client': ?client,
      'clientVersion': ?clientVersion,
      'conditions': ?(() { final guardedValue = conditions; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetWorkerPoolCondition, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'createTime': ?createTime,
      'creator': ?creator,
      'customAudiences': ?customAudiences,
      'deleteTime': ?deleteTime,
      'deletionPolicy': ?deletionPolicy,
      'deletionProtection': ?deletionProtection,
      'description': ?description,
      'effectiveAnnotations': ?effectiveAnnotations,
      'effectiveLabels': ?effectiveLabels,
      'etag': ?etag,
      'expireTime': ?expireTime,
      'generation': ?generation,
      'id': ?id,
      'instanceSplitStatuses': ?(() { final guardedValue = instanceSplitStatuses; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetWorkerPoolInstanceSplitStatus, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'instanceSplits': ?(() { final guardedValue = instanceSplits; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetWorkerPoolInstanceSplit, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'labels': ?labels,
      'lastModifier': ?lastModifier,
      'latestCreatedRevision': ?latestCreatedRevision,
      'latestReadyRevision': ?latestReadyRevision,
      'launchStage': ?launchStage,
      'location': ?location,
      'name': ?name,
      'observedGeneration': ?observedGeneration,
      'project': ?project,
      'pulumiLabels': ?pulumiLabels,
      'reconciling': ?reconciling,
      'scalings': ?(() { final guardedValue = scalings; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetWorkerPoolScaling, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'templates': ?(() { final guardedValue = templates; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetWorkerPoolTemplate, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'terminalConditions': ?(() { final guardedValue = terminalConditions; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetWorkerPoolTerminalCondition, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'uid': ?uid,
      'updateTime': ?updateTime,
    };
  }

  factory GetWorkerPoolResult.fromMap(Map<String, dynamic> map) {
    return GetWorkerPoolResult(
      annotations: (() { final guardedValue = map['annotations']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      binaryAuthorizations: (() { final guardedValue = map['binaryAuthorizations']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetWorkerPoolBinaryAuthorization>(guardedValue, (value) => GetWorkerPoolBinaryAuthorization.fromMap((value as Map).cast<String, dynamic>())); })(),
      client: (() { final guardedValue = map['client']; if (guardedValue == null) return null; return guardedValue as String; })(),
      clientVersion: (() { final guardedValue = map['clientVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      conditions: (() { final guardedValue = map['conditions']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetWorkerPoolCondition>(guardedValue, (value) => GetWorkerPoolCondition.fromMap((value as Map).cast<String, dynamic>())); })(),
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      creator: (() { final guardedValue = map['creator']; if (guardedValue == null) return null; return guardedValue as String; })(),
      customAudiences: (() { final guardedValue = map['customAudiences']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      deleteTime: (() { final guardedValue = map['deleteTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return guardedValue as String; })(),
      deletionProtection: (() { final guardedValue = map['deletionProtection']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      effectiveAnnotations: (() { final guardedValue = map['effectiveAnnotations']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      effectiveLabels: (() { final guardedValue = map['effectiveLabels']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      etag: (() { final guardedValue = map['etag']; if (guardedValue == null) return null; return guardedValue as String; })(),
      expireTime: (() { final guardedValue = map['expireTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      generation: (() { final guardedValue = map['generation']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      instanceSplitStatuses: (() { final guardedValue = map['instanceSplitStatuses']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetWorkerPoolInstanceSplitStatus>(guardedValue, (value) => GetWorkerPoolInstanceSplitStatus.fromMap((value as Map).cast<String, dynamic>())); })(),
      instanceSplits: (() { final guardedValue = map['instanceSplits']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetWorkerPoolInstanceSplit>(guardedValue, (value) => GetWorkerPoolInstanceSplit.fromMap((value as Map).cast<String, dynamic>())); })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      lastModifier: (() { final guardedValue = map['lastModifier']; if (guardedValue == null) return null; return guardedValue as String; })(),
      latestCreatedRevision: (() { final guardedValue = map['latestCreatedRevision']; if (guardedValue == null) return null; return guardedValue as String; })(),
      latestReadyRevision: (() { final guardedValue = map['latestReadyRevision']; if (guardedValue == null) return null; return guardedValue as String; })(),
      launchStage: (() { final guardedValue = map['launchStage']; if (guardedValue == null) return null; return guardedValue as String; })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      observedGeneration: (() { final guardedValue = map['observedGeneration']; if (guardedValue == null) return null; return guardedValue as String; })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return guardedValue as String; })(),
      pulumiLabels: (() { final guardedValue = map['pulumiLabels']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      reconciling: (() { final guardedValue = map['reconciling']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      scalings: (() { final guardedValue = map['scalings']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetWorkerPoolScaling>(guardedValue, (value) => GetWorkerPoolScaling.fromMap((value as Map).cast<String, dynamic>())); })(),
      templates: (() { final guardedValue = map['templates']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetWorkerPoolTemplate>(guardedValue, (value) => GetWorkerPoolTemplate.fromMap((value as Map).cast<String, dynamic>())); })(),
      terminalConditions: (() { final guardedValue = map['terminalConditions']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetWorkerPoolTerminalCondition>(guardedValue, (value) => GetWorkerPoolTerminalCondition.fromMap((value as Map).cast<String, dynamic>())); })(),
      uid: (() { final guardedValue = map['uid']; if (guardedValue == null) return null; return guardedValue as String; })(),
      updateTime: (() { final guardedValue = map['updateTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
