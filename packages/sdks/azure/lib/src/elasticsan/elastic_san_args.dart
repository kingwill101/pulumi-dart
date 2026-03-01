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
    required pulumi.Output<int> baseSizeInTib,
    pulumi.Output<int>? extendedSizeInTib,
    pulumi.Output<String>? location,
    pulumi.Output<String>? name,
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<ElasticSanSku> sku,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<List<String>>? zones,
  }) :
      baseSizeInTib = pulumi.Input.asInput<int>(baseSizeInTib),
      extendedSizeInTib = pulumi.Input.asOptionalInput<int>(extendedSizeInTib),
      location = pulumi.Input.asOptionalInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      sku = pulumi.Input.asInput<ElasticSanSku>(sku),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      zones = pulumi.Input.asOptionalInput<List<String>>(zones);

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
      baseSizeInTib: pulumi.Output.create<int>(map['baseSizeInTib'] as int),
      extendedSizeInTib: map['extendedSizeInTib'] == null ? null : pulumi.Output.create<int>(map['extendedSizeInTib'] as int),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      sku: pulumi.Output.create<ElasticSanSku>(ElasticSanSku.fromMap((map['sku'] as Map).cast<String, dynamic>())),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      zones: map['zones'] == null ? null : pulumi.Output.create<List<String>>((map['zones'] as List).cast<String>()),
    );
  }
}

