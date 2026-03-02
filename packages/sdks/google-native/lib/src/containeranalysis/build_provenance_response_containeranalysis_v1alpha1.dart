// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'artifact_response_containeranalysis_v1alpha1.dart';
import 'command_response_containeranalysis_v1alpha1.dart';
import 'source_response_containeranalysis_v1alpha1.dart';

/// Provenance of a build. Contains all information needed to verify the full details about the build from source to completion.
class BuildProvenanceResponseContaineranalysisV1alpha1 {
  /// Special options applied to this build. This is a catch-all field where build providers can enter any desired additional details.
  final pulumi.Input<Map<String, String>> buildOptions;
  /// Version string of the builder at the time this build was executed.
  final pulumi.Input<String> builderVersion;
  /// Output of the build.
  final pulumi.Input<List<ArtifactResponseContaineranalysisV1alpha1>> builtArtifacts;
  /// Commands requested by the build.
  final pulumi.Input<List<CommandResponseContaineranalysisV1alpha1>> commands;
  /// Time at which the build was created.
  final pulumi.Input<String> createTime;
  /// E-mail address of the user who initiated this build. Note that this was the user's e-mail address at the time the build was initiated; this address may not represent the same end-user for all time.
  final pulumi.Input<String> creator;
  /// Time at which execution of the build was finished.
  final pulumi.Input<String> finishTime;
  /// Google Cloud Storage bucket where logs were written.
  final pulumi.Input<String> logsBucket;
  /// ID of the project.
  final pulumi.Input<String> project;
  /// Details of the Source input to the build.
  final pulumi.Input<SourceResponseContaineranalysisV1alpha1> sourceProvenance;
  /// Time at which execution of the build was started.
  final pulumi.Input<String> startTime;
  /// Trigger identifier if the build was triggered automatically; empty if not.
  final pulumi.Input<String> triggerId;

  /// Creates a new [BuildProvenanceResponseContaineranalysisV1alpha1].
  /// [buildOptions] Special options applied to this build. This is a catch-all field where build providers can enter any desired additional details.
  /// [builderVersion] Version string of the builder at the time this build was executed.
  /// [builtArtifacts] Output of the build.
  /// [commands] Commands requested by the build.
  /// [createTime] Time at which the build was created.
  /// [creator] E-mail address of the user who initiated this build. Note that this was the user's e-mail address at the time the build was initiated; this address may not represent the same end-user for all time.
  /// [finishTime] Time at which execution of the build was finished.
  /// [logsBucket] Google Cloud Storage bucket where logs were written.
  /// [project] ID of the project.
  /// [sourceProvenance] Details of the Source input to the build.
  /// [startTime] Time at which execution of the build was started.
  /// [triggerId] Trigger identifier if the build was triggered automatically; empty if not.
  BuildProvenanceResponseContaineranalysisV1alpha1({
    required this.buildOptions,
    required this.builderVersion,
    required this.builtArtifacts,
    required this.commands,
    required this.createTime,
    required this.creator,
    required this.finishTime,
    required this.logsBucket,
    required this.project,
    required this.sourceProvenance,
    required this.startTime,
    required this.triggerId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'buildOptions': buildOptions,
      'builderVersion': builderVersion,
      'builtArtifacts': pulumi.Input.mapInputValue<List<ArtifactResponseContaineranalysisV1alpha1>, List<Map<String, dynamic>>>(builtArtifacts, (value) => pulumi.Input.encodeList<ArtifactResponseContaineranalysisV1alpha1, Map<String, dynamic>>(value, (value) => value.toMap())),
      'commands': pulumi.Input.mapInputValue<List<CommandResponseContaineranalysisV1alpha1>, List<Map<String, dynamic>>>(commands, (value) => pulumi.Input.encodeList<CommandResponseContaineranalysisV1alpha1, Map<String, dynamic>>(value, (value) => value.toMap())),
      'createTime': createTime,
      'creator': creator,
      'finishTime': finishTime,
      'logsBucket': logsBucket,
      'project': project,
      'sourceProvenance': pulumi.Input.mapInputValue<SourceResponseContaineranalysisV1alpha1, Map<String, dynamic>>(sourceProvenance, (value) => value.toMap()),
      'startTime': startTime,
      'triggerId': triggerId,
    };
  }

  factory BuildProvenanceResponseContaineranalysisV1alpha1.fromMap(Map<String, dynamic> map) {
    return BuildProvenanceResponseContaineranalysisV1alpha1(
      buildOptions: ((map['buildOptions'] as Map).cast<String, String>()).input(),
      builderVersion: (map['builderVersion'] as String).input(),
      builtArtifacts: (pulumi.Input.decodeList<ArtifactResponseContaineranalysisV1alpha1>(map['builtArtifacts'], (value) => ArtifactResponseContaineranalysisV1alpha1.fromMap((value as Map).cast<String, dynamic>()))).input(),
      commands: (pulumi.Input.decodeList<CommandResponseContaineranalysisV1alpha1>(map['commands'], (value) => CommandResponseContaineranalysisV1alpha1.fromMap((value as Map).cast<String, dynamic>()))).input(),
      createTime: (map['createTime'] as String).input(),
      creator: (map['creator'] as String).input(),
      finishTime: (map['finishTime'] as String).input(),
      logsBucket: (map['logsBucket'] as String).input(),
      project: (map['project'] as String).input(),
      sourceProvenance: (SourceResponseContaineranalysisV1alpha1.fromMap((map['sourceProvenance'] as Map).cast<String, dynamic>())).input(),
      startTime: (map['startTime'] as String).input(),
      triggerId: (map['triggerId'] as String).input(),
    );
  }
}

