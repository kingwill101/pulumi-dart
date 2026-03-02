// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'artifact_response.dart';
import 'command_response.dart';
import 'source_response.dart';

/// Provenance of a build. Contains all information needed to verify the full details about the build from source to completion.
class BuildProvenanceResponse {
  /// Special options applied to this build. This is a catch-all field where build providers can enter any desired additional details.
  final pulumi.Input<Map<String, String>> buildOptions;
  /// Version string of the builder at the time this build was executed.
  final pulumi.Input<String> builderVersion;
  /// Output of the build.
  final pulumi.Input<List<ArtifactResponse>> builtArtifacts;
  /// Commands requested by the build.
  final pulumi.Input<List<CommandResponse>> commands;
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
  final pulumi.Input<SourceResponse> sourceProvenance;
  /// Time at which execution of the build was started.
  final pulumi.Input<String> startTime;
  /// Trigger identifier if the build was triggered automatically; empty if not.
  final pulumi.Input<String> triggerId;

  /// Creates a new [BuildProvenanceResponse].
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
  BuildProvenanceResponse({
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
      'builtArtifacts': pulumi.Input.mapInputValue<List<ArtifactResponse>, List<Map<String, dynamic>>>(builtArtifacts, (value) => pulumi.Input.encodeList<ArtifactResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'commands': pulumi.Input.mapInputValue<List<CommandResponse>, List<Map<String, dynamic>>>(commands, (value) => pulumi.Input.encodeList<CommandResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'createTime': createTime,
      'creator': creator,
      'endTime': endTime,
      'logsUri': logsUri,
      'project': project,
      'sourceProvenance': pulumi.Input.mapInputValue<SourceResponse, Map<String, dynamic>>(sourceProvenance, (value) => value.toMap()),
      'startTime': startTime,
      'triggerId': triggerId,
    };
  }

  factory BuildProvenanceResponse.fromMap(Map<String, dynamic> map) {
    return BuildProvenanceResponse(
      buildOptions: ((map['buildOptions'] as Map).cast<String, String>()).input(),
      builderVersion: (map['builderVersion'] as String).input(),
      builtArtifacts: (pulumi.Input.decodeList<ArtifactResponse>(map['builtArtifacts'], (value) => ArtifactResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      commands: (pulumi.Input.decodeList<CommandResponse>(map['commands'], (value) => CommandResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      createTime: (map['createTime'] as String).input(),
      creator: (map['creator'] as String).input(),
      endTime: (map['endTime'] as String).input(),
      logsUri: (map['logsUri'] as String).input(),
      project: (map['project'] as String).input(),
      sourceProvenance: (SourceResponse.fromMap((map['sourceProvenance'] as Map).cast<String, dynamic>())).input(),
      startTime: (map['startTime'] as String).input(),
      triggerId: (map['triggerId'] as String).input(),
    );
  }
}

