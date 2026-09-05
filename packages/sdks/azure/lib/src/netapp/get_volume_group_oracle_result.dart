// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_volume_group_oracle_volume.dart';

/// Result data returned by getVolumeGroupOracle.
class GetVolumeGroupOracleResult {
  final String? accountName;
  /// The application identifier.
  final String? applicationIdentifier;
  /// Volume group description.
  final String? groupDescription;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  /// The Azure Region where the Application Volume Group exists.
  final String? location;
  /// The name of this volume.
  final String? name;
  final String? resourceGroupName;
  /// A `volume` block as defined below.
  final List<GetVolumeGroupOracleVolume>? volumes;

  /// Creates a new [GetVolumeGroupOracleResult].
  /// [accountName] Optional.
  /// [applicationIdentifier] The application identifier.
  /// [groupDescription] Volume group description.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [location] The Azure Region where the Application Volume Group exists.
  /// [name] The name of this volume.
  /// [resourceGroupName] Optional.
  /// [volumes] A `volume` block as defined below.
  const GetVolumeGroupOracleResult({
    this.accountName,
    this.applicationIdentifier,
    this.groupDescription,
    this.id,
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
      'id': ?id,
      'location': ?location,
      'name': ?name,
      'resourceGroupName': ?resourceGroupName,
      'volumes': ?(() { final guardedValue = volumes; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetVolumeGroupOracleVolume, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
    };
  }

  factory GetVolumeGroupOracleResult.fromMap(Map<String, dynamic> map) {
    return GetVolumeGroupOracleResult(
      accountName: (() { final guardedValue = map['accountName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      applicationIdentifier: (() { final guardedValue = map['applicationIdentifier']; if (guardedValue == null) return null; return guardedValue as String; })(),
      groupDescription: (() { final guardedValue = map['groupDescription']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      resourceGroupName: (() { final guardedValue = map['resourceGroupName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      volumes: (() { final guardedValue = map['volumes']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetVolumeGroupOracleVolume>(guardedValue, (value) => GetVolumeGroupOracleVolume.fromMap((value as Map).cast<String, dynamic>())); })(),
    );
  }
}
