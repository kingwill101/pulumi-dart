// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Call-specific metadata.
class GoogleCloudContactcenterinsightsV1ConversationCallMetadata {
  /// The audio channel that contains the agent.
  final pulumi.Input<int>? agentChannel;
  /// The audio channel that contains the customer.
  final pulumi.Input<int>? customerChannel;

  /// Creates a new [GoogleCloudContactcenterinsightsV1ConversationCallMetadata].
  /// [agentChannel] The audio channel that contains the agent.
  /// [customerChannel] The audio channel that contains the customer.
  GoogleCloudContactcenterinsightsV1ConversationCallMetadata({
    this.agentChannel,
    this.customerChannel,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'agentChannel': ?agentChannel,
      'customerChannel': ?customerChannel,
    };
  }

  factory GoogleCloudContactcenterinsightsV1ConversationCallMetadata.fromMap(Map<String, dynamic> map) {
    return GoogleCloudContactcenterinsightsV1ConversationCallMetadata(
      agentChannel: (() { final guardedValue = map['agentChannel']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      customerChannel: (() { final guardedValue = map['customerChannel']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}

