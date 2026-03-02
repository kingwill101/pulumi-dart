// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ConnectionInstallationState {
  /// (Output)
  /// Output only. Link to follow for next action. Empty string if the installation is already complete.
  final pulumi.Input<String>? actionUri;
  /// (Output)
  /// Output only. Message of what the user should do next to continue the installation. Empty string if the installation is already complete.
  final pulumi.Input<String>? message;
  /// (Output)
  /// Output only. Current step of the installation process.
  final pulumi.Input<String>? stage;

  /// Creates a new [ConnectionInstallationState].
  /// [actionUri] (Output)
  /// [message] (Output)
  /// [stage] (Output)
  ConnectionInstallationState({
    this.actionUri,
    this.message,
    this.stage,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'actionUri': ?actionUri,
      'message': ?message,
      'stage': ?stage,
    };
  }

  factory ConnectionInstallationState.fromMap(Map<String, dynamic> map) {
    return ConnectionInstallationState(
      actionUri: map['actionUri'] == null ? null : (map['actionUri'] as String).input(),
      message: map['message'] == null ? null : (map['message'] as String).input(),
      stage: map['stage'] == null ? null : (map['stage'] as String).input(),
    );
  }
}

