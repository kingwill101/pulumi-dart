// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'artifact.dart';
import 'command.dart';
import 'source.dart';

/// Provenance of a build. Contains all information needed to verify the full details about the build from source to completion.
class BuildProvenance {
  /// Special options applied to this build. This is a catch-all field where build providers can enter any desired additional details.
  final pulumi.Input<Map<String, String>>? buildOptions;
  /// Version string of the builder at the time this build was executed.
  final pulumi.Input<String>? builderVersion;
  /// Output of the build.
  final pulumi.Input<List<Artifact>>? builtArtifacts;
  /// Commands requested by the build.
  final pulumi.Input<List<Command>>? commands;
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
  final pulumi.Input<Source>? sourceProvenance;
  /// Time at which execution of the build was started.
  final pulumi.Input<String>? startTime;
  /// Trigger identifier if the build was triggered automatically; empty if not.
  final pulumi.Input<String>? triggerId;

  /// Creates a new [BuildProvenance].
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
  const BuildProvenance({
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
      'builtArtifacts': ?pulumi.Input.mapOptionalInputValue<List<Artifact>, List<Map<String, dynamic>>>(builtArtifacts, (value) => pulumi.Input.encodeList<Artifact, Map<String, dynamic>>(value, (value) => value.toMap())),
      'commands': ?pulumi.Input.mapOptionalInputValue<List<Command>, List<Map<String, dynamic>>>(commands, (value) => pulumi.Input.encodeList<Command, Map<String, dynamic>>(value, (value) => value.toMap())),
      'createTime': ?createTime,
      'creator': ?creator,
      'endTime': ?endTime,
      'id': id,
      'logsUri': ?logsUri,
      'project': ?project,
      'sourceProvenance': ?pulumi.Input.mapOptionalInputValue<Source, Map<String, dynamic>>(sourceProvenance, (value) => value.toMap()),
      'startTime': ?startTime,
      'triggerId': ?triggerId,
    };
  }

  factory BuildProvenance.fromMap(Map<String, dynamic> map) {
    return BuildProvenance(
      buildOptions: (() { final guardedValue = map['buildOptions']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      builderVersion: (() { final guardedValue = map['builderVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      builtArtifacts: (() { final guardedValue = map['builtArtifacts']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<Artifact>(guardedValue, (value) => Artifact.fromMap((value as Map).cast<String, dynamic>()))); })(),
      commands: (() { final guardedValue = map['commands']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<Command>(guardedValue, (value) => Command.fromMap((value as Map).cast<String, dynamic>()))); })(),
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      creator: (() { final guardedValue = map['creator']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      endTime: (() { final guardedValue = map['endTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      id: pulumi.Input.fromValue(map['id'] as String),
      logsUri: (() { final guardedValue = map['logsUri']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sourceProvenance: (() { final guardedValue = map['sourceProvenance']; if (guardedValue == null) return null; return pulumi.Input.fromValue(Source.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      startTime: (() { final guardedValue = map['startTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      triggerId: (() { final guardedValue = map['triggerId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
