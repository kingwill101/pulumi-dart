// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_sql_database_autoscale_setting.dart';

/// Result data returned by getSqlDatabase.
class GetSqlDatabaseResult {
  final String accountName;
  /// An `autoscale_settings` block as defined below.
  final List<GetSqlDatabaseAutoscaleSetting> autoscaleSettings;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String name;
  final String resourceGroupName;
  /// The throughput of SQL database (RU/s).
  final int throughput;

  /// Creates a new [GetSqlDatabaseResult].
  /// [accountName] Required.
  /// [autoscaleSettings] An `autoscale_settings` block as defined below.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [name] Required.
  /// [resourceGroupName] Required.
  /// [throughput] The throughput of SQL database (RU/s).
  const GetSqlDatabaseResult({
    required this.accountName,
    required this.autoscaleSettings,
    required this.id,
    required this.name,
    required this.resourceGroupName,
    required this.throughput,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountName': accountName,
      'autoscaleSettings': pulumi.Input.encodeList<GetSqlDatabaseAutoscaleSetting, Map<String, dynamic>>(autoscaleSettings, (value) => value.toMap()),
      'id': id,
      'name': name,
      'resourceGroupName': resourceGroupName,
      'throughput': throughput,
    };
  }

  factory GetSqlDatabaseResult.fromMap(Map<String, dynamic> map) {
    return GetSqlDatabaseResult(
      accountName: map['accountName'] as String,
      autoscaleSettings: pulumi.Input.decodeList<GetSqlDatabaseAutoscaleSetting>(map['autoscaleSettings']!, (value) => GetSqlDatabaseAutoscaleSetting.fromMap((value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      name: map['name'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      throughput: map['throughput'] as int,
    );
  }
}

