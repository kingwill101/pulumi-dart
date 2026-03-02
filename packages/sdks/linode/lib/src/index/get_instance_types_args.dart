// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_instance_types_filter.dart';

/// {@template pulumi_index_get_instance_types_get_instance_types_args_doc}
/// Arguments for getInstanceTypes.
/// {@endtemplate}
/// {@macro pulumi_index_get_instance_types_get_instance_types_args_doc}
class GetInstanceTypesArgs {
  final pulumi.Input<List<GetInstanceTypesFilter>>? filters;
  /// The order in which results should be returned. (`asc`, `desc`; default `asc`)
  final pulumi.Input<String>? order;
  /// The attribute to order the results by. See the Filterable Fields section for a list of valid fields.
  final pulumi.Input<String>? orderBy;

  /// Creates a new [GetInstanceTypesArgs].
  /// [filters] Optional.
  /// [order] The order in which results should be returned. (`asc`, `desc`; default `asc`)
  /// [orderBy] The attribute to order the results by. See the Filterable Fields section for a list of valid fields.
  GetInstanceTypesArgs({
    this.filters,
    this.order,
    this.orderBy,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'filters': ?pulumi.Input.mapOptionalInputValue<List<GetInstanceTypesFilter>, List<Map<String, dynamic>>>(filters, (value) => pulumi.Input.encodeList<GetInstanceTypesFilter, Map<String, dynamic>>(value, (value) => value.toMap())),
      'order': ?order,
      'orderBy': ?orderBy,
    };
  }

  factory GetInstanceTypesArgs.fromMap(Map<String, dynamic> map) {
    return GetInstanceTypesArgs(
      filters: map['filters'] == null ? null : (pulumi.Input.decodeList<GetInstanceTypesFilter>(map['filters']!, (value) => GetInstanceTypesFilter.fromMap((value as Map).cast<String, dynamic>()))).input(),
      order: map['order'] == null ? null : (map['order']! as String).input(),
      orderBy: map['orderBy'] == null ? null : (map['orderBy']! as String).input(),
    );
  }
}

