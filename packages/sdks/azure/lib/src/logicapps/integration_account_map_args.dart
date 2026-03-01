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
  IntegrationAccountMapArgs({
    required pulumi.Output<String> content,
    required pulumi.Output<String> integrationAccountName,
    required pulumi.Output<String> mapType,
    pulumi.Output<Map<String, String>>? metadata,
    pulumi.Output<String>? name,
    required pulumi.Output<String> resourceGroupName,
  }) :
      content = pulumi.Input.asInput<String>(content),
      integrationAccountName = pulumi.Input.asInput<String>(integrationAccountName),
      mapType = pulumi.Input.asInput<String>(mapType),
      metadata = pulumi.Input.asOptionalInput<Map<String, String>>(metadata),
      name = pulumi.Input.asOptionalInput<String>(name),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

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
      content: pulumi.Output.create<String>(map['content'] as String),
      integrationAccountName: pulumi.Output.create<String>(map['integrationAccountName'] as String),
      mapType: pulumi.Output.create<String>(map['mapType'] as String),
      metadata: map['metadata'] == null ? null : pulumi.Output.create<Map<String, String>>((map['metadata'] as Map).cast<String, String>()),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
    );
  }
}

