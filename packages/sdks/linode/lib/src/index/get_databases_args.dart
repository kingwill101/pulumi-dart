// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_databases_filter.dart';

/// {@template pulumi_index_get_databases_get_databases_args_doc}
/// Arguments for getDatabases.
/// {@endtemplate}
/// {@macro pulumi_index_get_databases_get_databases_args_doc}
class GetDatabasesArgs {
  final pulumi.Input<List<GetDatabasesFilter>>? filters;
  /// The order in which results should be returned. (`asc`, `desc`; default `asc`)
  final pulumi.Input<String>? order;
  /// The attribute to order the results by. (`version`)
  final pulumi.Input<String>? orderBy;

  /// Creates a new [GetDatabasesArgs].
  /// [filters] Optional.
  /// [order] The order in which results should be returned. (`asc`, `desc`; default `asc`)
  /// [orderBy] The attribute to order the results by. (`version`)
  GetDatabasesArgs({
    pulumi.Output<List<GetDatabasesFilter>>? filters,
    pulumi.Output<String>? order,
    pulumi.Output<String>? orderBy,
  }) :
      filters = pulumi.Input.asOptionalInput<List<GetDatabasesFilter>>(filters),
      order = pulumi.Input.asOptionalInput<String>(order),
      orderBy = pulumi.Input.asOptionalInput<String>(orderBy);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'filters': ?pulumi.Input.mapOptionalInputValue<List<GetDatabasesFilter>, List<Map<String, dynamic>>>(filters, (value) => pulumi.Input.encodeList<GetDatabasesFilter, Map<String, dynamic>>(value, (value) => value.toMap())),
      'order': ?order,
      'orderBy': ?orderBy,
    };
  }

  factory GetDatabasesArgs.fromMap(Map<String, dynamic> map) {
    return GetDatabasesArgs(
      filters: map['filters'] == null ? null : pulumi.Output.create<List<GetDatabasesFilter>>(pulumi.Input.decodeList<GetDatabasesFilter>(map['filters'], (value) => GetDatabasesFilter.fromMap((value as Map).cast<String, dynamic>()))),
      order: map['order'] == null ? null : pulumi.Output.create<String>(map['order'] as String),
      orderBy: map['orderBy'] == null ? null : pulumi.Output.create<String>(map['orderBy'] as String),
    );
  }
}

