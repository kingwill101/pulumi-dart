// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cassandra_keyspace_autoscale_settings.dart';

/// {@template pulumi_cosmosdb_cassandra_keyspace_cassandra_keyspace_args_doc}
/// The set of arguments for CassandraKeyspace.
/// {@endtemplate}
/// {@macro pulumi_cosmosdb_cassandra_keyspace_cassandra_keyspace_args_doc}
class CassandraKeyspaceArgs {
  /// The name of the Cosmos DB Cassandra KeySpace to create the table within. Changing this forces a new resource to be created.
  final pulumi.Input<String> accountName;
  /// An `autoscale_settings` block as defined below. This must be set upon database creation otherwise it cannot be updated without a manual destroy-apply.
  ///
  /// > **Note:** Switching between autoscale and manual throughput is not supported via this provider and must be completed via the Azure Portal and refreshed.
  final pulumi.Input<CassandraKeyspaceAutoscaleSettings>? autoscaleSettings;
  /// Specifies the name of the Cosmos DB Cassandra KeySpace. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// The name of the resource group in which the Cosmos DB Cassandra KeySpace is created. Changing this forces a new resource to be created.
  final pulumi.Input<String> resourceGroupName;
  /// The throughput of Cassandra KeySpace (RU/s). Must be set in increments of `100`. The minimum value is `400`. This must be set upon database creation otherwise it cannot be updated without a manual resource destroy-apply.
  final pulumi.Input<int>? throughput;

  /// Creates a new [CassandraKeyspaceArgs].
  /// [accountName] The name of the Cosmos DB Cassandra KeySpace to create the table within. Changing this forces a new resource to be created.
  /// [autoscaleSettings] An `autoscale_settings` block as defined below. This must be set upon database creation otherwise it cannot be updated without a manual destroy-apply.
  /// [name] Specifies the name of the Cosmos DB Cassandra KeySpace. Changing this forces a new resource to be created.
  /// [resourceGroupName] The name of the resource group in which the Cosmos DB Cassandra KeySpace is created. Changing this forces a new resource to be created.
  /// [throughput] The throughput of Cassandra KeySpace (RU/s). Must be set in increments of `100`. The minimum value is `400`. This must be set upon database creation otherwise it cannot be updated without a manual resource destroy-apply.
  CassandraKeyspaceArgs({
    required this.accountName,
    this.autoscaleSettings,
    this.name,
    required this.resourceGroupName,
    this.throughput,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountName': accountName,
      'autoscaleSettings': ?pulumi.Input.mapOptionalInputValue<CassandraKeyspaceAutoscaleSettings, Map<String, dynamic>>(autoscaleSettings, (value) => value.toMap()),
      'name': ?name,
      'resourceGroupName': resourceGroupName,
      'throughput': ?throughput,
    };
  }

  factory CassandraKeyspaceArgs.fromMap(Map<String, dynamic> map) {
    return CassandraKeyspaceArgs(
      accountName: (map['accountName'] as String).input(),
      autoscaleSettings: map['autoscaleSettings'] == null ? null : (CassandraKeyspaceAutoscaleSettings.fromMap((map['autoscaleSettings']! as Map).cast<String, dynamic>())).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      throughput: map['throughput'] == null ? null : (map['throughput']! as int).input(),
    );
  }
}

