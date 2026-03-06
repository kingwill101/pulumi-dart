// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_droplets_filter.dart';
import 'get_droplets_sort.dart';

/// {@template pulumi_index_get_droplets_get_droplets_args_doc}
/// Arguments for getDroplets.
/// {@endtemplate}
/// {@macro pulumi_index_get_droplets_get_droplets_args_doc}
class GetDropletsArgs {
  /// Filter the results.
  /// The `filter` block is documented below.
  final pulumi.Input<List<GetDropletsFilter>>? filters;
  /// A boolean value specifying whether or not to list GPU Droplets
  final pulumi.Input<bool>? gpus;
  /// Sort the results.
  /// The `sort` block is documented below.
  final pulumi.Input<List<GetDropletsSort>>? sorts;

  /// Creates a new [GetDropletsArgs].
  /// [filters] Filter the results.
  /// [gpus] A boolean value specifying whether or not to list GPU Droplets
  /// [sorts] Sort the results.
  const GetDropletsArgs({
    this.filters,
    this.gpus,
    this.sorts,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'filters': ?pulumi.Input.mapOptionalInputValue<List<GetDropletsFilter>, List<Map<String, dynamic>>>(filters, (value) => pulumi.Input.encodeList<GetDropletsFilter, Map<String, dynamic>>(value, (value) => value.toMap())),
      'gpus': ?gpus,
      'sorts': ?pulumi.Input.mapOptionalInputValue<List<GetDropletsSort>, List<Map<String, dynamic>>>(sorts, (value) => pulumi.Input.encodeList<GetDropletsSort, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetDropletsArgs.fromMap(Map<String, dynamic> map) {
    return GetDropletsArgs(
      filters: (() { final guardedValue = map['filters']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<GetDropletsFilter>(guardedValue, (value) => GetDropletsFilter.fromMap((value as Map).cast<String, dynamic>()))); })(),
      gpus: (() { final guardedValue = map['gpus']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      sorts: (() { final guardedValue = map['sorts']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<GetDropletsSort>(guardedValue, (value) => GetDropletsSort.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}

