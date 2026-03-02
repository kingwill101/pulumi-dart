// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'gremlin_database_autoscale_settings.dart';

/// {@template pulumi_cosmosdb_gremlin_database_gremlin_database_args_doc}
/// The set of arguments for GremlinDatabase.
/// {@endtemplate}
/// {@macro pulumi_cosmosdb_gremlin_database_gremlin_database_args_doc}
class GremlinDatabaseArgs {
  /// The name of the CosmosDB Account to create the Gremlin Database within. Changing this forces a new resource to be created.
  final pulumi.Input<String> accountName;
  /// An `autoscale_settings` block as defined below. This must be set upon database creation otherwise it cannot be updated without a manual destroy-apply.
  ///
  /// > **Note:** Switching between autoscale and manual throughput is not supported via this provider and must be completed via the Azure Portal and refreshed.
  final pulumi.Input<GremlinDatabaseAutoscaleSettings>? autoscaleSettings;
  /// Specifies the name of the Cosmos DB Gremlin Database. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// The name of the resource group in which the Cosmos DB Gremlin Database is created. Changing this forces a new resource to be created.
  final pulumi.Input<String> resourceGroupName;
  /// The throughput of the Gremlin database (RU/s). Must be set in increments of `100`. The minimum value is `400`. This must be set upon database creation otherwise it cannot be updated without a manual resource destroy-apply.
  ///
  /// > **Note:** throughput has a maximum value of `1000000` unless a higher limit is requested via Azure Support
  final pulumi.Input<int>? throughput;

  /// Creates a new [GremlinDatabaseArgs].
  /// [accountName] The name of the CosmosDB Account to create the Gremlin Database within. Changing this forces a new resource to be created.
  /// [autoscaleSettings] An `autoscale_settings` block as defined below. This must be set upon database creation otherwise it cannot be updated without a manual destroy-apply.
  /// [name] Specifies the name of the Cosmos DB Gremlin Database. Changing this forces a new resource to be created.
  /// [resourceGroupName] The name of the resource group in which the Cosmos DB Gremlin Database is created. Changing this forces a new resource to be created.
  /// [throughput] The throughput of the Gremlin database (RU/s). Must be set in increments of `100`. The minimum value is `400`. This must be set upon database creation otherwise it cannot be updated without a manual resource destroy-apply.
  GremlinDatabaseArgs({
    required this.accountName,
    this.autoscaleSettings,
    this.name,
    required this.resourceGroupName,
    this.throughput,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountName': accountName,
      'autoscaleSettings': ?pulumi.Input.mapOptionalInputValue<GremlinDatabaseAutoscaleSettings, Map<String, dynamic>>(autoscaleSettings, (value) => value.toMap()),
      'name': ?name,
      'resourceGroupName': resourceGroupName,
      'throughput': ?throughput,
    };
  }

  factory GremlinDatabaseArgs.fromMap(Map<String, dynamic> map) {
    return GremlinDatabaseArgs(
      accountName: (map['accountName'] as String).input(),
      autoscaleSettings: map['autoscaleSettings'] == null ? null : (GremlinDatabaseAutoscaleSettings.fromMap((map['autoscaleSettings']! as Map).cast<String, dynamic>())).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      throughput: map['throughput'] == null ? null : (map['throughput']! as int).input(),
    );
  }
}

