// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'gremlin_database_autoscale_settings.dart';

/// Input properties used for looking up and filtering GremlinDatabase resources.
class GremlinDatabaseState {
  /// The name of the CosmosDB Account to create the Gremlin Database within. Changing this forces a new resource to be created.
  final pulumi.Input<String>? accountName;
  /// An `autoscale_settings` block as defined below. This must be set upon database creation otherwise it cannot be updated without a manual destroy-apply.
  ///
  /// > **Note:** Switching between autoscale and manual throughput is not supported via this provider and must be completed via the Azure Portal and refreshed.
  final pulumi.Input<GremlinDatabaseAutoscaleSettings>? autoscaleSettings;
  /// Specifies the name of the Cosmos DB Gremlin Database. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// The name of the resource group in which the Cosmos DB Gremlin Database is created. Changing this forces a new resource to be created.
  final pulumi.Input<String>? resourceGroupName;
  /// The throughput of the Gremlin database (RU/s). Must be set in increments of `100`. The minimum value is `400`. This must be set upon database creation otherwise it cannot be updated without a manual resource destroy-apply.
  ///
  /// > **Note:** throughput has a maximum value of `1000000` unless a higher limit is requested via Azure Support
  final pulumi.Input<int>? throughput;

  /// Creates a new [GremlinDatabaseState].
  /// [accountName] The name of the CosmosDB Account to create the Gremlin Database within. Changing this forces a new resource to be created.
  /// [autoscaleSettings] An `autoscale_settings` block as defined below. This must be set upon database creation otherwise it cannot be updated without a manual destroy-apply.
  /// [name] Specifies the name of the Cosmos DB Gremlin Database. Changing this forces a new resource to be created.
  /// [resourceGroupName] The name of the resource group in which the Cosmos DB Gremlin Database is created. Changing this forces a new resource to be created.
  /// [throughput] The throughput of the Gremlin database (RU/s). Must be set in increments of `100`. The minimum value is `400`. This must be set upon database creation otherwise it cannot be updated without a manual resource destroy-apply.
  GremlinDatabaseState({
    pulumi.Output<String>? accountName,
    pulumi.Output<GremlinDatabaseAutoscaleSettings>? autoscaleSettings,
    pulumi.Output<String>? name,
    pulumi.Output<String>? resourceGroupName,
    pulumi.Output<int>? throughput,
  }) :
      accountName = pulumi.Input.asOptionalInput<String>(accountName),
      autoscaleSettings = pulumi.Input.asOptionalInput<GremlinDatabaseAutoscaleSettings>(autoscaleSettings),
      name = pulumi.Input.asOptionalInput<String>(name),
      resourceGroupName = pulumi.Input.asOptionalInput<String>(resourceGroupName),
      throughput = pulumi.Input.asOptionalInput<int>(throughput);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountName': ?accountName,
      'autoscaleSettings': ?pulumi.Input.mapOptionalInputValue<GremlinDatabaseAutoscaleSettings, Map<String, dynamic>>(autoscaleSettings, (value) => value.toMap()),
      'name': ?name,
      'resourceGroupName': ?resourceGroupName,
      'throughput': ?throughput,
    };
  }

  factory GremlinDatabaseState.fromMap(Map<String, dynamic> map) {
    return GremlinDatabaseState(
      accountName: map['accountName'] == null ? null : pulumi.Output.create<String>(map['accountName'] as String),
      autoscaleSettings: map['autoscaleSettings'] == null ? null : pulumi.Output.create<GremlinDatabaseAutoscaleSettings>(GremlinDatabaseAutoscaleSettings.fromMap((map['autoscaleSettings'] as Map).cast<String, dynamic>())),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      resourceGroupName: map['resourceGroupName'] == null ? null : pulumi.Output.create<String>(map['resourceGroupName'] as String),
      throughput: map['throughput'] == null ? null : pulumi.Output.create<int>(map['throughput'] as int),
    );
  }
}

