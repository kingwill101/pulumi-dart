// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_job_binary_authorization.dart';
import 'get_job_condition.dart';
import 'get_job_latest_created_execution.dart';
import 'get_job_template.dart';
import 'get_job_terminal_condition.dart';

/// Result data returned by getJob.
class GetJobResult {
  final Map<String, String> annotations;
  final List<GetJobBinaryAuthorization> binaryAuthorizations;
  final String client;
  final String clientVersion;
  final List<GetJobCondition> conditions;
  final String createTime;
  final String creator;
  final String deleteTime;
  final bool deletionProtection;
  final Map<String, String> effectiveAnnotations;
  final Map<String, String> effectiveLabels;
  final String etag;
  final int executionCount;
  final String expireTime;
  final String generation;

  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final Map<String, String> labels;
  final String lastModifier;
  final List<GetJobLatestCreatedExecution> latestCreatedExecutions;
  final String launchStage;
  final String? location;
  final String name;
  final String observedGeneration;
  final String? project;
  final Map<String, String> pulumiLabels;
  final bool reconciling;
  final String runExecutionToken;
  final String startExecutionToken;
  final List<GetJobTemplate> templates;
  final List<GetJobTerminalCondition> terminalConditions;
  final String uid;
  final String updateTime;

  /// Creates a new [GetJobResult].
  /// [annotations] Required.
  /// [binaryAuthorizations] Required.
  /// [client] Required.
  /// [clientVersion] Required.
  /// [conditions] Required.
  /// [createTime] Required.
  /// [creator] Required.
  /// [deleteTime] Required.
  /// [deletionProtection] Required.
  /// [effectiveAnnotations] Required.
  /// [effectiveLabels] Required.
  /// [etag] Required.
  /// [executionCount] Required.
  /// [expireTime] Required.
  /// [generation] Required.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [labels] Required.
  /// [lastModifier] Required.
  /// [latestCreatedExecutions] Required.
  /// [launchStage] Required.
  /// [location] Optional.
  /// [name] Required.
  /// [observedGeneration] Required.
  /// [project] Optional.
  /// [pulumiLabels] Required.
  /// [reconciling] Required.
  /// [runExecutionToken] Required.
  /// [startExecutionToken] Required.
  /// [templates] Required.
  /// [terminalConditions] Required.
  /// [uid] Required.
  /// [updateTime] Required.
  GetJobResult({
    required this.annotations,
    required this.binaryAuthorizations,
    required this.client,
    required this.clientVersion,
    required this.conditions,
    required this.createTime,
    required this.creator,
    required this.deleteTime,
    required this.deletionProtection,
    required this.effectiveAnnotations,
    required this.effectiveLabels,
    required this.etag,
    required this.executionCount,
    required this.expireTime,
    required this.generation,
    required this.id,
    required this.labels,
    required this.lastModifier,
    required this.latestCreatedExecutions,
    required this.launchStage,
    this.location,
    required this.name,
    required this.observedGeneration,
    this.project,
    required this.pulumiLabels,
    required this.reconciling,
    required this.runExecutionToken,
    required this.startExecutionToken,
    required this.templates,
    required this.terminalConditions,
    required this.uid,
    required this.updateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'annotations': annotations,
      'binaryAuthorizations':
          pulumi.Input.encodeList<
            GetJobBinaryAuthorization,
            Map<String, dynamic>
          >(binaryAuthorizations, (value) => value.toMap()),
      'client': client,
      'clientVersion': clientVersion,
      'conditions':
          pulumi.Input.encodeList<GetJobCondition, Map<String, dynamic>>(
            conditions,
            (value) => value.toMap(),
          ),
      'createTime': createTime,
      'creator': creator,
      'deleteTime': deleteTime,
      'deletionProtection': deletionProtection,
      'effectiveAnnotations': effectiveAnnotations,
      'effectiveLabels': effectiveLabels,
      'etag': etag,
      'executionCount': executionCount,
      'expireTime': expireTime,
      'generation': generation,
      'id': id,
      'labels': labels,
      'lastModifier': lastModifier,
      'latestCreatedExecutions':
          pulumi.Input.encodeList<
            GetJobLatestCreatedExecution,
            Map<String, dynamic>
          >(latestCreatedExecutions, (value) => value.toMap()),
      'launchStage': launchStage,
      'location': ?location,
      'name': name,
      'observedGeneration': observedGeneration,
      'project': ?project,
      'pulumiLabels': pulumiLabels,
      'reconciling': reconciling,
      'runExecutionToken': runExecutionToken,
      'startExecutionToken': startExecutionToken,
      'templates':
          pulumi.Input.encodeList<GetJobTemplate, Map<String, dynamic>>(
            templates,
            (value) => value.toMap(),
          ),
      'terminalConditions':
          pulumi.Input.encodeList<
            GetJobTerminalCondition,
            Map<String, dynamic>
          >(terminalConditions, (value) => value.toMap()),
      'uid': uid,
      'updateTime': updateTime,
    };
  }

  factory GetJobResult.fromMap(Map<String, dynamic> map) {
    return GetJobResult(
      annotations: (map['annotations'] as Map).cast<String, String>(),
      binaryAuthorizations: pulumi.Input.decodeList<GetJobBinaryAuthorization>(
        map['binaryAuthorizations']!,
        (value) => GetJobBinaryAuthorization.fromMap(
          (value as Map).cast<String, dynamic>(),
        ),
      ),
      client: map['client'] as String,
      clientVersion: map['clientVersion'] as String,
      conditions: pulumi.Input.decodeList<GetJobCondition>(
        map['conditions']!,
        (value) =>
            GetJobCondition.fromMap((value as Map).cast<String, dynamic>()),
      ),
      createTime: map['createTime'] as String,
      creator: map['creator'] as String,
      deleteTime: map['deleteTime'] as String,
      deletionProtection: map['deletionProtection'] as bool,
      effectiveAnnotations: (map['effectiveAnnotations'] as Map)
          .cast<String, String>(),
      effectiveLabels: (map['effectiveLabels'] as Map).cast<String, String>(),
      etag: map['etag'] as String,
      executionCount: map['executionCount'] as int,
      expireTime: map['expireTime'] as String,
      generation: map['generation'] as String,
      id: map['id'] as String,
      labels: (map['labels'] as Map).cast<String, String>(),
      lastModifier: map['lastModifier'] as String,
      latestCreatedExecutions:
          pulumi.Input.decodeList<GetJobLatestCreatedExecution>(
            map['latestCreatedExecutions']!,
            (value) => GetJobLatestCreatedExecution.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
      launchStage: map['launchStage'] as String,
      location: (() {
        final guardedValue = map['location'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      name: map['name'] as String,
      observedGeneration: map['observedGeneration'] as String,
      project: (() {
        final guardedValue = map['project'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      pulumiLabels: (map['pulumiLabels'] as Map).cast<String, String>(),
      reconciling: map['reconciling'] as bool,
      runExecutionToken: map['runExecutionToken'] as String,
      startExecutionToken: map['startExecutionToken'] as String,
      templates: pulumi.Input.decodeList<GetJobTemplate>(
        map['templates']!,
        (value) =>
            GetJobTemplate.fromMap((value as Map).cast<String, dynamic>()),
      ),
      terminalConditions: pulumi.Input.decodeList<GetJobTerminalCondition>(
        map['terminalConditions']!,
        (value) => GetJobTerminalCondition.fromMap(
          (value as Map).cast<String, dynamic>(),
        ),
      ),
      uid: map['uid'] as String,
      updateTime: map['updateTime'] as String,
    );
  }
}
