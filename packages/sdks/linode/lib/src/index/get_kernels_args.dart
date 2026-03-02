// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_kernels_filter.dart';

/// {@template pulumi_index_get_kernels_get_kernels_args_doc}
/// Arguments for getKernels.
/// {@endtemplate}
/// {@macro pulumi_index_get_kernels_get_kernels_args_doc}
class GetKernelsArgs {
  final pulumi.Input<List<GetKernelsFilter>>? filters;
  /// The order in which results should be returned. (`asc`, `desc`; default `asc`)
  final pulumi.Input<String>? order;
  /// The attribute to order the results by. See the Filterable Fields section for a list of valid fields.
  final pulumi.Input<String>? orderBy;

  /// Creates a new [GetKernelsArgs].
  /// [filters] Optional.
  /// [order] The order in which results should be returned. (`asc`, `desc`; default `asc`)
  /// [orderBy] The attribute to order the results by. See the Filterable Fields section for a list of valid fields.
  GetKernelsArgs({
    this.filters,
    this.order,
    this.orderBy,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'filters': ?pulumi.Input.mapOptionalInputValue<List<GetKernelsFilter>, List<Map<String, dynamic>>>(filters, (value) => pulumi.Input.encodeList<GetKernelsFilter, Map<String, dynamic>>(value, (value) => value.toMap())),
      'order': ?order,
      'orderBy': ?orderBy,
    };
  }

  factory GetKernelsArgs.fromMap(Map<String, dynamic> map) {
    return GetKernelsArgs(
      filters: map['filters'] == null ? null : (pulumi.Input.decodeList<GetKernelsFilter>(map['filters'], (value) => GetKernelsFilter.fromMap((value as Map).cast<String, dynamic>()))).input(),
      order: map['order'] == null ? null : (map['order'] as String).input(),
      orderBy: map['orderBy'] == null ? null : (map['orderBy'] as String).input(),
    );
  }
}

