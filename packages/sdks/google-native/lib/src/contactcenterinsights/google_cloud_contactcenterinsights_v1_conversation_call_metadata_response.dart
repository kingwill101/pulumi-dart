// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Call-specific metadata.
class GoogleCloudContactcenterinsightsV1ConversationCallMetadataResponse {
  /// The audio channel that contains the agent.
  final pulumi.Input<int> agentChannel;
  /// The audio channel that contains the customer.
  final pulumi.Input<int> customerChannel;

  /// Creates a new [GoogleCloudContactcenterinsightsV1ConversationCallMetadataResponse].
  /// [agentChannel] The audio channel that contains the agent.
  /// [customerChannel] The audio channel that contains the customer.
  const GoogleCloudContactcenterinsightsV1ConversationCallMetadataResponse({
    required this.agentChannel,
    required this.customerChannel,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'agentChannel': agentChannel,
      'customerChannel': customerChannel,
    };
  }

  factory GoogleCloudContactcenterinsightsV1ConversationCallMetadataResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudContactcenterinsightsV1ConversationCallMetadataResponse(
      agentChannel: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['agentChannel'])),
      customerChannel: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['customerChannel'])),
    );
  }
}
