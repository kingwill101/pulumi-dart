// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'dev_center_identity.dart';

/// {@template pulumi_devcenter_dev_center_dev_center_args_doc}
/// The set of arguments for DevCenter.
/// {@endtemplate}
/// {@macro pulumi_devcenter_dev_center_dev_center_args_doc}
class DevCenterArgs {
  /// An `identity` block as defined below. Specifies the Managed Identity which should be assigned to this Dev Center.
  final pulumi.Input<DevCenterIdentity?>? identity;
  /// The Azure Region where the Dev Center should exist. Changing this forces a new Dev Center to be created.
  final pulumi.Input<String?>? location;
  /// Specifies the name of this Dev Center. Changing this forces a new Dev Center to be created.
  final pulumi.Input<String?>? name;
  /// Whether the project catalogs associated with projects in this Dev Center are allowed to sync catalog items. Defaults to `false`.
  final pulumi.Input<bool?>? projectCatalogItemSyncEnabled;
  /// Specifies the name of the Resource Group within which this Dev Center should exist. Changing this forces a new Dev Center to be created.
  final pulumi.Input<String> resourceGroupName;
  /// A mapping of tags which should be assigned to the Dev Center.
  final pulumi.Input<Map<String, String>?>? tags;

  /// Creates a new [DevCenterArgs].
  /// [identity] An `identity` block as defined below. Specifies the Managed Identity which should be assigned to this Dev Center.
  /// [location] The Azure Region where the Dev Center should exist. Changing this forces a new Dev Center to be created.
  /// [name] Specifies the name of this Dev Center. Changing this forces a new Dev Center to be created.
  /// [projectCatalogItemSyncEnabled] Whether the project catalogs associated with projects in this Dev Center are allowed to sync catalog items. Defaults to `false`.
  /// [resourceGroupName] Specifies the name of the Resource Group within which this Dev Center should exist. Changing this forces a new Dev Center to be created.
  /// [tags] A mapping of tags which should be assigned to the Dev Center.
  const DevCenterArgs({
    this.identity,
    this.location,
    this.name,
    this.projectCatalogItemSyncEnabled,
    required this.resourceGroupName,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'identity': ?pulumi.Input.mapOptionalInputValue<DevCenterIdentity, Map<String, dynamic>>(identity, (value) => value.toMap()),
      'location': ?location,
      'name': ?name,
      'projectCatalogItemSyncEnabled': ?projectCatalogItemSyncEnabled,
      'resourceGroupName': resourceGroupName,
      'tags': ?tags,
    };
  }

  factory DevCenterArgs.fromMap(Map<String, dynamic> map) {
    return DevCenterArgs(
      identity: (() { final guardedValue = map['identity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DevCenterIdentity.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      projectCatalogItemSyncEnabled: (() { final guardedValue = map['projectCatalogItemSyncEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
