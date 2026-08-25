// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_job_binary_authorization.dart';
import 'get_job_condition.dart';
import 'get_job_latest_created_execution.dart';
import 'get_job_template.dart';
import 'get_job_terminal_condition.dart';

/// Result data returned by getJob.
class GetJobResult {
  final Map<String, String>? annotations;
  final List<GetJobBinaryAuthorization>? binaryAuthorizations;
  final String? client;
  final String? clientVersion;
  final List<GetJobCondition>? conditions;
  final String? createTime;
  final String? creator;
  final String? deleteTime;
  final String? deletionPolicy;
  final bool? deletionProtection;
  final Map<String, String>? effectiveAnnotations;
  final Map<String, String>? effectiveLabels;
  final String? etag;
  final int? executionCount;
  final String? expireTime;
  final String? generation;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final Map<String, String>? labels;
  final String? lastModifier;
  final List<GetJobLatestCreatedExecution>? latestCreatedExecutions;
  final String? launchStage;
  final String? location;
  final String? name;
  final String? observedGeneration;
  final String? project;
  final Map<String, String>? pulumiLabels;
  final bool? reconciling;
  final String? runExecutionToken;
  final String? startExecutionToken;
  final Map<String, String>? tags;
  final List<GetJobTemplate>? templates;
  final List<GetJobTerminalCondition>? terminalConditions;
  final String? uid;
  final String? updateTime;

