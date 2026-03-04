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
  GetDatabasesArgs({this.filters, this.order, this.orderBy});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'filters':
          ?pulumi.Input.mapOptionalInputValue<
            List<GetDatabasesFilter>,
            List<Map<String, dynamic>>
          >(
            filters,
            (value) =>
                pulumi.Input.encodeList<
                  GetDatabasesFilter,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'order': ?order,
      'orderBy': ?orderBy,
    };
  }

  factory GetDatabasesArgs.fromMap(Map<String, dynamic> map) {
    return GetDatabasesArgs(
      filters: (() {
        final guardedValue = map['filters'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<GetDatabasesFilter>(
            guardedValue,
            (value) => GetDatabasesFilter.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      order: (() {
        final guardedValue = map['order'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      orderBy: (() {
        final guardedValue = map['orderBy'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
