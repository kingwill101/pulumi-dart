// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_skus.dart';

/// Result data returned by get.
class GetResult {
  /// The base size of the Elastic SAN resource in TiB.
  final int? baseSizeInTib;
  /// The base size of the Elastic SAN resource in TiB.
  final int? extendedSizeInTib;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  /// The Azure Region where the Elastic SAN exists.
  final String? location;
  /// The SKU name.
  final String? name;
  final String? resourceGroupName;
  /// A `sku` block as defined below.
  final List<GetSkus>? skus;
  /// A mapping of tags assigned to the Elastic SAN.
  final Map<String, String>? tags;
  /// Total Provisioned IOps of the Elastic SAN resource.
  final int? totalIops;
  /// Total Provisioned MBps Elastic SAN resource.
  final int? totalMbps;
  /// Total size of the Elastic SAN resource in TB.
  final int? totalSizeInTib;
  /// Total size of the provisioned Volumes in GiB.
  final int? totalVolumeSizeInGib;
  /// Total number of volume groups in this Elastic SAN resource.
  final int? volumeGroupCount;
  /// Logical zone for the Elastic SAN resource.
  final List<String>? zones;

  /// Creates a new [GetResult].
  /// [baseSizeInTib] The base size of the Elastic SAN resource in TiB.
  /// [extendedSizeInTib] The base size of the Elastic SAN resource in TiB.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [location] The Azure Region where the Elastic SAN exists.
  /// [name] The SKU name.
  /// [resourceGroupName] Optional.
  /// [skus] A `sku` block as defined below.
  /// [tags] A mapping of tags assigned to the Elastic SAN.
  /// [totalIops] Total Provisioned IOps of the Elastic SAN resource.
  /// [totalMbps] Total Provisioned MBps Elastic SAN resource.
  /// [totalSizeInTib] Total size of the Elastic SAN resource in TB.
  /// [totalVolumeSizeInGib] Total size of the provisioned Volumes in GiB.
  /// [volumeGroupCount] Total number of volume groups in this Elastic SAN resource.
  /// [zones] Logical zone for the Elastic SAN resource.
  const GetResult({
    this.baseSizeInTib,
    this.extendedSizeInTib,
    this.id,
    this.location,
    this.name,
    this.resourceGroupName,
    this.skus,
    this.tags,
    this.totalIops,
    this.totalMbps,
    this.totalSizeInTib,
    this.totalVolumeSizeInGib,
    this.volumeGroupCount,
    this.zones,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'baseSizeInTib': ?baseSizeInTib,
      'extendedSizeInTib': ?extendedSizeInTib,
      'id': ?id,
      'location': ?location,
      'name': ?name,
      'resourceGroupName': ?resourceGroupName,
      'skus': ?(() { final guardedValue = skus; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetSkus, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'tags': ?tags,
      'totalIops': ?totalIops,
      'totalMbps': ?totalMbps,
      'totalSizeInTib': ?totalSizeInTib,
      'totalVolumeSizeInGib': ?totalVolumeSizeInGib,
      'volumeGroupCount': ?volumeGroupCount,
      'zones': ?zones,
    };
  }

  factory GetResult.fromMap(Map<String, dynamic> map) {
    return GetResult(
      baseSizeInTib: (() { final guardedValue = map['baseSizeInTib']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      extendedSizeInTib: (() { final guardedValue = map['extendedSizeInTib']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      resourceGroupName: (() { final guardedValue = map['resourceGroupName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      skus: (() { final guardedValue = map['skus']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetSkus>(guardedValue, (value) => GetSkus.fromMap((value as Map).cast<String, dynamic>())); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      totalIops: (() { final guardedValue = map['totalIops']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      totalMbps: (() { final guardedValue = map['totalMbps']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      totalSizeInTib: (() { final guardedValue = map['totalSizeInTib']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      totalVolumeSizeInGib: (() { final guardedValue = map['totalVolumeSizeInGib']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      volumeGroupCount: (() { final guardedValue = map['volumeGroupCount']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      zones: (() { final guardedValue = map['zones']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
    );
  }
}
