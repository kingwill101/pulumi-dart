// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_skus.dart';

/// Result data returned by get.
class GetResult {
  /// The base size of the Elastic SAN resource in TiB.
  final int baseSizeInTib;
  /// The base size of the Elastic SAN resource in TiB.
  final int extendedSizeInTib;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// The Azure Region where the Elastic SAN exists.
  final String location;
  /// The SKU name.
  final String name;
  final String resourceGroupName;
  /// A `sku` block as defined below.
  final List<GetSkus> skus;
  /// A mapping of tags assigned to the Elastic SAN.
  final Map<String, String> tags;
  /// Total Provisioned IOps of the Elastic SAN resource.
  final int totalIops;
  /// Total Provisioned MBps Elastic SAN resource.
  final int totalMbps;
  /// Total size of the Elastic SAN resource in TB.
  final int totalSizeInTib;
  /// Total size of the provisioned Volumes in GiB.
  final int totalVolumeSizeInGib;
  /// Total number of volume groups in this Elastic SAN resource.
  final int volumeGroupCount;
  /// Logical zone for the Elastic SAN resource.
  final List<String> zones;

  /// Creates a new [GetResult].
  /// [baseSizeInTib] The base size of the Elastic SAN resource in TiB.
  /// [extendedSizeInTib] The base size of the Elastic SAN resource in TiB.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [location] The Azure Region where the Elastic SAN exists.
  /// [name] The SKU name.
  /// [resourceGroupName] Required.
  /// [skus] A `sku` block as defined below.
  /// [tags] A mapping of tags assigned to the Elastic SAN.
  /// [totalIops] Total Provisioned IOps of the Elastic SAN resource.
  /// [totalMbps] Total Provisioned MBps Elastic SAN resource.
  /// [totalSizeInTib] Total size of the Elastic SAN resource in TB.
  /// [totalVolumeSizeInGib] Total size of the provisioned Volumes in GiB.
  /// [volumeGroupCount] Total number of volume groups in this Elastic SAN resource.
  /// [zones] Logical zone for the Elastic SAN resource.
  GetResult({
    required this.baseSizeInTib,
    required this.extendedSizeInTib,
    required this.id,
    required this.location,
    required this.name,
    required this.resourceGroupName,
    required this.skus,
    required this.tags,
    required this.totalIops,
    required this.totalMbps,
    required this.totalSizeInTib,
    required this.totalVolumeSizeInGib,
    required this.volumeGroupCount,
    required this.zones,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'baseSizeInTib': baseSizeInTib,
      'extendedSizeInTib': extendedSizeInTib,
      'id': id,
      'location': location,
      'name': name,
      'resourceGroupName': resourceGroupName,
      'skus': pulumi.Input.encodeList<GetSkus, Map<String, dynamic>>(skus, (value) => value.toMap()),
      'tags': tags,
      'totalIops': totalIops,
      'totalMbps': totalMbps,
      'totalSizeInTib': totalSizeInTib,
      'totalVolumeSizeInGib': totalVolumeSizeInGib,
      'volumeGroupCount': volumeGroupCount,
      'zones': zones,
    };
  }

  factory GetResult.fromMap(Map<String, dynamic> map) {
    return GetResult(
      baseSizeInTib: map['baseSizeInTib'] as int,
      extendedSizeInTib: map['extendedSizeInTib'] as int,
      id: map['id'] as String,
      location: map['location'] as String,
      name: map['name'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      skus: pulumi.Input.decodeList<GetSkus>(map['skus']!, (value) => GetSkus.fromMap((value as Map).cast<String, dynamic>())),
      tags: (map['tags'] as Map).cast<String, String>(),
      totalIops: map['totalIops'] as int,
      totalMbps: map['totalMbps'] as int,
      totalSizeInTib: map['totalSizeInTib'] as int,
      totalVolumeSizeInGib: map['totalVolumeSizeInGib'] as int,
      volumeGroupCount: map['volumeGroupCount'] as int,
      zones: (map['zones'] as List).cast<String>(),
    );
  }
}

