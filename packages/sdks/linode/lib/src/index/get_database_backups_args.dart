// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_database_backups_filter.dart';

/// {@template pulumi_index_get_database_backups_get_database_backups_args_doc}
/// Arguments for getDatabaseBackups.
/// {@endtemplate}
/// {@macro pulumi_index_get_database_backups_get_database_backups_args_doc}
class GetDatabaseBackupsArgs {
  /// The ID of the database to retrieve backups for.
  final pulumi.Input<int> databaseId;

  /// The type of the database to retrieve backups for. (`mysql`, `postgresql`)
  final pulumi.Input<String> databaseType;
  final pulumi.Input<List<GetDatabaseBackupsFilter>>? filters;

  /// If true, only the latest backup will be returned.
  ///
  /// * `filter` - (Optional) A set of filters used to select database backups that meet certain requirements.
  final pulumi.Input<bool>? latest;

  /// The order in which results should be returned. (`asc`, `desc`; default `asc`)
  final pulumi.Input<String>? order;

  /// The attribute to order the results by. (`created`)
  final pulumi.Input<String>? orderBy;

  /// Creates a new [GetDatabaseBackupsArgs].
  /// [databaseId] The ID of the database to retrieve backups for.
  /// [databaseType] The type of the database to retrieve backups for. (`mysql`, `postgresql`)
  /// [filters] Optional.
  /// [latest] If true, only the latest backup will be returned.
  /// [order] The order in which results should be returned. (`asc`, `desc`; default `asc`)
  /// [orderBy] The attribute to order the results by. (`created`)
  GetDatabaseBackupsArgs({
    required this.databaseId,
    required this.databaseType,
    this.filters,
    this.latest,
    this.order,
    this.orderBy,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'databaseId': databaseId,
      'databaseType': databaseType,
      'filters':
          ?pulumi.Input.mapOptionalInputValue<
            List<GetDatabaseBackupsFilter>,
            List<Map<String, dynamic>>
          >(
            filters,
            (value) =>
                pulumi.Input.encodeList<
                  GetDatabaseBackupsFilter,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'latest': ?latest,
      'order': ?order,
      'orderBy': ?orderBy,
    };
  }

  factory GetDatabaseBackupsArgs.fromMap(Map<String, dynamic> map) {
    return GetDatabaseBackupsArgs(
      databaseId: pulumi.Input.fromValue(map['databaseId'] as int),
      databaseType: pulumi.Input.fromValue(map['databaseType'] as String),
      filters: (() {
        final guardedValue = map['filters'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<GetDatabaseBackupsFilter>(
            guardedValue,
            (value) => GetDatabaseBackupsFilter.fromMap(
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
