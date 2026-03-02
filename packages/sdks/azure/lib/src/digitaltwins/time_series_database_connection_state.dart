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
    this.digitalTwinsId,
    this.eventhubConsumerGroupName,
    this.eventhubName,
    this.eventhubNamespaceEndpointUri,
    this.eventhubNamespaceId,
    this.kustoClusterId,
    this.kustoClusterUri,
    this.kustoDatabaseName,
    this.kustoTableName,
    this.name,
  });

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
      digitalTwinsId: map['digitalTwinsId'] == null ? null : (map['digitalTwinsId']! as String).input(),
      eventhubConsumerGroupName: map['eventhubConsumerGroupName'] == null ? null : (map['eventhubConsumerGroupName']! as String).input(),
      eventhubName: map['eventhubName'] == null ? null : (map['eventhubName']! as String).input(),
      eventhubNamespaceEndpointUri: map['eventhubNamespaceEndpointUri'] == null ? null : (map['eventhubNamespaceEndpointUri']! as String).input(),
      eventhubNamespaceId: map['eventhubNamespaceId'] == null ? null : (map['eventhubNamespaceId']! as String).input(),
      kustoClusterId: map['kustoClusterId'] == null ? null : (map['kustoClusterId']! as String).input(),
      kustoClusterUri: map['kustoClusterUri'] == null ? null : (map['kustoClusterUri']! as String).input(),
      kustoDatabaseName: map['kustoDatabaseName'] == null ? null : (map['kustoDatabaseName']! as String).input(),
      kustoTableName: map['kustoTableName'] == null ? null : (map['kustoTableName']! as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
    );
  }
}

