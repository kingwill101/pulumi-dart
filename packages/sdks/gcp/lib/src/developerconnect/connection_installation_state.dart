// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ConnectionInstallationState {
  /// Output only. Link to follow for next action. Empty string if the installation is already
  /// complete.
  final pulumi.Input<String>? actionUri;
  /// Output only. Message of what the user should do next to continue the installation.
  /// Empty string if the installation is already complete.
  final pulumi.Input<String>? message;
  /// (Output)
  /// Output only. Current step of the installation process.
  /// Possible values:
  /// STAGE_UNSPECIFIED
  /// PENDING_CREATE_APP
  /// PENDING_USER_OAUTH
  /// PENDING_INSTALL_APP
  /// COMPLETE
  final pulumi.Input<String>? stage;

  /// Creates a new [ConnectionInstallationState].
  /// [actionUri] Output only. Link to follow for next action. Empty string if the installation is already
  /// [message] Output only. Message of what the user should do next to continue the installation.
  /// [stage] (Output)
  const ConnectionInstallationState({
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
      actionUri: (() { final guardedValue = map['actionUri']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      message: (() { final guardedValue = map['message']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      stage: (() { final guardedValue = map['stage']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

