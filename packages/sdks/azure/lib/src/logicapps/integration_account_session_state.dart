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
  IntegrationAccountSessionState({
    pulumi.Output<String>? content,
    pulumi.Output<String>? integrationAccountName,
    pulumi.Output<String>? name,
    pulumi.Output<String>? resourceGroupName,
  }) :
      content = pulumi.Input.asOptionalInput<String>(content),
      integrationAccountName = pulumi.Input.asOptionalInput<String>(integrationAccountName),
      name = pulumi.Input.asOptionalInput<String>(name),
      resourceGroupName = pulumi.Input.asOptionalInput<String>(resourceGroupName);

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
      content: map['content'] == null ? null : pulumi.Output.create<String>(map['content'] as String),
      integrationAccountName: map['integrationAccountName'] == null ? null : pulumi.Output.create<String>(map['integrationAccountName'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      resourceGroupName: map['resourceGroupName'] == null ? null : pulumi.Output.create<String>(map['resourceGroupName'] as String),
    );
  }
}

