// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'table_autoscale_settings.dart';

/// Input properties used for looking up and filtering Table resources.
class TableState {
  /// The name of the Cosmos DB Table to create the table within. Changing this forces a new resource to be created.
  final pulumi.Input<String?>? accountName;
  /// An `autoscaleSettings` block as defined below. This must be set upon database creation otherwise it cannot be updated without a manual destroy-apply.
  ///
  /// &gt; **Note:** Switching between autoscale and manual throughput is not supported via this provider and must be completed via the Azure Portal and refreshed.
  final pulumi.Input<TableAutoscaleSettings?>? autoscaleSettings;
  /// Specifies the name of the Cosmos DB Table. Changing this forces a new resource to be created.
  final pulumi.Input<String?>? name;
  /// The name of the resource group in which the Cosmos DB Table is created. Changing this forces a new resource to be created.
  final pulumi.Input<String?>? resourceGroupName;
  /// The throughput of Table (RU/s). Must be set in increments of `100`. The minimum value is `400`. This must be set upon database creation otherwise it cannot be updated without a manual resource destroy-apply.
  ///
  /// &gt; **Note:** throughput has a maximum value of `1000000` unless a higher limit is requested via Azure Support
  final pulumi.Input<int?>? throughput;

  /// Creates a new [TableState].
  /// [accountName] The name of the Cosmos DB Table to create the table within. Changing this forces a new resource to be created.
  /// [autoscaleSettings] An `autoscaleSettings` block as defined below. This must be set upon database creation otherwise it cannot be updated without a manual destroy-apply.
  /// [name] Specifies the name of the Cosmos DB Table. Changing this forces a new resource to be created.
  /// [resourceGroupName] The name of the resource group in which the Cosmos DB Table is created. Changing this forces a new resource to be created.
  /// [throughput] The throughput of Table (RU/s). Must be set in increments of `100`. The minimum value is `400`. This must be set upon database creation otherwise it cannot be updated without a manual resource destroy-apply.
  const TableState({
    this.accountName,
    this.autoscaleSettings,
    this.name,
    this.resourceGroupName,
    this.throughput,
  });

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
      accountName: (() { final guardedValue = map['accountName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      autoscaleSettings: (() { final guardedValue = map['autoscaleSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(TableAutoscaleSettings.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: (() { final guardedValue = map['resourceGroupName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      throughput: (() { final guardedValue = map['throughput']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
    );
  }
}
