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
    required pulumi.Output<String> digitalTwinsId,
    pulumi.Output<String>? eventhubConsumerGroupName,
    required pulumi.Output<String> eventhubName,
    required pulumi.Output<String> eventhubNamespaceEndpointUri,
    required pulumi.Output<String> eventhubNamespaceId,
    required pulumi.Output<String> kustoClusterId,
    required pulumi.Output<String> kustoClusterUri,
    required pulumi.Output<String> kustoDatabaseName,
    pulumi.Output<String>? kustoTableName,
    pulumi.Output<String>? name,
  }) :
      digitalTwinsId = pulumi.Input.asInput<String>(digitalTwinsId),
      eventhubConsumerGroupName = pulumi.Input.asOptionalInput<String>(eventhubConsumerGroupName),
      eventhubName = pulumi.Input.asInput<String>(eventhubName),
      eventhubNamespaceEndpointUri = pulumi.Input.asInput<String>(eventhubNamespaceEndpointUri),
      eventhubNamespaceId = pulumi.Input.asInput<String>(eventhubNamespaceId),
      kustoClusterId = pulumi.Input.asInput<String>(kustoClusterId),
      kustoClusterUri = pulumi.Input.asInput<String>(kustoClusterUri),
      kustoDatabaseName = pulumi.Input.asInput<String>(kustoDatabaseName),
      kustoTableName = pulumi.Input.asOptionalInput<String>(kustoTableName),
      name = pulumi.Input.asOptionalInput<String>(name);

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
      digitalTwinsId: pulumi.Output.create<String>(map['digitalTwinsId'] as String),
      eventhubConsumerGroupName: map['eventhubConsumerGroupName'] == null ? null : pulumi.Output.create<String>(map['eventhubConsumerGroupName'] as String),
      eventhubName: pulumi.Output.create<String>(map['eventhubName'] as String),
      eventhubNamespaceEndpointUri: pulumi.Output.create<String>(map['eventhubNamespaceEndpointUri'] as String),
      eventhubNamespaceId: pulumi.Output.create<String>(map['eventhubNamespaceId'] as String),
      kustoClusterId: pulumi.Output.create<String>(map['kustoClusterId'] as String),
      kustoClusterUri: pulumi.Output.create<String>(map['kustoClusterUri'] as String),
      kustoDatabaseName: pulumi.Output.create<String>(map['kustoDatabaseName'] as String),
      kustoTableName: map['kustoTableName'] == null ? null : pulumi.Output.create<String>(map['kustoTableName'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
    );
  }
}

