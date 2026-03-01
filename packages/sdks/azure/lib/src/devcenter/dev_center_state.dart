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
  DevCenterState({
    pulumi.Output<String>? devCenterUri,
    pulumi.Output<DevCenterIdentity>? identity,
    pulumi.Output<String>? location,
    pulumi.Output<String>? name,
    pulumi.Output<bool>? projectCatalogItemSyncEnabled,
    pulumi.Output<String>? resourceGroupName,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      devCenterUri = pulumi.Input.asOptionalInput<String>(devCenterUri),
      identity = pulumi.Input.asOptionalInput<DevCenterIdentity>(identity),
      location = pulumi.Input.asOptionalInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      projectCatalogItemSyncEnabled = pulumi.Input.asOptionalInput<bool>(projectCatalogItemSyncEnabled),
      resourceGroupName = pulumi.Input.asOptionalInput<String>(resourceGroupName),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

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
      devCenterUri: map['devCenterUri'] == null ? null : pulumi.Output.create<String>(map['devCenterUri'] as String),
      identity: map['identity'] == null ? null : pulumi.Output.create<DevCenterIdentity>(DevCenterIdentity.fromMap((map['identity'] as Map).cast<String, dynamic>())),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      projectCatalogItemSyncEnabled: map['projectCatalogItemSyncEnabled'] == null ? null : pulumi.Output.create<bool>(map['projectCatalogItemSyncEnabled'] as bool),
      resourceGroupName: map['resourceGroupName'] == null ? null : pulumi.Output.create<String>(map['resourceGroupName'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

