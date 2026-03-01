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
    required pulumi.Output<int> databaseId,
    required pulumi.Output<String> databaseType,
    pulumi.Output<List<GetDatabaseBackupsFilter>>? filters,
    pulumi.Output<bool>? latest,
    pulumi.Output<String>? order,
    pulumi.Output<String>? orderBy,
  }) :
      databaseId = pulumi.Input.asInput<int>(databaseId),
      databaseType = pulumi.Input.asInput<String>(databaseType),
      filters = pulumi.Input.asOptionalInput<List<GetDatabaseBackupsFilter>>(filters),
      latest = pulumi.Input.asOptionalInput<bool>(latest),
      order = pulumi.Input.asOptionalInput<String>(order),
      orderBy = pulumi.Input.asOptionalInput<String>(orderBy);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'databaseId': databaseId,
      'databaseType': databaseType,
      'filters': ?pulumi.Input.mapOptionalInputValue<List<GetDatabaseBackupsFilter>, List<Map<String, dynamic>>>(filters, (value) => pulumi.Input.encodeList<GetDatabaseBackupsFilter, Map<String, dynamic>>(value, (value) => value.toMap())),
      'latest': ?latest,
      'order': ?order,
      'orderBy': ?orderBy,
    };
  }

  factory GetDatabaseBackupsArgs.fromMap(Map<String, dynamic> map) {
    return GetDatabaseBackupsArgs(
      databaseId: pulumi.Output.create<int>(map['databaseId'] as int),
      databaseType: pulumi.Output.create<String>(map['databaseType'] as String),
      filters: map['filters'] == null ? null : pulumi.Output.create<List<GetDatabaseBackupsFilter>>(pulumi.Input.decodeList<GetDatabaseBackupsFilter>(map['filters'], (value) => GetDatabaseBackupsFilter.fromMap((value as Map).cast<String, dynamic>()))),
      latest: map['latest'] == null ? null : pulumi.Output.create<bool>(map['latest'] as bool),
      order: map['order'] == null ? null : pulumi.Output.create<String>(map['order'] as String),
      orderBy: map['orderBy'] == null ? null : pulumi.Output.create<String>(map['orderBy'] as String),
    );
  }
}

