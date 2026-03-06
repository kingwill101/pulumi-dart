// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_logicapps_integration_account_map_integration_account_map_args_doc}
/// The set of arguments for IntegrationAccountMap.
/// {@endtemplate}
/// {@macro pulumi_logicapps_integration_account_map_integration_account_map_args_doc}
class IntegrationAccountMapArgs {
  /// The content of the Logic App Integration Account Map.
  final pulumi.Input<String> content;
  /// The name of the Logic App Integration Account. Changing this forces a new Logic App Integration Account Map to be created.
  final pulumi.Input<String> integrationAccountName;
  /// The type of the Logic App Integration Account Map. Possible values are `Liquid`, `NotSpecified`, `Xslt`, `Xslt30` and `Xslt20`.
  final pulumi.Input<String> mapType;
  /// The metadata of the Logic App Integration Account Map.
  final pulumi.Input<Map<String, String>>? metadata;
  /// The name which should be used for this Logic App Integration Account Map. Changing this forces a new Logic App Integration Account Map to be created.
  final pulumi.Input<String>? name;
  /// The name of the Resource Group where the Logic App Integration Account Map should exist. Changing this forces a new Logic App Integration Account Map to be created.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [IntegrationAccountMapArgs].
  /// [content] The content of the Logic App Integration Account Map.
  /// [integrationAccountName] The name of the Logic App Integration Account. Changing this forces a new Logic App Integration Account Map to be created.
  /// [mapType] The type of the Logic App Integration Account Map. Possible values are `Liquid`, `NotSpecified`, `Xslt`, `Xslt30` and `Xslt20`.
  /// [metadata] The metadata of the Logic App Integration Account Map.
  /// [name] The name which should be used for this Logic App Integration Account Map. Changing this forces a new Logic App Integration Account Map to be created.
  /// [resourceGroupName] The name of the Resource Group where the Logic App Integration Account Map should exist. Changing this forces a new Logic App Integration Account Map to be created.
  const IntegrationAccountMapArgs({
    required this.content,
    required this.integrationAccountName,
    required this.mapType,
    this.metadata,
    this.name,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'content': content,
      'integrationAccountName': integrationAccountName,
      'mapType': mapType,
      'metadata': ?metadata,
      'name': ?name,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory IntegrationAccountMapArgs.fromMap(Map<String, dynamic> map) {
    return IntegrationAccountMapArgs(
      content: pulumi.Input.fromValue(map['content'] as String),
      integrationAccountName: pulumi.Input.fromValue(map['integrationAccountName'] as String),
      mapType: pulumi.Input.fromValue(map['mapType'] as String),
      metadata: (() { final guardedValue = map['metadata']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}

