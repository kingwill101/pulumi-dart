// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering TimeSeriesDatabaseConnection resources.
class TimeSeriesDatabaseConnectionState {
  /// The ID of the Digital Twins. Changing this forces a new resource to be created.
  final pulumi.Input<String>? digitalTwinsId;
  /// Name of the Event Hub Consumer Group. Changing this forces a new resource to be created. Defaults to `$Default`.
  final pulumi.Input<String>? eventhubConsumerGroupName;
  /// Name of the Event Hub. Changing this forces a new resource to be created.
  final pulumi.Input<String>? eventhubName;
  /// URI of the Event Hub Namespace. Changing this forces a new resource to be created.
  final pulumi.Input<String>? eventhubNamespaceEndpointUri;
  /// The ID of the Event Hub Namespace. Changing this forces a new resource to be created.
  final pulumi.Input<String>? eventhubNamespaceId;
  /// The ID of the Kusto Cluster. Changing this forces a new resource to be created.
  final pulumi.Input<String>? kustoClusterId;
  /// URI of the Kusto Cluster. Changing this forces a new resource to be created.
  final pulumi.Input<String>? kustoClusterUri;
  /// Name of the Kusto Database. Changing this forces a new resource to be created.
  final pulumi.Input<String>? kustoDatabaseName;
  /// Name of the Kusto Table. Defaults to `AdtPropertyEvents`. Changing this forces a new resource to be created.
  final pulumi.Input<String>? kustoTableName;
  /// The name which should be used for this Digital Twins Time Series Database Connection. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;

  /// Creates a new [TimeSeriesDatabaseConnectionState].
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
  TimeSeriesDatabaseConnectionState({
    pulumi.Output<String>? digitalTwinsId,
    pulumi.Output<String>? eventhubConsumerGroupName,
    pulumi.Output<String>? eventhubName,
    pulumi.Output<String>? eventhubNamespaceEndpointUri,
    pulumi.Output<String>? eventhubNamespaceId,
    pulumi.Output<String>? kustoClusterId,
    pulumi.Output<String>? kustoClusterUri,
    pulumi.Output<String>? kustoDatabaseName,
    pulumi.Output<String>? kustoTableName,
    pulumi.Output<String>? name,
  }) :
      digitalTwinsId = pulumi.Input.asOptionalInput<String>(digitalTwinsId),
      eventhubConsumerGroupName = pulumi.Input.asOptionalInput<String>(eventhubConsumerGroupName),
      eventhubName = pulumi.Input.asOptionalInput<String>(eventhubName),
      eventhubNamespaceEndpointUri = pulumi.Input.asOptionalInput<String>(eventhubNamespaceEndpointUri),
      eventhubNamespaceId = pulumi.Input.asOptionalInput<String>(eventhubNamespaceId),
      kustoClusterId = pulumi.Input.asOptionalInput<String>(kustoClusterId),
      kustoClusterUri = pulumi.Input.asOptionalInput<String>(kustoClusterUri),
      kustoDatabaseName = pulumi.Input.asOptionalInput<String>(kustoDatabaseName),
      kustoTableName = pulumi.Input.asOptionalInput<String>(kustoTableName),
      name = pulumi.Input.asOptionalInput<String>(name);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'digitalTwinsId': ?digitalTwinsId,
      'eventhubConsumerGroupName': ?eventhubConsumerGroupName,
      'eventhubName': ?eventhubName,
      'eventhubNamespaceEndpointUri': ?eventhubNamespaceEndpointUri,
      'eventhubNamespaceId': ?eventhubNamespaceId,
      'kustoClusterId': ?kustoClusterId,
      'kustoClusterUri': ?kustoClusterUri,
      'kustoDatabaseName': ?kustoDatabaseName,
      'kustoTableName': ?kustoTableName,
      'name': ?name,
    };
  }

  factory TimeSeriesDatabaseConnectionState.fromMap(Map<String, dynamic> map) {
    return TimeSeriesDatabaseConnectionState(
      digitalTwinsId: map['digitalTwinsId'] == null ? null : pulumi.Output.create<String>(map['digitalTwinsId'] as String),
      eventhubConsumerGroupName: map['eventhubConsumerGroupName'] == null ? null : pulumi.Output.create<String>(map['eventhubConsumerGroupName'] as String),
      eventhubName: map['eventhubName'] == null ? null : pulumi.Output.create<String>(map['eventhubName'] as String),
      eventhubNamespaceEndpointUri: map['eventhubNamespaceEndpointUri'] == null ? null : pulumi.Output.create<String>(map['eventhubNamespaceEndpointUri'] as String),
      eventhubNamespaceId: map['eventhubNamespaceId'] == null ? null : pulumi.Output.create<String>(map['eventhubNamespaceId'] as String),
      kustoClusterId: map['kustoClusterId'] == null ? null : pulumi.Output.create<String>(map['kustoClusterId'] as String),
      kustoClusterUri: map['kustoClusterUri'] == null ? null : pulumi.Output.create<String>(map['kustoClusterUri'] as String),
      kustoDatabaseName: map['kustoDatabaseName'] == null ? null : pulumi.Output.create<String>(map['kustoDatabaseName'] as String),
      kustoTableName: map['kustoTableName'] == null ? null : pulumi.Output.create<String>(map['kustoTableName'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
    );
  }
}

