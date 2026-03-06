// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AppVersionSnapshotExampleMessageChunkAgentTransfer {
  /// The display name of the app version.
  final pulumi.Input<String>? displayName;
  /// (Output)
  /// The agent to which the conversation is being transferred. The agent will
  /// handle the conversation from this point forward.
  /// Format: `projects/{project}/locations/{location}/apps/{app}/agents/{agent}`
  final pulumi.Input<String>? targetAgent;

  /// Creates a new [AppVersionSnapshotExampleMessageChunkAgentTransfer].
  /// [displayName] The display name of the app version.
  /// [targetAgent] (Output)
  const AppVersionSnapshotExampleMessageChunkAgentTransfer({
    this.displayName,
    this.targetAgent,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'displayName': ?displayName,
      'targetAgent': ?targetAgent,
    };
  }

  factory AppVersionSnapshotExampleMessageChunkAgentTransfer.fromMap(Map<String, dynamic> map) {
    return AppVersionSnapshotExampleMessageChunkAgentTransfer(
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      targetAgent: (() { final guardedValue = map['targetAgent']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

