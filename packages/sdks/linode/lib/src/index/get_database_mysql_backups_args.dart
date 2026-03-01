// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_database_mysql_backups_filter.dart';

/// {@template pulumi_index_get_database_mysql_backups_get_database_mysql_backups_args_doc}
/// Arguments for getDatabaseMysqlBackups.
/// {@endtemplate}
/// {@macro pulumi_index_get_database_mysql_backups_get_database_mysql_backups_args_doc}
class GetDatabaseMysqlBackupsArgs {
  /// The ID of the database to retrieve backups for.
  final pulumi.Input<int> databaseId;
  final pulumi.Input<List<GetDatabaseMysqlBackupsFilter>>? filters;
  /// If true, only the latest backup will be returned.
  ///
  /// * `filter` - (Optional) A set of filters used to select database backups that meet certain requirements.
  final pulumi.Input<bool>? latest;
  /// The order in which results should be returned. (`asc`, `desc`; default `asc`)
  final pulumi.Input<String>? order;
  /// The attribute to order the results by. (`created`)
  final pulumi.Input<String>? orderBy;

  /// Creates a new [GetDatabaseMysqlBackupsArgs].
  /// [databaseId] The ID of the database to retrieve backups for.
  /// [filters] Optional.
  /// [latest] If true, only the latest backup will be returned.
  /// [order] The order in which results should be returned. (`asc`, `desc`; default `asc`)
  /// [orderBy] The attribute to order the results by. (`created`)
  GetDatabaseMysqlBackupsArgs({
    required pulumi.Output<int> databaseId,
    pulumi.Output<List<GetDatabaseMysqlBackupsFilter>>? filters,
    pulumi.Output<bool>? latest,
    pulumi.Output<String>? order,
    pulumi.Output<String>? orderBy,
  }) :
      databaseId = pulumi.Input.asInput<int>(databaseId),
      filters = pulumi.Input.asOptionalInput<List<GetDatabaseMysqlBackupsFilter>>(filters),
      latest = pulumi.Input.asOptionalInput<bool>(latest),
      order = pulumi.Input.asOptionalInput<String>(order),
      orderBy = pulumi.Input.asOptionalInput<String>(orderBy);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'databaseId': databaseId,
      'filters': ?pulumi.Input.mapOptionalInputValue<List<GetDatabaseMysqlBackupsFilter>, List<Map<String, dynamic>>>(filters, (value) => pulumi.Input.encodeList<GetDatabaseMysqlBackupsFilter, Map<String, dynamic>>(value, (value) => value.toMap())),
      'latest': ?latest,
      'order': ?order,
      'orderBy': ?orderBy,
    };
  }

  factory GetDatabaseMysqlBackupsArgs.fromMap(Map<String, dynamic> map) {
    return GetDatabaseMysqlBackupsArgs(
      databaseId: pulumi.Output.create<int>(map['databaseId'] as int),
      filters: map['filters'] == null ? null : pulumi.Output.create<List<GetDatabaseMysqlBackupsFilter>>(pulumi.Input.decodeList<GetDatabaseMysqlBackupsFilter>(map['filters'], (value) => GetDatabaseMysqlBackupsFilter.fromMap((value as Map).cast<String, dynamic>()))),
      latest: map['latest'] == null ? null : pulumi.Output.create<bool>(map['latest'] as bool),
      order: map['order'] == null ? null : pulumi.Output.create<String>(map['order'] as String),
      orderBy: map['orderBy'] == null ? null : pulumi.Output.create<String>(map['orderBy'] as String),
    );
  }
}

