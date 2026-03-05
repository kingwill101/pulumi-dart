// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'artifact_response_containeranalysis_v1beta1.dart';
import 'command_response_containeranalysis_v1beta1.dart';
import 'source_response_containeranalysis_v1beta1.dart';

/// Provenance of a build. Contains all information needed to verify the full details about the build from source to completion.
class BuildProvenanceResponseContaineranalysisV1beta1 {
  /// Special options applied to this build. This is a catch-all field where build providers can enter any desired additional details.
  final pulumi.Input<Map<String, String>> buildOptions;
  /// Version string of the builder at the time this build was executed.
  final pulumi.Input<String> builderVersion;
  /// Output of the build.
  final pulumi.Input<List<ArtifactResponseContaineranalysisV1beta1>> builtArtifacts;
  /// Commands requested by the build.
  final pulumi.Input<List<CommandResponseContaineranalysisV1beta1>> commands;
  /// Time at which the build was created.
  final pulumi.Input<String> createTime;
  /// E-mail address of the user who initiated this build. Note that this was the user's e-mail address at the time the build was initiated; this address may not represent the same end-user for all time.
  final pulumi.Input<String> creator;
  /// Time at which execution of the build was finished.
  final pulumi.Input<String> endTime;
  /// URI where any logs for this provenance were written.
  final pulumi.Input<String> logsUri;
  /// ID of the project.
  final pulumi.Input<String> project;
  /// Details of the Source input to the build.
  final pulumi.Input<SourceResponseContaineranalysisV1beta1> sourceProvenance;
  /// Time at which execution of the build was started.
  final pulumi.Input<String> startTime;
  /// Trigger identifier if the build was triggered automatically; empty if not.
  final pulumi.Input<String> triggerId;

  /// Creates a new [BuildProvenanceResponseContaineranalysisV1beta1].
  /// [buildOptions] Special options applied to this build. This is a catch-all field where build providers can enter any desired additional details.
  /// [builderVersion] Version string of the builder at the time this build was executed.
  /// [builtArtifacts] Output of the build.
  /// [commands] Commands requested by the build.
  /// [createTime] Time at which the build was created.
  /// [creator] E-mail address of the user who initiated this build. Note that this was the user's e-mail address at the time the build was initiated; this address may not represent the same end-user for all time.
  /// [endTime] Time at which execution of the build was finished.
  /// [logsUri] URI where any logs for this provenance were written.
  /// [project] ID of the project.
  /// [sourceProvenance] Details of the Source input to the build.
  /// [startTime] Time at which execution of the build was started.
  /// [triggerId] Trigger identifier if the build was triggered automatically; empty if not.
  BuildProvenanceResponseContaineranalysisV1beta1({
    required this.buildOptions,
    required this.builderVersion,
    required this.builtArtifacts,
    required this.commands,
    required this.createTime,
    required this.creator,
    required this.endTime,
    required this.logsUri,
    required this.project,
    required this.sourceProvenance,
    required this.startTime,
    required this.triggerId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'buildOptions': buildOptions,
      'builderVersion': builderVersion,
      'builtArtifacts': pulumi.Input.mapInputValue<List<ArtifactResponseContaineranalysisV1beta1>, List<Map<String, dynamic>>>(builtArtifacts, (value) => pulumi.Input.encodeList<ArtifactResponseContaineranalysisV1beta1, Map<String, dynamic>>(value, (value) => value.toMap())),
      'commands': pulumi.Input.mapInputValue<List<CommandResponseContaineranalysisV1beta1>, List<Map<String, dynamic>>>(commands, (value) => pulumi.Input.encodeList<CommandResponseContaineranalysisV1beta1, Map<String, dynamic>>(value, (value) => value.toMap())),
      'createTime': createTime,
      'creator': creator,
      'endTime': endTime,
      'logsUri': logsUri,
      'project': project,
      'sourceProvenance': pulumi.Input.mapInputValue<SourceResponseContaineranalysisV1beta1, Map<String, dynamic>>(sourceProvenance, (value) => value.toMap()),
      'startTime': startTime,
      'triggerId': triggerId,
    };
  }

  factory BuildProvenanceResponseContaineranalysisV1beta1.fromMap(Map<String, dynamic> map) {
    return BuildProvenanceResponseContaineranalysisV1beta1(
      buildOptions: pulumi.Input.fromValue((map['buildOptions'] as Map).cast<String, String>()),
      builderVersion: pulumi.Input.fromValue(map['builderVersion'] as String),
      builtArtifacts: pulumi.Input.fromValue(pulumi.Input.decodeList<ArtifactResponseContaineranalysisV1beta1>(map['builtArtifacts']!, (value) => ArtifactResponseContaineranalysisV1beta1.fromMap((value as Map).cast<String, dynamic>()))),
      commands: pulumi.Input.fromValue(pulumi.Input.decodeList<CommandResponseContaineranalysisV1beta1>(map['commands']!, (value) => CommandResponseContaineranalysisV1beta1.fromMap((value as Map).cast<String, dynamic>()))),
      createTime: pulumi.Input.fromValue(map['createTime'] as String),
      creator: pulumi.Input.fromValue(map['creator'] as String),
      endTime: pulumi.Input.fromValue(map['endTime'] as String),
      logsUri: pulumi.Input.fromValue(map['logsUri'] as String),
      project: pulumi.Input.fromValue(map['project'] as String),
      sourceProvenance: pulumi.Input.fromValue(SourceResponseContaineranalysisV1beta1.fromMap((map['sourceProvenance']! as Map).cast<String, dynamic>())),
      startTime: pulumi.Input.fromValue(map['startTime'] as String),
      triggerId: pulumi.Input.fromValue(map['triggerId'] as String),
    );
  }
}

