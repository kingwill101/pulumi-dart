// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class TriggerDestinationNetworkConfig {
  /// Required. Name of the NetworkAttachment that allows access to the destination VPC. Format: `projects/{PROJECT_ID}/regions/{REGION}/networkAttachments/{NETWORK_ATTACHMENT_NAME}`
  final pulumi.Input<String> networkAttachment;

  /// Creates a new [TriggerDestinationNetworkConfig].
  /// [networkAttachment] Required. Name of the NetworkAttachment that allows access to the destination VPC. Format: `projects/{PROJECT_ID}/regions/{REGION}/networkAttachments/{NETWORK_ATTACHMENT_NAME}`
  const TriggerDestinationNetworkConfig({
    required this.networkAttachment,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'networkAttachment': networkAttachment,
    };
  }

  factory TriggerDestinationNetworkConfig.fromMap(Map<String, dynamic> map) {
    return TriggerDestinationNetworkConfig(
      networkAttachment: pulumi.Input.fromValue(map['networkAttachment'] as String),
    );
  }
}
