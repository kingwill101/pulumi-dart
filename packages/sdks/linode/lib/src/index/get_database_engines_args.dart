// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_database_engines_filter.dart';

/// {@template pulumi_index_get_database_engines_get_database_engines_args_doc}
/// Arguments for getDatabaseEngines.
/// {@endtemplate}
/// {@macro pulumi_index_get_database_engines_get_database_engines_args_doc}
class GetDatabaseEnginesArgs {
  final pulumi.Input<List<GetDatabaseEnginesFilter>>? filters;

  /// If true, only the latest engine version will be returned.
  ///
  /// * `filter` - (Optional) A set of filters used to select engines that meet certain requirements.
  final pulumi.Input<bool>? latest;

  /// The order in which results should be returned. (`asc`, `desc`; default `asc`)
  final pulumi.Input<String>? order;

  /// The attribute to order the results by. (`version`)
  final pulumi.Input<String>? orderBy;

  /// Creates a new [GetDatabaseEnginesArgs].
  /// [filters] Optional.
  /// [latest] If true, only the latest engine version will be returned.
  /// [order] The order in which results should be returned. (`asc`, `desc`; default `asc`)
  /// [orderBy] The attribute to order the results by. (`version`)
  GetDatabaseEnginesArgs({this.filters, this.latest, this.order, this.orderBy});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'filters':
          ?pulumi.Input.mapOptionalInputValue<
            List<GetDatabaseEnginesFilter>,
            List<Map<String, dynamic>>
          >(
            filters,
            (value) =>
                pulumi.Input.encodeList<
                  GetDatabaseEnginesFilter,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'latest': ?latest,
      'order': ?order,
      'orderBy': ?orderBy,
    };
  }

  factory GetDatabaseEnginesArgs.fromMap(Map<String, dynamic> map) {
    return GetDatabaseEnginesArgs(
      filters: (() {
        final guardedValue = map['filters'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<GetDatabaseEnginesFilter>(
            guardedValue,
            (value) => GetDatabaseEnginesFilter.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      latest: (() {
        final guardedValue = map['latest'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
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
