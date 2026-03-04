// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'elastic_san_sku.dart';

/// Input properties used for looking up and filtering ElasticSan resources.
class ElasticSanState {
  /// Specifies the base size of the Elastic SAN resource in TiB. Possible values are between `1` and `100`.
  ///
  /// &gt; **Note:** When updating `base_size_in_tib`, the new value should be greater than the existing one.
  final pulumi.Input<int>? baseSizeInTib;

  /// Specifies the extended size of the Elastic SAN resource in TiB. Possible values are between `1` and `100`.
  ///
  /// &gt; **Note:** `extended_size_in_tib` cannot be removed and when updating, the new value should be greater than the existing one.
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
  /// &gt; **Note:** `zones` cannot be specified if `sku.name` is set to `Premium_ZRS`.
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
    this.baseSizeInTib,
    this.extendedSizeInTib,
    this.location,
    this.name,
    this.resourceGroupName,
    this.sku,
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
      'location': ?location,
      'name': ?name,
      'resourceGroupName': ?resourceGroupName,
      'sku':
          ?pulumi.Input.mapOptionalInputValue<
            ElasticSanSku,
            Map<String, dynamic>
          >(sku, (value) => value.toMap()),
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
      baseSizeInTib: (() {
        final guardedValue = map['baseSizeInTib'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      extendedSizeInTib: (() {
        final guardedValue = map['extendedSizeInTib'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      location: (() {
        final guardedValue = map['location'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      resourceGroupName: (() {
        final guardedValue = map['resourceGroupName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      sku: (() {
        final guardedValue = map['sku'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ElasticSanSku.fromMap((guardedValue as Map).cast<String, dynamic>()),
        );
      })(),
      tags: (() {
        final guardedValue = map['tags'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      totalIops: (() {
        final guardedValue = map['totalIops'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      totalMbps: (() {
        final guardedValue = map['totalMbps'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      totalSizeInTib: (() {
        final guardedValue = map['totalSizeInTib'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      totalVolumeSizeInGib: (() {
        final guardedValue = map['totalVolumeSizeInGib'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      volumeGroupCount: (() {
        final guardedValue = map['volumeGroupCount'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      zones: (() {
        final guardedValue = map['zones'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
    );
  }
}
