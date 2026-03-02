// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'volume_group_oracle_volume.dart';

/// Input properties used for looking up and filtering VolumeGroupOracle resources.
class VolumeGroupOracleState {
  /// Name of the account where the application volume group belong to. Changing this forces a new Application Volume Group to be created and data will be lost.
  final pulumi.Input<String>? accountName;
  /// The SAP System ID, maximum 3 characters, e.g. `OR1`. Changing this forces a new Application Volume Group to be created and data will be lost.
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
  final pulumi.Input<List<VolumeGroupOracleVolume>>? volumes;

  /// Creates a new [VolumeGroupOracleState].
  /// [accountName] Name of the account where the application volume group belong to. Changing this forces a new Application Volume Group to be created and data will be lost.
  /// [applicationIdentifier] The SAP System ID, maximum 3 characters, e.g. `OR1`. Changing this forces a new Application Volume Group to be created and data will be lost.
  /// [groupDescription] Volume group description. Changing this forces a new Application Volume Group to be created and data will be lost.
  /// [location] The Azure Region where the Application Volume Group should exist. Changing this forces a new Application Volume Group to be created and data will be lost.
  /// [name] The name which should be used for this Application Volume Group. Changing this forces a new Application Volume Group to be created and data will be lost.
  /// [resourceGroupName] The name of the Resource Group where the Application Volume Group should exist. Changing this forces a new Application Volume Group to be created and data will be lost.
  /// [volumes] One or more `volume` blocks as defined below.
  VolumeGroupOracleState({
    this.accountName,
    this.applicationIdentifier,
    this.groupDescription,
    this.location,
    this.name,
    this.resourceGroupName,
    this.volumes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountName': ?accountName,
      'applicationIdentifier': ?applicationIdentifier,
      'groupDescription': ?groupDescription,
      'location': ?location,
      'name': ?name,
      'resourceGroupName': ?resourceGroupName,
      'volumes': ?pulumi.Input.mapOptionalInputValue<List<VolumeGroupOracleVolume>, List<Map<String, dynamic>>>(volumes, (value) => pulumi.Input.encodeList<VolumeGroupOracleVolume, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory VolumeGroupOracleState.fromMap(Map<String, dynamic> map) {
    return VolumeGroupOracleState(
      accountName: map['accountName'] == null ? null : (map['accountName']! as String).input(),
      applicationIdentifier: map['applicationIdentifier'] == null ? null : (map['applicationIdentifier']! as String).input(),
      groupDescription: map['groupDescription'] == null ? null : (map['groupDescription']! as String).input(),
      location: map['location'] == null ? null : (map['location']! as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      resourceGroupName: map['resourceGroupName'] == null ? null : (map['resourceGroupName']! as String).input(),
      volumes: map['volumes'] == null ? null : (pulumi.Input.decodeList<VolumeGroupOracleVolume>(map['volumes']!, (value) => VolumeGroupOracleVolume.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

