// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'artifact_containeranalysis_v1alpha1.dart';
import 'command_containeranalysis_v1alpha1.dart';
import 'source_containeranalysis_v1alpha1.dart';

/// Provenance of a build. Contains all information needed to verify the full details about the build from source to completion.
class BuildProvenanceContaineranalysisV1alpha1 {
  /// Special options applied to this build. This is a catch-all field where build providers can enter any desired additional details.
  final pulumi.Input<Map<String, String>>? buildOptions;
  /// Version string of the builder at the time this build was executed.
  final pulumi.Input<String>? builderVersion;
  /// Output of the build.
  final pulumi.Input<List<ArtifactContaineranalysisV1alpha1>>? builtArtifacts;
  /// Commands requested by the build.
  final pulumi.Input<List<CommandContaineranalysisV1alpha1>>? commands;
  /// Time at which the build was created.
  final pulumi.Input<String>? createTime;
  /// E-mail address of the user who initiated this build. Note that this was the user's e-mail address at the time the build was initiated; this address may not represent the same end-user for all time.
  final pulumi.Input<String>? creator;
  /// Time at which execution of the build was finished.
  final pulumi.Input<String>? finishTime;
  /// Unique identifier of the build.
  final pulumi.Input<String>? id;
  /// Google Cloud Storage bucket where logs were written.
  final pulumi.Input<String>? logsBucket;
  /// ID of the project.
  final pulumi.Input<String>? project;
  /// Details of the Source input to the build.
  final pulumi.Input<SourceContaineranalysisV1alpha1>? sourceProvenance;
  /// Time at which execution of the build was started.
  final pulumi.Input<String>? startTime;
  /// Trigger identifier if the build was triggered automatically; empty if not.
  final pulumi.Input<String>? triggerId;

  /// Creates a new [BuildProvenanceContaineranalysisV1alpha1].
  /// [buildOptions] Special options applied to this build. This is a catch-all field where build providers can enter any desired additional details.
  /// [builderVersion] Version string of the builder at the time this build was executed.
  /// [builtArtifacts] Output of the build.
  /// [commands] Commands requested by the build.
  /// [createTime] Time at which the build was created.
  /// [creator] E-mail address of the user who initiated this build. Note that this was the user's e-mail address at the time the build was initiated; this address may not represent the same end-user for all time.
  /// [finishTime] Time at which execution of the build was finished.
  /// [id] Unique identifier of the build.
  /// [logsBucket] Google Cloud Storage bucket where logs were written.
  /// [project] ID of the project.
  /// [sourceProvenance] Details of the Source input to the build.
  /// [startTime] Time at which execution of the build was started.
  /// [triggerId] Trigger identifier if the build was triggered automatically; empty if not.
  const BuildProvenanceContaineranalysisV1alpha1({
    this.buildOptions,
    this.builderVersion,
    this.builtArtifacts,
    this.commands,
    this.createTime,
    this.creator,
    this.finishTime,
    this.id,
    this.logsBucket,
    this.project,
    this.sourceProvenance,
    this.startTime,
    this.triggerId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'buildOptions': ?buildOptions,
      'builderVersion': ?builderVersion,
      'builtArtifacts': ?pulumi.Input.mapOptionalInputValue<List<ArtifactContaineranalysisV1alpha1>, List<Map<String, dynamic>>>(builtArtifacts, (value) => pulumi.Input.encodeList<ArtifactContaineranalysisV1alpha1, Map<String, dynamic>>(value, (value) => value.toMap())),
      'commands': ?pulumi.Input.mapOptionalInputValue<List<CommandContaineranalysisV1alpha1>, List<Map<String, dynamic>>>(commands, (value) => pulumi.Input.encodeList<CommandContaineranalysisV1alpha1, Map<String, dynamic>>(value, (value) => value.toMap())),
      'createTime': ?createTime,
      'creator': ?creator,
      'finishTime': ?finishTime,
      'id': ?id,
      'logsBucket': ?logsBucket,
      'project': ?project,
      'sourceProvenance': ?pulumi.Input.mapOptionalInputValue<SourceContaineranalysisV1alpha1, Map<String, dynamic>>(sourceProvenance, (value) => value.toMap()),
      'startTime': ?startTime,
      'triggerId': ?triggerId,
    };
  }

  factory BuildProvenanceContaineranalysisV1alpha1.fromMap(Map<String, dynamic> map) {
    return BuildProvenanceContaineranalysisV1alpha1(
      buildOptions: (() { final guardedValue = map['buildOptions']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      builderVersion: (() { final guardedValue = map['builderVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      builtArtifacts: (() { final guardedValue = map['builtArtifacts']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ArtifactContaineranalysisV1alpha1>(guardedValue, (value) => ArtifactContaineranalysisV1alpha1.fromMap((value as Map).cast<String, dynamic>()))); })(),
      commands: (() { final guardedValue = map['commands']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<CommandContaineranalysisV1alpha1>(guardedValue, (value) => CommandContaineranalysisV1alpha1.fromMap((value as Map).cast<String, dynamic>()))); })(),
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      creator: (() { final guardedValue = map['creator']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      finishTime: (() { final guardedValue = map['finishTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      logsBucket: (() { final guardedValue = map['logsBucket']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sourceProvenance: (() { final guardedValue = map['sourceProvenance']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SourceContaineranalysisV1alpha1.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      startTime: (() { final guardedValue = map['startTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      triggerId: (() { final guardedValue = map['triggerId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
