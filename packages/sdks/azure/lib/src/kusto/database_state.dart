// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering Database resources.
class DatabaseState {
  /// Specifies the name of the Kusto Cluster this database will be added to. Changing this forces a new resource to be created.
  final pulumi.Input<String?>? clusterName;
  /// The time the data that should be kept in cache for fast queries as ISO 8601 timespan. Default is unlimited. For more information see: [ISO 8601 Timespan](https://en.wikipedia.org/wiki/ISO_8601#Durations)
  final pulumi.Input<String?>? hotCachePeriod;
  /// The location where the Kusto Database should be created. Changing this forces a new resource to be created.
  final pulumi.Input<String?>? location;
  /// The name of the Kusto Database to create. Changing this forces a new resource to be created.
  final pulumi.Input<String?>? name;
  /// Specifies the Resource Group where the Kusto Database should exist. Changing this forces a new resource to be created.
  final pulumi.Input<String?>? resourceGroupName;
  /// The size of the database in bytes.
  final pulumi.Input<double?>? size;
  /// The time the data should be kept before it stops being accessible to queries as ISO 8601 timespan. Default is unlimited. For more information see: [ISO 8601 Timespan](https://en.wikipedia.org/wiki/ISO_8601#Durations)
  final pulumi.Input<String?>? softDeletePeriod;

  /// Creates a new [DatabaseState].
  /// [clusterName] Specifies the name of the Kusto Cluster this database will be added to. Changing this forces a new resource to be created.
  /// [hotCachePeriod] The time the data that should be kept in cache for fast queries as ISO 8601 timespan. Default is unlimited. For more information see: [ISO 8601 Timespan](https://en.wikipedia.org/wiki/ISO_8601#Durations)
  /// [location] The location where the Kusto Database should be created. Changing this forces a new resource to be created.
  /// [name] The name of the Kusto Database to create. Changing this forces a new resource to be created.
  /// [resourceGroupName] Specifies the Resource Group where the Kusto Database should exist. Changing this forces a new resource to be created.
  /// [size] The size of the database in bytes.
  /// [softDeletePeriod] The time the data should be kept before it stops being accessible to queries as ISO 8601 timespan. Default is unlimited. For more information see: [ISO 8601 Timespan](https://en.wikipedia.org/wiki/ISO_8601#Durations)
  const DatabaseState({
    this.clusterName,
    this.hotCachePeriod,
    this.location,
    this.name,
    this.resourceGroupName,
    this.size,
    this.softDeletePeriod,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clusterName': ?clusterName,
      'hotCachePeriod': ?hotCachePeriod,
      'location': ?location,
      'name': ?name,
      'resourceGroupName': ?resourceGroupName,
      'size': ?size,
      'softDeletePeriod': ?softDeletePeriod,
    };
  }

  factory DatabaseState.fromMap(Map<String, dynamic> map) {
    return DatabaseState(
      clusterName: (() { final guardedValue = map['clusterName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      hotCachePeriod: (() { final guardedValue = map['hotCachePeriod']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: (() { final guardedValue = map['resourceGroupName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      size: (() { final guardedValue = map['size']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
      softDeletePeriod: (() { final guardedValue = map['softDeletePeriod']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
