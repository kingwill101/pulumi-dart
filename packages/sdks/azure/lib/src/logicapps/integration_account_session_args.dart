// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_logicapps_integration_account_session_integration_account_session_args_doc}
/// The set of arguments for IntegrationAccountSession.
/// {@endtemplate}
/// {@macro pulumi_logicapps_integration_account_session_integration_account_session_args_doc}
class IntegrationAccountSessionArgs {
  /// The content of the Logic App Integration Account Session.
  final pulumi.Input<String> content;
  /// The name of the Logic App Integration Account. Changing this forces a new Logic App Integration Account Session to be created.
  final pulumi.Input<String> integrationAccountName;
  /// The name which should be used for this Logic App Integration Account Session. Changing this forces a new Logic App Integration Account Session to be created.
  final pulumi.Input<String>? name;
  /// The name of the Resource Group where the Logic App Integration Account Session should exist. Changing this forces a new Logic App Integration Account Session to be created.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [IntegrationAccountSessionArgs].
  /// [content] The content of the Logic App Integration Account Session.
  /// [integrationAccountName] The name of the Logic App Integration Account. Changing this forces a new Logic App Integration Account Session to be created.
  /// [name] The name which should be used for this Logic App Integration Account Session. Changing this forces a new Logic App Integration Account Session to be created.
  /// [resourceGroupName] The name of the Resource Group where the Logic App Integration Account Session should exist. Changing this forces a new Logic App Integration Account Session to be created.
  IntegrationAccountSessionArgs({
    required this.content,
    required this.integrationAccountName,
    this.name,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'content': content,
      'integrationAccountName': integrationAccountName,
      'name': ?name,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory IntegrationAccountSessionArgs.fromMap(Map<String, dynamic> map) {
    return IntegrationAccountSessionArgs(
      content: (map['content'] as String).input(),
      integrationAccountName: (map['integrationAccountName'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
    );
  }
}

