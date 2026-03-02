// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'elastic_san_sku.dart';

/// {@template pulumi_elasticsan_elastic_san_elastic_san_args_doc}
/// The set of arguments for ElasticSan.
/// {@endtemplate}
/// {@macro pulumi_elasticsan_elastic_san_elastic_san_args_doc}
class ElasticSanArgs {
  /// Specifies the base size of the Elastic SAN resource in TiB. Possible values are between `1` and `100`.
  ///
  /// > **Note:** When updating `base_size_in_tib`, the new value should be greater than the existing one.
  final pulumi.Input<int> baseSizeInTib;
  /// Specifies the extended size of the Elastic SAN resource in TiB. Possible values are between `1` and `100`.
  ///
  /// > **Note:** `extended_size_in_tib` cannot be removed and when updating, the new value should be greater than the existing one.
  final pulumi.Input<int>? extendedSizeInTib;
  /// The Azure Region where the Elastic SAN resource should exist. Changing this forces a new resource to be created.
  final pulumi.Input<String>? location;
  /// Specifies the name of this Elastic SAN resource. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// Specifies the name of the Resource Group within which this Elastic SAN resource should exist. Changing this forces a new resource to be created.
  final pulumi.Input<String> resourceGroupName;
  /// A `sku` block as defined below.
  final pulumi.Input<ElasticSanSku> sku;
  /// A mapping of tags which should be assigned to the Elastic SAN resource.
  final pulumi.Input<Map<String, String>>? tags;
  /// Logical zone for the Elastic SAN resource. Changing this forces a new resource to be created.
  ///
  /// > **Note:** `zones` cannot be specified if `sku.name` is set to `Premium_ZRS`.
  final pulumi.Input<List<String>>? zones;

  /// Creates a new [ElasticSanArgs].
  /// [baseSizeInTib] Specifies the base size of the Elastic SAN resource in TiB. Possible values are between `1` and `100`.
  /// [extendedSizeInTib] Specifies the extended size of the Elastic SAN resource in TiB. Possible values are between `1` and `100`.
  /// [location] The Azure Region where the Elastic SAN resource should exist. Changing this forces a new resource to be created.
  /// [name] Specifies the name of this Elastic SAN resource. Changing this forces a new resource to be created.
  /// [resourceGroupName] Specifies the name of the Resource Group within which this Elastic SAN resource should exist. Changing this forces a new resource to be created.
  /// [sku] A `sku` block as defined below.
  /// [tags] A mapping of tags which should be assigned to the Elastic SAN resource.
  /// [zones] Logical zone for the Elastic SAN resource. Changing this forces a new resource to be created.
  ElasticSanArgs({
    required this.baseSizeInTib,
    this.extendedSizeInTib,
    this.location,
    this.name,
    required this.resourceGroupName,
    required this.sku,
    this.tags,
    this.zones,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'baseSizeInTib': baseSizeInTib,
      'extendedSizeInTib': ?extendedSizeInTib,
      'location': ?location,
      'name': ?name,
      'resourceGroupName': resourceGroupName,
      'sku': pulumi.Input.mapInputValue<ElasticSanSku, Map<String, dynamic>>(sku, (value) => value.toMap()),
      'tags': ?tags,
      'zones': ?zones,
    };
  }

  factory ElasticSanArgs.fromMap(Map<String, dynamic> map) {
    return ElasticSanArgs(
      baseSizeInTib: (map['baseSizeInTib'] as int).input(),
      extendedSizeInTib: map['extendedSizeInTib'] == null ? null : (map['extendedSizeInTib']! as int).input(),
      location: map['location'] == null ? null : (map['location']! as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      sku: (ElasticSanSku.fromMap((map['sku'] as Map).cast<String, dynamic>())).input(),
      tags: map['tags'] == null ? null : ((map['tags']! as Map).cast<String, String>()).input(),
      zones: map['zones'] == null ? null : ((map['zones']! as List).cast<String>()).input(),
    );
  }
}

