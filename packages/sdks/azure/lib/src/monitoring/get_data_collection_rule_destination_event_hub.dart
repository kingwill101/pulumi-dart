// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetDataCollectionRuleDestinationEventHub {
  /// The resource ID of the Event Hub.
  final pulumi.Input<String> eventHubId;
  /// Specifies the name of the Data Collection Rule.
  final pulumi.Input<String> name;

  /// Creates a new [GetDataCollectionRuleDestinationEventHub].
  /// [eventHubId] The resource ID of the Event Hub.
  /// [name] Specifies the name of the Data Collection Rule.
  const GetDataCollectionRuleDestinationEventHub({
    required this.eventHubId,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'eventHubId': eventHubId,
      'name': name,
    };
  }

  factory GetDataCollectionRuleDestinationEventHub.fromMap(Map<String, dynamic> map) {
    return GetDataCollectionRuleDestinationEventHub(
      eventHubId: pulumi.Input.fromValue(map['eventHubId'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
    );
  }
}
