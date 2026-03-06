// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_volume_group_sap_hana_volume.dart';

/// Result data returned by getVolumeGroupSapHana.
class GetVolumeGroupSapHanaResult {
  final String accountName;
  /// The application identifier.
  final String applicationIdentifier;
  /// Volume group description.
  final String groupDescription;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// The Azure Region where the Application Volume Group exists.
  final String location;
  /// The name of this volume.
  final String name;
  final String resourceGroupName;
  /// A `volume` block as defined below.
  final List<GetVolumeGroupSapHanaVolume> volumes;

  /// Creates a new [GetVolumeGroupSapHanaResult].
  /// [accountName] Required.
  /// [applicationIdentifier] The application identifier.
  /// [groupDescription] Volume group description.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [location] The Azure Region where the Application Volume Group exists.
  /// [name] The name of this volume.
  /// [resourceGroupName] Required.
  /// [volumes] A `volume` block as defined below.
  const GetVolumeGroupSapHanaResult({
    required this.accountName,
    required this.applicationIdentifier,
    required this.groupDescription,
    required this.id,
    required this.location,
    required this.name,
    required this.resourceGroupName,
    required this.volumes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountName': accountName,
      'applicationIdentifier': applicationIdentifier,
      'groupDescription': groupDescription,
      'id': id,
      'location': location,
      'name': name,
      'resourceGroupName': resourceGroupName,
      'volumes': pulumi.Input.encodeList<GetVolumeGroupSapHanaVolume, Map<String, dynamic>>(volumes, (value) => value.toMap()),
    };
  }

  factory GetVolumeGroupSapHanaResult.fromMap(Map<String, dynamic> map) {
    return GetVolumeGroupSapHanaResult(
      accountName: map['accountName'] as String,
      applicationIdentifier: map['applicationIdentifier'] as String,
      groupDescription: map['groupDescription'] as String,
      id: map['id'] as String,
      location: map['location'] as String,
      name: map['name'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      volumes: pulumi.Input.decodeList<GetVolumeGroupSapHanaVolume>(map['volumes']!, (value) => GetVolumeGroupSapHanaVolume.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

