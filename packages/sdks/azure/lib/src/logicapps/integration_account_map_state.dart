// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering IntegrationAccountMap resources.
class IntegrationAccountMapState {
  /// The content of the Logic App Integration Account Map.
  final pulumi.Input<String>? content;
  /// The name of the Logic App Integration Account. Changing this forces a new Logic App Integration Account Map to be created.
  final pulumi.Input<String>? integrationAccountName;
  /// The type of the Logic App Integration Account Map. Possible values are `Liquid`, `NotSpecified`, `Xslt`, `Xslt30` and `Xslt20`.
  final pulumi.Input<String>? mapType;
  /// The metadata of the Logic App Integration Account Map.
  final pulumi.Input<Map<String, String>>? metadata;
  /// The name which should be used for this Logic App Integration Account Map. Changing this forces a new Logic App Integration Account Map to be created.
  final pulumi.Input<String>? name;
  /// The name of the Resource Group where the Logic App Integration Account Map should exist. Changing this forces a new Logic App Integration Account Map to be created.
  final pulumi.Input<String>? resourceGroupName;

  /// Creates a new [IntegrationAccountMapState].
  /// [content] The content of the Logic App Integration Account Map.
  /// [integrationAccountName] The name of the Logic App Integration Account. Changing this forces a new Logic App Integration Account Map to be created.
  /// [mapType] The type of the Logic App Integration Account Map. Possible values are `Liquid`, `NotSpecified`, `Xslt`, `Xslt30` and `Xslt20`.
  /// [metadata] The metadata of the Logic App Integration Account Map.
  /// [name] The name which should be used for this Logic App Integration Account Map. Changing this forces a new Logic App Integration Account Map to be created.
  /// [resourceGroupName] The name of the Resource Group where the Logic App Integration Account Map should exist. Changing this forces a new Logic App Integration Account Map to be created.
  IntegrationAccountMapState({
    this.content,
    this.integrationAccountName,
    this.mapType,
    this.metadata,
    this.name,
    this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'content': ?content,
      'integrationAccountName': ?integrationAccountName,
      'mapType': ?mapType,
      'metadata': ?metadata,
      'name': ?name,
      'resourceGroupName': ?resourceGroupName,
    };
  }

  factory IntegrationAccountMapState.fromMap(Map<String, dynamic> map) {
    return IntegrationAccountMapState(
      content: map['content'] == null ? null : (map['content'] as String).input(),
      integrationAccountName: map['integrationAccountName'] == null ? null : (map['integrationAccountName'] as String).input(),
      mapType: map['mapType'] == null ? null : (map['mapType'] as String).input(),
      metadata: map['metadata'] == null ? null : ((map['metadata'] as Map).cast<String, String>()).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      resourceGroupName: map['resourceGroupName'] == null ? null : (map['resourceGroupName'] as String).input(),
    );
  }
}

