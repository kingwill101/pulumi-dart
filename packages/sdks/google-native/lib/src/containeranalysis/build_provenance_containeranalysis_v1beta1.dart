// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'artifact_containeranalysis_v1beta1.dart';
import 'command_containeranalysis_v1beta1.dart';
import 'source_containeranalysis_v1beta1.dart';

/// Provenance of a build. Contains all information needed to verify the full details about the build from source to completion.
class BuildProvenanceContaineranalysisV1beta1 {
  /// Special options applied to this build. This is a catch-all field where build providers can enter any desired additional details.
  final pulumi.Input<Map<String, String>>? buildOptions;
  /// Version string of the builder at the time this build was executed.
  final pulumi.Input<String>? builderVersion;
  /// Output of the build.
  final pulumi.Input<List<ArtifactContaineranalysisV1beta1>>? builtArtifacts;
  /// Commands requested by the build.
  final pulumi.Input<List<CommandContaineranalysisV1beta1>>? commands;
  /// Time at which the build was created.
  final pulumi.Input<String>? createTime;
  /// E-mail address of the user who initiated this build. Note that this was the user's e-mail address at the time the build was initiated; this address may not represent the same end-user for all time.
  final pulumi.Input<String>? creator;
  /// Time at which execution of the build was finished.
  final pulumi.Input<String>? endTime;
  /// Unique identifier of the build.
  final pulumi.Input<String> id;
  /// URI where any logs for this provenance were written.
  final pulumi.Input<String>? logsUri;
  /// ID of the project.
  final pulumi.Input<String>? project;
  /// Details of the Source input to the build.
  final pulumi.Input<SourceContaineranalysisV1beta1>? sourceProvenance;
  /// Time at which execution of the build was started.
  final pulumi.Input<String>? startTime;
  /// Trigger identifier if the build was triggered automatically; empty if not.
  final pulumi.Input<String>? triggerId;

  /// Creates a new [BuildProvenanceContaineranalysisV1beta1].
  /// [buildOptions] Special options applied to this build. This is a catch-all field where build providers can enter any desired additional details.
  /// [builderVersion] Version string of the builder at the time this build was executed.
  /// [builtArtifacts] Output of the build.
  /// [commands] Commands requested by the build.
  /// [createTime] Time at which the build was created.
  /// [creator] E-mail address of the user who initiated this build. Note that this was the user's e-mail address at the time the build was initiated; this address may not represent the same end-user for all time.
  /// [endTime] Time at which execution of the build was finished.
  /// [id] Unique identifier of the build.
  /// [logsUri] URI where any logs for this provenance were written.
  /// [project] ID of the project.
  /// [sourceProvenance] Details of the Source input to the build.
  /// [startTime] Time at which execution of the build was started.
  /// [triggerId] Trigger identifier if the build was triggered automatically; empty if not.
  BuildProvenanceContaineranalysisV1beta1({
    this.buildOptions,
    this.builderVersion,
    this.builtArtifacts,
    this.commands,
    this.createTime,
    this.creator,
    this.endTime,
    required this.id,
    this.logsUri,
    this.project,
    this.sourceProvenance,
    this.startTime,
    this.triggerId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'buildOptions': ?buildOptions,
      'builderVersion': ?builderVersion,
      'builtArtifacts': ?pulumi.Input.mapOptionalInputValue<List<ArtifactContaineranalysisV1beta1>, List<Map<String, dynamic>>>(builtArtifacts, (value) => pulumi.Input.encodeList<ArtifactContaineranalysisV1beta1, Map<String, dynamic>>(value, (value) => value.toMap())),
      'commands': ?pulumi.Input.mapOptionalInputValue<List<CommandContaineranalysisV1beta1>, List<Map<String, dynamic>>>(commands, (value) => pulumi.Input.encodeList<CommandContaineranalysisV1beta1, Map<String, dynamic>>(value, (value) => value.toMap())),
      'createTime': ?createTime,
      'creator': ?creator,
      'endTime': ?endTime,
      'id': id,
      'logsUri': ?logsUri,
      'project': ?project,
      'sourceProvenance': ?pulumi.Input.mapOptionalInputValue<SourceContaineranalysisV1beta1, Map<String, dynamic>>(sourceProvenance, (value) => value.toMap()),
      'startTime': ?startTime,
      'triggerId': ?triggerId,
    };
  }

  factory BuildProvenanceContaineranalysisV1beta1.fromMap(Map<String, dynamic> map) {
    return BuildProvenanceContaineranalysisV1beta1(
      buildOptions: map['buildOptions'] == null ? null : ((map['buildOptions']! as Map).cast<String, String>()).input(),
      builderVersion: map['builderVersion'] == null ? null : (map['builderVersion']! as String).input(),
      builtArtifacts: map['builtArtifacts'] == null ? null : (pulumi.Input.decodeList<ArtifactContaineranalysisV1beta1>(map['builtArtifacts']!, (value) => ArtifactContaineranalysisV1beta1.fromMap((value as Map).cast<String, dynamic>()))).input(),
      commands: map['commands'] == null ? null : (pulumi.Input.decodeList<CommandContaineranalysisV1beta1>(map['commands']!, (value) => CommandContaineranalysisV1beta1.fromMap((value as Map).cast<String, dynamic>()))).input(),
      createTime: map['createTime'] == null ? null : (map['createTime']! as String).input(),
      creator: map['creator'] == null ? null : (map['creator']! as String).input(),
      endTime: map['endTime'] == null ? null : (map['endTime']! as String).input(),
      id: (map['id'] as String).input(),
      logsUri: map['logsUri'] == null ? null : (map['logsUri']! as String).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
      sourceProvenance: map['sourceProvenance'] == null ? null : (SourceContaineranalysisV1beta1.fromMap((map['sourceProvenance']! as Map).cast<String, dynamic>())).input(),
      startTime: map['startTime'] == null ? null : (map['startTime']! as String).input(),
      triggerId: map['triggerId'] == null ? null : (map['triggerId']! as String).input(),
    );
  }
}

