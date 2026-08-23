// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_digitaltwins_time_series_database_connection_time_series_database_connection_args_doc}
/// The set of arguments for TimeSeriesDatabaseConnection.
/// {@endtemplate}
/// {@macro pulumi_digitaltwins_time_series_database_connection_time_series_database_connection_args_doc}
class TimeSeriesDatabaseConnectionArgs {
  /// The ID of the Digital Twins. Changing this forces a new resource to be created.
  final pulumi.Input<String> digitalTwinsId;
  /// Name of the Event Hub Consumer Group. Changing this forces a new resource to be created. Defaults to `$Default`.
  final pulumi.Input<String>? eventhubConsumerGroupName;
  /// Name of the Event Hub. Changing this forces a new resource to be created.
  final pulumi.Input<String> eventhubName;
  /// URI of the Event Hub Namespace. Changing this forces a new resource to be created.
  final pulumi.Input<String> eventhubNamespaceEndpointUri;
  /// The ID of the Event Hub Namespace. Changing this forces a new resource to be created.
  final pulumi.Input<String> eventhubNamespaceId;
  /// The ID of the Kusto Cluster. Changing this forces a new resource to be created.
  final pulumi.Input<String> kustoClusterId;
  /// URI of the Kusto Cluster. Changing this forces a new resource to be created.
  final pulumi.Input<String> kustoClusterUri;
  /// Name of the Kusto Database. Changing this forces a new resource to be created.
  final pulumi.Input<String> kustoDatabaseName;
  /// Name of the Kusto Table. Defaults to `AdtPropertyEvents`. Changing this forces a new resource to be created.
  final pulumi.Input<String>? kustoTableName;
  /// The name which should be used for this Digital Twins Time Series Database Connection. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;

  /// Creates a new [TimeSeriesDatabaseConnectionArgs].
  /// [digitalTwinsId] The ID of the Digital Twins. Changing this forces a new resource to be created.
  /// [eventhubConsumerGroupName] Name of the Event Hub Consumer Group. Changing this forces a new resource to be created. Defaults to `$Default`.
  /// [eventhubName] Name of the Event Hub. Changing this forces a new resource to be created.
  /// [eventhubNamespaceEndpointUri] URI of the Event Hub Namespace. Changing this forces a new resource to be created.
  /// [eventhubNamespaceId] The ID of the Event Hub Namespace. Changing this forces a new resource to be created.
  /// [kustoClusterId] The ID of the Kusto Cluster. Changing this forces a new resource to be created.
  /// [kustoClusterUri] URI of the Kusto Cluster. Changing this forces a new resource to be created.
  /// [kustoDatabaseName] Name of the Kusto Database. Changing this forces a new resource to be created.
  /// [kustoTableName] Name of the Kusto Table. Defaults to `AdtPropertyEvents`. Changing this forces a new resource to be created.
  /// [name] The name which should be used for this Digital Twins Time Series Database Connection. Changing this forces a new resource to be created.
  const TimeSeriesDatabaseConnectionArgs({
    required this.digitalTwinsId,
    this.eventhubConsumerGroupName,
    required this.eventhubName,
    required this.eventhubNamespaceEndpointUri,
    required this.eventhubNamespaceId,
    required this.kustoClusterId,
    required this.kustoClusterUri,
    required this.kustoDatabaseName,
    this.kustoTableName,
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'digitalTwinsId': digitalTwinsId,
      'eventhubConsumerGroupName': ?eventhubConsumerGroupName,
      'eventhubName': eventhubName,
      'eventhubNamespaceEndpointUri': eventhubNamespaceEndpointUri,
      'eventhubNamespaceId': eventhubNamespaceId,
      'kustoClusterId': kustoClusterId,
      'kustoClusterUri': kustoClusterUri,
      'kustoDatabaseName': kustoDatabaseName,
      'kustoTableName': ?kustoTableName,
      'name': ?name,
    };
  }

  factory TimeSeriesDatabaseConnectionArgs.fromMap(Map<String, dynamic> map) {
    return TimeSeriesDatabaseConnectionArgs(
      digitalTwinsId: pulumi.Input.fromValue(map['digitalTwinsId'] as String),
      eventhubConsumerGroupName: (() { final guardedValue = map['eventhubConsumerGroupName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      eventhubName: pulumi.Input.fromValue(map['eventhubName'] as String),
      eventhubNamespaceEndpointUri: pulumi.Input.fromValue(map['eventhubNamespaceEndpointUri'] as String),
      eventhubNamespaceId: pulumi.Input.fromValue(map['eventhubNamespaceId'] as String),
      kustoClusterId: pulumi.Input.fromValue(map['kustoClusterId'] as String),
      kustoClusterUri: pulumi.Input.fromValue(map['kustoClusterUri'] as String),
      kustoDatabaseName: pulumi.Input.fromValue(map['kustoDatabaseName'] as String),
      kustoTableName: (() { final guardedValue = map['kustoTableName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
