// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DataCollectionRuleDestinationsEventHub {
  /// The resource ID of the Event Hub.
  final pulumi.Input<String> eventHubId;
  /// The name which should be used for this destination. This name should be unique across all destinations regardless of type within the Data Collection Rule.
  final pulumi.Input<String> name;

  /// Creates a new [DataCollectionRuleDestinationsEventHub].
  /// [eventHubId] The resource ID of the Event Hub.
  /// [name] The name which should be used for this destination. This name should be unique across all destinations regardless of type within the Data Collection Rule.
  DataCollectionRuleDestinationsEventHub({
    required this.eventHubId,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'eventHubId': eventHubId,
      'name': name,
    };
  }

  factory DataCollectionRuleDestinationsEventHub.fromMap(Map<String, dynamic> map) {
    return DataCollectionRuleDestinationsEventHub(
      eventHubId: pulumi.Input.fromValue(map['eventHubId'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
    );
  }
}

