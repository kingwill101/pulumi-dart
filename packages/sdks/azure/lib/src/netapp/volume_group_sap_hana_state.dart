// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'volume_group_sap_hana_volume.dart';

/// Input properties used for looking up and filtering VolumeGroupSapHana resources.
class VolumeGroupSapHanaState {
  /// Name of the account where the application volume group belong to. Changing this forces a new Application Volume Group to be created and data will be lost.
  final pulumi.Input<String>? accountName;
  /// The SAP System ID, maximum 3 characters, e.g. `SH9`. Changing this forces a new Application Volume Group to be created and data will be lost.
  final pulumi.Input<String>? applicationIdentifier;
  /// Volume group description. Changing this forces a new Application Volume Group to be created and data will be lost.
  final pulumi.Input<String>? groupDescription;
  /// The Azure Region where the Application Volume Group should exist. Changing this forces a new Application Volume Group to be created and data will be lost.
  final pulumi.Input<String>? location;
  /// The name which should be used for this Application Volume Group. Changing this forces a new Application Volume Group to be created and data will be lost.
  final pulumi.Input<String>? name;
  /// The name of the Resource Group where the Application Volume Group should exist. Changing this forces a new Application Volume Group to be created and data will be lost.
  final pulumi.Input<String>? resourceGroupName;
  /// One or more `volume` blocks as defined below.
  final pulumi.Input<List<VolumeGroupSapHanaVolume>>? volumes;

  /// Creates a new [VolumeGroupSapHanaState].
  /// [accountName] Name of the account where the application volume group belong to. Changing this forces a new Application Volume Group to be created and data will be lost.
  /// [applicationIdentifier] The SAP System ID, maximum 3 characters, e.g. `SH9`. Changing this forces a new Application Volume Group to be created and data will be lost.
  /// [groupDescription] Volume group description. Changing this forces a new Application Volume Group to be created and data will be lost.
  /// [location] The Azure Region where the Application Volume Group should exist. Changing this forces a new Application Volume Group to be created and data will be lost.
  /// [name] The name which should be used for this Application Volume Group. Changing this forces a new Application Volume Group to be created and data will be lost.
  /// [resourceGroupName] The name of the Resource Group where the Application Volume Group should exist. Changing this forces a new Application Volume Group to be created and data will be lost.
  /// [volumes] One or more `volume` blocks as defined below.
  VolumeGroupSapHanaState({
    pulumi.Output<String>? accountName,
    pulumi.Output<String>? applicationIdentifier,
    pulumi.Output<String>? groupDescription,
    pulumi.Output<String>? location,
    pulumi.Output<String>? name,
    pulumi.Output<String>? resourceGroupName,
    pulumi.Output<List<VolumeGroupSapHanaVolume>>? volumes,
  }) :
      accountName = pulumi.Input.asOptionalInput<String>(accountName),
      applicationIdentifier = pulumi.Input.asOptionalInput<String>(applicationIdentifier),
      groupDescription = pulumi.Input.asOptionalInput<String>(groupDescription),
      location = pulumi.Input.asOptionalInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      resourceGroupName = pulumi.Input.asOptionalInput<String>(resourceGroupName),
      volumes = pulumi.Input.asOptionalInput<List<VolumeGroupSapHanaVolume>>(volumes);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountName': ?accountName,
      'applicationIdentifier': ?applicationIdentifier,
      'groupDescription': ?groupDescription,
      'location': ?location,
      'name': ?name,
      'resourceGroupName': ?resourceGroupName,
      'volumes': ?pulumi.Input.mapOptionalInputValue<List<VolumeGroupSapHanaVolume>, List<Map<String, dynamic>>>(volumes, (value) => pulumi.Input.encodeList<VolumeGroupSapHanaVolume, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory VolumeGroupSapHanaState.fromMap(Map<String, dynamic> map) {
    return VolumeGroupSapHanaState(
      accountName: map['accountName'] == null ? null : pulumi.Output.create<String>(map['accountName'] as String),
      applicationIdentifier: map['applicationIdentifier'] == null ? null : pulumi.Output.create<String>(map['applicationIdentifier'] as String),
      groupDescription: map['groupDescription'] == null ? null : pulumi.Output.create<String>(map['groupDescription'] as String),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      resourceGroupName: map['resourceGroupName'] == null ? null : pulumi.Output.create<String>(map['resourceGroupName'] as String),
      volumes: map['volumes'] == null ? null : pulumi.Output.create<List<VolumeGroupSapHanaVolume>>(pulumi.Input.decodeList<VolumeGroupSapHanaVolume>(map['volumes'], (value) => VolumeGroupSapHanaVolume.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

