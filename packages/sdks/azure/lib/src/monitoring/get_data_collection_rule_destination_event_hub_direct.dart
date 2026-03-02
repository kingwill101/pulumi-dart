// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetDataCollectionRuleDestinationEventHubDirect {
  /// The resource ID of the Event Hub.
  final pulumi.Input<String> eventHubId;
  /// Specifies the name of the Data Collection Rule.
  final pulumi.Input<String> name;

  /// Creates a new [GetDataCollectionRuleDestinationEventHubDirect].
  /// [eventHubId] The resource ID of the Event Hub.
  /// [name] Specifies the name of the Data Collection Rule.
  GetDataCollectionRuleDestinationEventHubDirect({
    required this.eventHubId,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'eventHubId': eventHubId,
      'name': name,
    };
  }

  factory GetDataCollectionRuleDestinationEventHubDirect.fromMap(Map<String, dynamic> map) {
    return GetDataCollectionRuleDestinationEventHubDirect(
      eventHubId: (map['eventHubId'] as String).input(),
      name: (map['name'] as String).input(),
    );
  }
}

