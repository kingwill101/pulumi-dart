// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'dev_center_identity.dart';

/// Input properties used for looking up and filtering DevCenter resources.
class DevCenterState {
  /// The URI of the Dev Center.
  final pulumi.Input<String>? devCenterUri;
  /// An `identity` block as defined below. Specifies the Managed Identity which should be assigned to this Dev Center.
  final pulumi.Input<DevCenterIdentity>? identity;
  /// The Azure Region where the Dev Center should exist. Changing this forces a new Dev Center to be created.
  final pulumi.Input<String>? location;
  /// Specifies the name of this Dev Center. Changing this forces a new Dev Center to be created.
  final pulumi.Input<String>? name;
  /// Whether the project catalogs associated with projects in this Dev Center are allowed to sync catalog items. Defaults to `false`.
  final pulumi.Input<bool>? projectCatalogItemSyncEnabled;
  /// Specifies the name of the Resource Group within which this Dev Center should exist. Changing this forces a new Dev Center to be created.
  final pulumi.Input<String>? resourceGroupName;
  /// A mapping of tags which should be assigned to the Dev Center.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [DevCenterState].
  /// [devCenterUri] The URI of the Dev Center.
  /// [identity] An `identity` block as defined below. Specifies the Managed Identity which should be assigned to this Dev Center.
  /// [location] The Azure Region where the Dev Center should exist. Changing this forces a new Dev Center to be created.
  /// [name] Specifies the name of this Dev Center. Changing this forces a new Dev Center to be created.
  /// [projectCatalogItemSyncEnabled] Whether the project catalogs associated with projects in this Dev Center are allowed to sync catalog items. Defaults to `false`.
  /// [resourceGroupName] Specifies the name of the Resource Group within which this Dev Center should exist. Changing this forces a new Dev Center to be created.
  /// [tags] A mapping of tags which should be assigned to the Dev Center.
  const DevCenterState({
    this.devCenterUri,
    this.identity,
    this.location,
    this.name,
    this.projectCatalogItemSyncEnabled,
    this.resourceGroupName,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'devCenterUri': ?devCenterUri,
      'identity': ?pulumi.Input.mapOptionalInputValue<DevCenterIdentity, Map<String, dynamic>>(identity, (value) => value.toMap()),
      'location': ?location,
      'name': ?name,
      'projectCatalogItemSyncEnabled': ?projectCatalogItemSyncEnabled,
      'resourceGroupName': ?resourceGroupName,
      'tags': ?tags,
    };
  }

  factory DevCenterState.fromMap(Map<String, dynamic> map) {
    return DevCenterState(
      devCenterUri: (() { final guardedValue = map['devCenterUri']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      identity: (() { final guardedValue = map['identity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DevCenterIdentity.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      projectCatalogItemSyncEnabled: (() { final guardedValue = map['projectCatalogItemSyncEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      resourceGroupName: (() { final guardedValue = map['resourceGroupName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
