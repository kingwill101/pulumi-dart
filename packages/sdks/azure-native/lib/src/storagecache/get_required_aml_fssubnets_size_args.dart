// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'sku_name.dart';

/// {@template pulumi_storagecache_get_required_aml_fssubnets_size_args_doc}
/// Arguments for getRequiredAmlFSSubnetsSize.
/// {@endtemplate}
/// {@macro pulumi_storagecache_get_required_aml_fssubnets_size_args_doc}
class GetRequiredAmlFSSubnetsSizeArgs {
  /// SKU for the resource.
  final pulumi.Input<SkuName?>? sku;
  /// The size of the AML file system, in TiB.
  final pulumi.Input<double?>? storageCapacityTiB;

  /// Creates a new [GetRequiredAmlFSSubnetsSizeArgs].
  /// [sku] SKU for the resource.
  /// [storageCapacityTiB] The size of the AML file system, in TiB.
  const GetRequiredAmlFSSubnetsSizeArgs({
    this.sku,
    this.storageCapacityTiB,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'sku': ?pulumi.Input.mapOptionalInputValue<SkuName, Map<String, dynamic>>(sku, (value) => value.toMap()),
      'storageCapacityTiB': ?storageCapacityTiB,
    };
  }

  factory GetRequiredAmlFSSubnetsSizeArgs.fromMap(Map<String, dynamic> map) {
    return GetRequiredAmlFSSubnetsSizeArgs(
      sku: (() { final guardedValue = map['sku']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SkuName.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      storageCapacityTiB: (() { final guardedValue = map['storageCapacityTiB']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
    );
  }
}