  /// Creates a new [GetJobResult].
  /// [annotations] Optional.
  /// [binaryAuthorizations] Optional.
  /// [client] Optional.
  /// [clientVersion] Optional.
  /// [conditions] Optional.
  /// [createTime] Optional.
  /// [creator] Optional.
  /// [deleteTime] Optional.
  /// [deletionPolicy] Optional.
  /// [deletionProtection] Optional.
  /// [effectiveAnnotations] Optional.
  /// [effectiveLabels] Optional.
  /// [etag] Optional.
  /// [executionCount] Optional.
  /// [expireTime] Optional.
  /// [generation] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [labels] Optional.
  /// [lastModifier] Optional.
  /// [latestCreatedExecutions] Optional.
  /// [launchStage] Optional.
  /// [location] Optional.
  /// [name] Optional.
  /// [observedGeneration] Optional.
  /// [project] Optional.
  /// [pulumiLabels] Optional.
  /// [reconciling] Optional.
  /// [runExecutionToken] Optional.
  /// [startExecutionToken] Optional.
  /// [tags] Optional.
  /// [templates] Optional.
  /// [terminalConditions] Optional.
  /// [uid] Optional.
  /// [updateTime] Optional.
  const GetJobResult({
    this.annotations,
    this.binaryAuthorizations,
    this.client,
    this.clientVersion,
    this.conditions,
    this.createTime,
    this.creator,
    this.deleteTime,
    this.deletionPolicy,
    this.deletionProtection,
    this.effectiveAnnotations,
    this.effectiveLabels,
    this.etag,
    this.executionCount,
    this.expireTime,
    this.generation,
    this.id,
    this.labels,
    this.lastModifier,
    this.latestCreatedExecutions,
    this.launchStage,
    this.location,
    this.name,
    this.observedGeneration,
    this.project,
    this.pulumiLabels,
    this.reconciling,
    this.runExecutionToken,
    this.startExecutionToken,
    this.tags,
    this.templates,
    this.terminalConditions,
    this.uid,
    this.updateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'annotations': ?annotations,
      'binaryAuthorizations': ?(() { final guardedValue = binaryAuthorizations; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetJobBinaryAuthorization, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'client': ?client,
      'clientVersion': ?clientVersion,
      'conditions': ?(() { final guardedValue = conditions; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetJobCondition, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'createTime': ?createTime,
      'creator': ?creator,
      'deleteTime': ?deleteTime,
      'deletionPolicy': ?deletionPolicy,
      'deletionProtection': ?deletionProtection,
      'effectiveAnnotations': ?effectiveAnnotations,
      'effectiveLabels': ?effectiveLabels,
      'etag': ?etag,
      'executionCount': ?executionCount,
      'expireTime': ?expireTime,
      'generation': ?generation,
      'id': ?id,
      'labels': ?labels,
      'lastModifier': ?lastModifier,
      'latestCreatedExecutions': ?(() { final guardedValue = latestCreatedExecutions; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetJobLatestCreatedExecution, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'launchStage': ?launchStage,
      'location': ?location,
      'name': ?name,
      'observedGeneration': ?observedGeneration,
      'project': ?project,
      'pulumiLabels': ?pulumiLabels,
      'reconciling': ?reconciling,
      'runExecutionToken': ?runExecutionToken,
      'startExecutionToken': ?startExecutionToken,
      'tags': ?tags,
      'templates': ?(() { final guardedValue = templates; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetJobTemplate, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'terminalConditions': ?(() { final guardedValue = terminalConditions; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetJobTerminalCondition, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'uid': ?uid,
      'updateTime': ?updateTime,
    };
  }

  factory GetJobResult.fromMap(Map<String, dynamic> map) {
    return GetJobResult(
      annotations: (() { final guardedValue = map['annotations']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      binaryAuthorizations: (() { final guardedValue = map['binaryAuthorizations']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetJobBinaryAuthorization>(guardedValue, (value) => GetJobBinaryAuthorization.fromMap((value as Map).cast<String, dynamic>())); })(),
      client: (() { final guardedValue = map['client']; if (guardedValue == null) return null; return guardedValue as String; })(),
      clientVersion: (() { final guardedValue = map['clientVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      conditions: (() { final guardedValue = map['conditions']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetJobCondition>(guardedValue, (value) => GetJobCondition.fromMap((value as Map).cast<String, dynamic>())); })(),
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      creator: (() { final guardedValue = map['creator']; if (guardedValue == null) return null; return guardedValue as String; })(),
      deleteTime: (() { final guardedValue = map['deleteTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return guardedValue as String; })(),
      deletionProtection: (() { final guardedValue = map['deletionProtection']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      effectiveAnnotations: (() { final guardedValue = map['effectiveAnnotations']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      effectiveLabels: (() { final guardedValue = map['effectiveLabels']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      etag: (() { final guardedValue = map['etag']; if (guardedValue == null) return null; return guardedValue as String; })(),
      executionCount: (() { final guardedValue = map['executionCount']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      expireTime: (() { final guardedValue = map['expireTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      generation: (() { final guardedValue = map['generation']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      lastModifier: (() { final guardedValue = map['lastModifier']; if (guardedValue == null) return null; return guardedValue as String; })(),
      latestCreatedExecutions: (() { final guardedValue = map['latestCreatedExecutions']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetJobLatestCreatedExecution>(guardedValue, (value) => GetJobLatestCreatedExecution.fromMap((value as Map).cast<String, dynamic>())); })(),
      launchStage: (() { final guardedValue = map['launchStage']; if (guardedValue == null) return null; return guardedValue as String; })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      observedGeneration: (() { final guardedValue = map['observedGeneration']; if (guardedValue == null) return null; return guardedValue as String; })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return guardedValue as String; })(),
      pulumiLabels: (() { final guardedValue = map['pulumiLabels']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      reconciling: (() { final guardedValue = map['reconciling']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      runExecutionToken: (() { final guardedValue = map['runExecutionToken']; if (guardedValue == null) return null; return guardedValue as String; })(),
      startExecutionToken: (() { final guardedValue = map['startExecutionToken']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      templates: (() { final guardedValue = map['templates']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetJobTemplate>(guardedValue, (value) => GetJobTemplate.fromMap((value as Map).cast<String, dynamic>())); })(),
      terminalConditions: (() { final guardedValue = map['terminalConditions']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetJobTerminalCondition>(guardedValue, (value) => GetJobTerminalCondition.fromMap((value as Map).cast<String, dynamic>())); })(),
      uid: (() { final guardedValue = map['uid']; if (guardedValue == null) return null; return guardedValue as String; })(),
      updateTime: (() { final guardedValue = map['updateTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
