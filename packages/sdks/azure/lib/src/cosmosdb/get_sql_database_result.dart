// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_sql_database_autoscale_setting.dart';

/// Result data returned by getSqlDatabase.
class GetSqlDatabaseResult {
  final String? accountName;
  /// An `autoscaleSettings` block as defined below.
  final List<GetSqlDatabaseAutoscaleSetting>? autoscaleSettings;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final String? name;
  final String? resourceGroupName;
  /// The throughput of SQL database (RU/s).
  final int? throughput;

  /// Creates a new [GetSqlDatabaseResult].
  /// [accountName] Optional.
  /// [autoscaleSettings] An `autoscaleSettings` block as defined below.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [name] Optional.
  /// [resourceGroupName] Optional.
  /// [throughput] The throughput of SQL database (RU/s).
  const GetSqlDatabaseResult({
    this.accountName,
    this.autoscaleSettings,
    this.id,
    this.name,
    this.resourceGroupName,
    this.throughput,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountName': ?accountName,
      'autoscaleSettings': ?(() { final guardedValue = autoscaleSettings; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetSqlDatabaseAutoscaleSetting, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'id': ?id,
      'name': ?name,
      'resourceGroupName': ?resourceGroupName,
      'throughput': ?throughput,
    };
  }

  factory GetSqlDatabaseResult.fromMap(Map<String, dynamic> map) {
    return GetSqlDatabaseResult(
      accountName: (() { final guardedValue = map['accountName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      autoscaleSettings: (() { final guardedValue = map['autoscaleSettings']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetSqlDatabaseAutoscaleSetting>(guardedValue, (value) => GetSqlDatabaseAutoscaleSetting.fromMap((value as Map).cast<String, dynamic>())); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      resourceGroupName: (() { final guardedValue = map['resourceGroupName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      throughput: (() { final guardedValue = map['throughput']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
    );
  }
}
