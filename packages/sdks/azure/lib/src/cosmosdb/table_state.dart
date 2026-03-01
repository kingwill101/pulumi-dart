// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'table_autoscale_settings.dart';

/// Input properties used for looking up and filtering Table resources.
class TableState {
  /// The name of the Cosmos DB Table to create the table within. Changing this forces a new resource to be created.
  final pulumi.Input<String>? accountName;
  /// An `autoscale_settings` block as defined below. This must be set upon database creation otherwise it cannot be updated without a manual destroy-apply.
  ///
  /// > **Note:** Switching between autoscale and manual throughput is not supported via this provider and must be completed via the Azure Portal and refreshed.
  final pulumi.Input<TableAutoscaleSettings>? autoscaleSettings;
  /// Specifies the name of the Cosmos DB Table. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// The name of the resource group in which the Cosmos DB Table is created. Changing this forces a new resource to be created.
  final pulumi.Input<String>? resourceGroupName;
  /// The throughput of Table (RU/s). Must be set in increments of `100`. The minimum value is `400`. This must be set upon database creation otherwise it cannot be updated without a manual resource destroy-apply.
  ///
  /// > **Note:** throughput has a maximum value of `1000000` unless a higher limit is requested via Azure Support
  final pulumi.Input<int>? throughput;

  /// Creates a new [TableState].
  /// [accountName] The name of the Cosmos DB Table to create the table within. Changing this forces a new resource to be created.
  /// [autoscaleSettings] An `autoscale_settings` block as defined below. This must be set upon database creation otherwise it cannot be updated without a manual destroy-apply.
  /// [name] Specifies the name of the Cosmos DB Table. Changing this forces a new resource to be created.
  /// [resourceGroupName] The name of the resource group in which the Cosmos DB Table is created. Changing this forces a new resource to be created.
  /// [throughput] The throughput of Table (RU/s). Must be set in increments of `100`. The minimum value is `400`. This must be set upon database creation otherwise it cannot be updated without a manual resource destroy-apply.
  TableState({
    pulumi.Output<String>? accountName,
    pulumi.Output<TableAutoscaleSettings>? autoscaleSettings,
    pulumi.Output<String>? name,
    pulumi.Output<String>? resourceGroupName,
    pulumi.Output<int>? throughput,
  }) :
      accountName = pulumi.Input.asOptionalInput<String>(accountName),
      autoscaleSettings = pulumi.Input.asOptionalInput<TableAutoscaleSettings>(autoscaleSettings),
      name = pulumi.Input.asOptionalInput<String>(name),
      resourceGroupName = pulumi.Input.asOptionalInput<String>(resourceGroupName),
      throughput = pulumi.Input.asOptionalInput<int>(throughput);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountName': ?accountName,
      'autoscaleSettings': ?pulumi.Input.mapOptionalInputValue<TableAutoscaleSettings, Map<String, dynamic>>(autoscaleSettings, (value) => value.toMap()),
      'name': ?name,
      'resourceGroupName': ?resourceGroupName,
      'throughput': ?throughput,
    };
  }

  factory TableState.fromMap(Map<String, dynamic> map) {
    return TableState(
      accountName: map['accountName'] == null ? null : pulumi.Output.create<String>(map['accountName'] as String),
      autoscaleSettings: map['autoscaleSettings'] == null ? null : pulumi.Output.create<TableAutoscaleSettings>(TableAutoscaleSettings.fromMap((map['autoscaleSettings'] as Map).cast<String, dynamic>())),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      resourceGroupName: map['resourceGroupName'] == null ? null : pulumi.Output.create<String>(map['resourceGroupName'] as String),
      throughput: map['throughput'] == null ? null : pulumi.Output.create<int>(map['throughput'] as int),
    );
  }
}

