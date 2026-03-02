// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'sql_database_autoscale_settings.dart';

/// {@template pulumi_cosmosdb_sql_database_sql_database_args_doc}
/// The set of arguments for SqlDatabase.
/// {@endtemplate}
/// {@macro pulumi_cosmosdb_sql_database_sql_database_args_doc}
class SqlDatabaseArgs {
  /// The name of the Cosmos DB SQL Database to create the table within. Changing this forces a new resource to be created.
  final pulumi.Input<String> accountName;
  /// An `autoscale_settings` block as defined below. This must be set upon database creation otherwise it cannot be updated without a manual destroy-apply.
  ///
  /// > **Note:** Switching between autoscale and manual throughput is not supported via this provider and must be completed via the Azure Portal and refreshed.
  final pulumi.Input<SqlDatabaseAutoscaleSettings>? autoscaleSettings;
  /// Specifies the name of the Cosmos DB SQL Database. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// The name of the resource group in which the Cosmos DB SQL Database is created. Changing this forces a new resource to be created.
  final pulumi.Input<String> resourceGroupName;
  /// The throughput of SQL database (RU/s). Must be set in increments of `100`. The minimum value is `400`. This must be set upon database creation otherwise it cannot be updated without a manual terraform destroy-apply. Do not set when `azure.cosmosdb.Account` is configured with `EnableServerless` capability.
  ///
  /// > **Note:** Throughput has a maximum value of `1000000` unless a higher limit is requested via Azure Support
  final pulumi.Input<int>? throughput;

  /// Creates a new [SqlDatabaseArgs].
  /// [accountName] The name of the Cosmos DB SQL Database to create the table within. Changing this forces a new resource to be created.
  /// [autoscaleSettings] An `autoscale_settings` block as defined below. This must be set upon database creation otherwise it cannot be updated without a manual destroy-apply.
  /// [name] Specifies the name of the Cosmos DB SQL Database. Changing this forces a new resource to be created.
  /// [resourceGroupName] The name of the resource group in which the Cosmos DB SQL Database is created. Changing this forces a new resource to be created.
  /// [throughput] The throughput of SQL database (RU/s). Must be set in increments of `100`. The minimum value is `400`. This must be set upon database creation otherwise it cannot be updated without a manual terraform destroy-apply. Do not set when `azure.cosmosdb.Account` is configured with `EnableServerless` capability.
  SqlDatabaseArgs({
    required this.accountName,
    this.autoscaleSettings,
    this.name,
    required this.resourceGroupName,
    this.throughput,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountName': accountName,
      'autoscaleSettings': ?pulumi.Input.mapOptionalInputValue<SqlDatabaseAutoscaleSettings, Map<String, dynamic>>(autoscaleSettings, (value) => value.toMap()),
      'name': ?name,
      'resourceGroupName': resourceGroupName,
      'throughput': ?throughput,
    };
  }

  factory SqlDatabaseArgs.fromMap(Map<String, dynamic> map) {
    return SqlDatabaseArgs(
      accountName: (map['accountName'] as String).input(),
      autoscaleSettings: map['autoscaleSettings'] == null ? null : (SqlDatabaseAutoscaleSettings.fromMap((map['autoscaleSettings']! as Map).cast<String, dynamic>())).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      throughput: map['throughput'] == null ? null : (map['throughput']! as int).input(),
    );
  }
}

