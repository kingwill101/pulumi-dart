// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering IntegrationAccountSession resources.
class IntegrationAccountSessionState {
  /// The content of the Logic App Integration Account Session.
  final pulumi.Input<String>? content;
  /// The name of the Logic App Integration Account. Changing this forces a new Logic App Integration Account Session to be created.
  final pulumi.Input<String>? integrationAccountName;
  /// The name which should be used for this Logic App Integration Account Session. Changing this forces a new Logic App Integration Account Session to be created.
  final pulumi.Input<String>? name;
  /// The name of the Resource Group where the Logic App Integration Account Session should exist. Changing this forces a new Logic App Integration Account Session to be created.
  final pulumi.Input<String>? resourceGroupName;

  /// Creates a new [IntegrationAccountSessionState].
  /// [content] The content of the Logic App Integration Account Session.
  /// [integrationAccountName] The name of the Logic App Integration Account. Changing this forces a new Logic App Integration Account Session to be created.
  /// [name] The name which should be used for this Logic App Integration Account Session. Changing this forces a new Logic App Integration Account Session to be created.
  /// [resourceGroupName] The name of the Resource Group where the Logic App Integration Account Session should exist. Changing this forces a new Logic App Integration Account Session to be created.
  const IntegrationAccountSessionState({
    this.content,
    this.integrationAccountName,
    this.name,
    this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'content': ?content,
      'integrationAccountName': ?integrationAccountName,
      'name': ?name,
      'resourceGroupName': ?resourceGroupName,
    };
  }

  factory IntegrationAccountSessionState.fromMap(Map<String, dynamic> map) {
    return IntegrationAccountSessionState(
      content: (() { final guardedValue = map['content']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      integrationAccountName: (() { final guardedValue = map['integrationAccountName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: (() { final guardedValue = map['resourceGroupName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
