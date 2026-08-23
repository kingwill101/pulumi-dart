// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Describes stage and necessary actions to be taken by the user to complete the installation. Used for GitHub and GitHub Enterprise based connections.
class InstallationStateResponse {
  /// Link to follow for next action. Empty string if the installation is already complete.
  final pulumi.Input<String> actionUri;
  /// Message of what the user should do next to continue the installation. Empty string if the installation is already complete.
  final pulumi.Input<String> message;
  /// Current step of the installation process.
  final pulumi.Input<String> stage;

  /// Creates a new [InstallationStateResponse].
  /// [actionUri] Link to follow for next action. Empty string if the installation is already complete.
  /// [message] Message of what the user should do next to continue the installation. Empty string if the installation is already complete.
  /// [stage] Current step of the installation process.
  const InstallationStateResponse({
    required this.actionUri,
    required this.message,
    required this.stage,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'actionUri': actionUri,
      'message': message,
      'stage': stage,
    };
  }

  factory InstallationStateResponse.fromMap(Map<String, dynamic> map) {
    return InstallationStateResponse(
      actionUri: pulumi.Input.fromValue(map['actionUri'] as String),
      message: pulumi.Input.fromValue(map['message'] as String),
      stage: pulumi.Input.fromValue(map['stage'] as String),
    );
  }
}
