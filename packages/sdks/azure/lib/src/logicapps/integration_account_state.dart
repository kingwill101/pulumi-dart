// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering IntegrationAccount resources.
class IntegrationAccountState {
  /// The resource ID of the Integration Service Environment. Changing this forces a new Logic App Integration Account to be created.
  final pulumi.Input<String>? integrationServiceEnvironmentId;
  /// The Azure Region where the Logic App Integration Account should exist. Changing this forces a new Logic App Integration Account to be created.
  final pulumi.Input<String>? location;
  /// The name which should be used for this Logic App Integration Account. Changing this forces a new Logic App Integration Account to be created.
  final pulumi.Input<String>? name;
  /// The name of the Resource Group where the Logic App Integration Account should exist. Changing this forces a new Logic App Integration Account to be created.
  final pulumi.Input<String>? resourceGroupName;
  /// The SKU name of the Logic App Integration Account. Possible Values are `Basic`, `Free` and `Standard`.
  final pulumi.Input<String>? skuName;
  /// A mapping of tags which should be assigned to the Logic App Integration Account.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [IntegrationAccountState].
  /// [integrationServiceEnvironmentId] The resource ID of the Integration Service Environment. Changing this forces a new Logic App Integration Account to be created.
  /// [location] The Azure Region where the Logic App Integration Account should exist. Changing this forces a new Logic App Integration Account to be created.
  /// [name] The name which should be used for this Logic App Integration Account. Changing this forces a new Logic App Integration Account to be created.
  /// [resourceGroupName] The name of the Resource Group where the Logic App Integration Account should exist. Changing this forces a new Logic App Integration Account to be created.
  /// [skuName] The SKU name of the Logic App Integration Account. Possible Values are `Basic`, `Free` and `Standard`.
  /// [tags] A mapping of tags which should be assigned to the Logic App Integration Account.
  IntegrationAccountState({
    this.integrationServiceEnvironmentId,
    this.location,
    this.name,
    this.resourceGroupName,
    this.skuName,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'integrationServiceEnvironmentId': ?integrationServiceEnvironmentId,
      'location': ?location,
      'name': ?name,
      'resourceGroupName': ?resourceGroupName,
      'skuName': ?skuName,
      'tags': ?tags,
    };
  }

  factory IntegrationAccountState.fromMap(Map<String, dynamic> map) {
    return IntegrationAccountState(
      integrationServiceEnvironmentId: (() { final guardedValue = map['integrationServiceEnvironmentId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: (() { final guardedValue = map['resourceGroupName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      skuName: (() { final guardedValue = map['skuName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}

