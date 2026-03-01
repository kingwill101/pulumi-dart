// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'elastic_san_sku.dart';

/// Input properties used for looking up and filtering ElasticSan resources.
class ElasticSanState {
  /// Specifies the base size of the Elastic SAN resource in TiB. Possible values are between `1` and `100`.
  ///
  /// > **Note:** When updating `base_size_in_tib`, the new value should be greater than the existing one.
  final pulumi.Input<int>? baseSizeInTib;
  /// Specifies the extended size of the Elastic SAN resource in TiB. Possible values are between `1` and `100`.
  ///
  /// > **Note:** `extended_size_in_tib` cannot be removed and when updating, the new value should be greater than the existing one.
  final pulumi.Input<int>? extendedSizeInTib;
  /// The Azure Region where the Elastic SAN resource should exist. Changing this forces a new resource to be created.
  final pulumi.Input<String>? location;
  /// Specifies the name of this Elastic SAN resource. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// Specifies the name of the Resource Group within which this Elastic SAN resource should exist. Changing this forces a new resource to be created.
  final pulumi.Input<String>? resourceGroupName;
  /// A `sku` block as defined below.
  final pulumi.Input<ElasticSanSku>? sku;
  /// A mapping of tags which should be assigned to the Elastic SAN resource.
  final pulumi.Input<Map<String, String>>? tags;
  /// Total Provisioned IOps of the Elastic SAN resource.
  final pulumi.Input<int>? totalIops;
  /// Total Provisioned MBps Elastic SAN resource.
  final pulumi.Input<int>? totalMbps;
  /// Total size of the Elastic SAN resource in TB.
  final pulumi.Input<int>? totalSizeInTib;
  /// Total size of the provisioned Volumes in GiB.
  final pulumi.Input<int>? totalVolumeSizeInGib;
  /// Total number of volume groups in this Elastic SAN resource.
  final pulumi.Input<int>? volumeGroupCount;
  /// Logical zone for the Elastic SAN resource. Changing this forces a new resource to be created.
  ///
  /// > **Note:** `zones` cannot be specified if `sku.name` is set to `Premium_ZRS`.
  final pulumi.Input<List<String>>? zones;

  /// Creates a new [ElasticSanState].
  /// [baseSizeInTib] Specifies the base size of the Elastic SAN resource in TiB. Possible values are between `1` and `100`.
  /// [extendedSizeInTib] Specifies the extended size of the Elastic SAN resource in TiB. Possible values are between `1` and `100`.
  /// [location] The Azure Region where the Elastic SAN resource should exist. Changing this forces a new resource to be created.
  /// [name] Specifies the name of this Elastic SAN resource. Changing this forces a new resource to be created.
  /// [resourceGroupName] Specifies the name of the Resource Group within which this Elastic SAN resource should exist. Changing this forces a new resource to be created.
  /// [sku] A `sku` block as defined below.
  /// [tags] A mapping of tags which should be assigned to the Elastic SAN resource.
  /// [totalIops] Total Provisioned IOps of the Elastic SAN resource.
  /// [totalMbps] Total Provisioned MBps Elastic SAN resource.
  /// [totalSizeInTib] Total size of the Elastic SAN resource in TB.
  /// [totalVolumeSizeInGib] Total size of the provisioned Volumes in GiB.
  /// [volumeGroupCount] Total number of volume groups in this Elastic SAN resource.
  /// [zones] Logical zone for the Elastic SAN resource. Changing this forces a new resource to be created.
  ElasticSanState({
    pulumi.Output<int>? baseSizeInTib,
    pulumi.Output<int>? extendedSizeInTib,
    pulumi.Output<String>? location,
    pulumi.Output<String>? name,
    pulumi.Output<String>? resourceGroupName,
    pulumi.Output<ElasticSanSku>? sku,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<int>? totalIops,
    pulumi.Output<int>? totalMbps,
    pulumi.Output<int>? totalSizeInTib,
    pulumi.Output<int>? totalVolumeSizeInGib,
    pulumi.Output<int>? volumeGroupCount,
    pulumi.Output<List<String>>? zones,
  }) :
      baseSizeInTib = pulumi.Input.asOptionalInput<int>(baseSizeInTib),
      extendedSizeInTib = pulumi.Input.asOptionalInput<int>(extendedSizeInTib),
      location = pulumi.Input.asOptionalInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      resourceGroupName = pulumi.Input.asOptionalInput<String>(resourceGroupName),
      sku = pulumi.Input.asOptionalInput<ElasticSanSku>(sku),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      totalIops = pulumi.Input.asOptionalInput<int>(totalIops),
      totalMbps = pulumi.Input.asOptionalInput<int>(totalMbps),
      totalSizeInTib = pulumi.Input.asOptionalInput<int>(totalSizeInTib),
      totalVolumeSizeInGib = pulumi.Input.asOptionalInput<int>(totalVolumeSizeInGib),
      volumeGroupCount = pulumi.Input.asOptionalInput<int>(volumeGroupCount),
      zones = pulumi.Input.asOptionalInput<List<String>>(zones);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'baseSizeInTib': ?baseSizeInTib,
      'extendedSizeInTib': ?extendedSizeInTib,
      'location': ?location,
      'name': ?name,
      'resourceGroupName': ?resourceGroupName,
      'sku': ?pulumi.Input.mapOptionalInputValue<ElasticSanSku, Map<String, dynamic>>(sku, (value) => value.toMap()),
      'tags': ?tags,
      'totalIops': ?totalIops,
      'totalMbps': ?totalMbps,
      'totalSizeInTib': ?totalSizeInTib,
      'totalVolumeSizeInGib': ?totalVolumeSizeInGib,
      'volumeGroupCount': ?volumeGroupCount,
      'zones': ?zones,
    };
  }

  factory ElasticSanState.fromMap(Map<String, dynamic> map) {
    return ElasticSanState(
      baseSizeInTib: map['baseSizeInTib'] == null ? null : pulumi.Output.create<int>(map['baseSizeInTib'] as int),
      extendedSizeInTib: map['extendedSizeInTib'] == null ? null : pulumi.Output.create<int>(map['extendedSizeInTib'] as int),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      resourceGroupName: map['resourceGroupName'] == null ? null : pulumi.Output.create<String>(map['resourceGroupName'] as String),
      sku: map['sku'] == null ? null : pulumi.Output.create<ElasticSanSku>(ElasticSanSku.fromMap((map['sku'] as Map).cast<String, dynamic>())),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      totalIops: map['totalIops'] == null ? null : pulumi.Output.create<int>(map['totalIops'] as int),
      totalMbps: map['totalMbps'] == null ? null : pulumi.Output.create<int>(map['totalMbps'] as int),
      totalSizeInTib: map['totalSizeInTib'] == null ? null : pulumi.Output.create<int>(map['totalSizeInTib'] as int),
      totalVolumeSizeInGib: map['totalVolumeSizeInGib'] == null ? null : pulumi.Output.create<int>(map['totalVolumeSizeInGib'] as int),
      volumeGroupCount: map['volumeGroupCount'] == null ? null : pulumi.Output.create<int>(map['volumeGroupCount'] as int),
      zones: map['zones'] == null ? null : pulumi.Output.create<List<String>>((map['zones'] as List).cast<String>()),
    );
  }
}

