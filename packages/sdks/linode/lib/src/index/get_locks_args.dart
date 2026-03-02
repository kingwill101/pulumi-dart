// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_locks_filter.dart';

/// {@template pulumi_index_get_locks_get_locks_args_doc}
/// Arguments for getLocks.
/// {@endtemplate}
/// {@macro pulumi_index_get_locks_get_locks_args_doc}
class GetLocksArgs {
  final pulumi.Input<List<GetLocksFilter>>? filters;
  /// The order in which results should be returned. (`asc`, `desc`; default `asc`)
  final pulumi.Input<String>? order;
  /// The attribute to order the results by. See the Filterable Fields section for a list of valid fields.
  final pulumi.Input<String>? orderBy;

  /// Creates a new [GetLocksArgs].
  /// [filters] Optional.
  /// [order] The order in which results should be returned. (`asc`, `desc`; default `asc`)
  /// [orderBy] The attribute to order the results by. See the Filterable Fields section for a list of valid fields.
  GetLocksArgs({
    this.filters,
    this.order,
    this.orderBy,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'filters': ?pulumi.Input.mapOptionalInputValue<List<GetLocksFilter>, List<Map<String, dynamic>>>(filters, (value) => pulumi.Input.encodeList<GetLocksFilter, Map<String, dynamic>>(value, (value) => value.toMap())),
      'order': ?order,
      'orderBy': ?orderBy,
    };
  }

  factory GetLocksArgs.fromMap(Map<String, dynamic> map) {
    return GetLocksArgs(
      filters: map['filters'] == null ? null : (pulumi.Input.decodeList<GetLocksFilter>(map['filters'], (value) => GetLocksFilter.fromMap((value as Map).cast<String, dynamic>()))).input(),
      order: map['order'] == null ? null : (map['order'] as String).input(),
      orderBy: map['orderBy'] == null ? null : (map['orderBy'] as String).input(),
    );
  }
}

