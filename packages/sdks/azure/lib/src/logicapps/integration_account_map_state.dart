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
      content: (() {
        final guardedValue = map['content'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      integrationAccountName: (() {
        final guardedValue = map['integrationAccountName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      mapType: (() {
        final guardedValue = map['mapType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      metadata: (() {
        final guardedValue = map['metadata'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      resourceGroupName: (() {
        final guardedValue = map['resourceGroupName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
