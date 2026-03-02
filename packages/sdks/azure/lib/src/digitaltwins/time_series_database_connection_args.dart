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
  TimeSeriesDatabaseConnectionArgs({
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
      digitalTwinsId: (map['digitalTwinsId'] as String).input(),
      eventhubConsumerGroupName: map['eventhubConsumerGroupName'] == null ? null : (map['eventhubConsumerGroupName']! as String).input(),
      eventhubName: (map['eventhubName'] as String).input(),
      eventhubNamespaceEndpointUri: (map['eventhubNamespaceEndpointUri'] as String).input(),
      eventhubNamespaceId: (map['eventhubNamespaceId'] as String).input(),
      kustoClusterId: (map['kustoClusterId'] as String).input(),
      kustoClusterUri: (map['kustoClusterUri'] as String).input(),
      kustoDatabaseName: (map['kustoDatabaseName'] as String).input(),
      kustoTableName: map['kustoTableName'] == null ? null : (map['kustoTableName']! as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
    );
  }
}

