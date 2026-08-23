// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Represents a network config to be used for destination resolution and connectivity.
class NetworkConfigResponse {
  /// Name of the NetworkAttachment that allows access to the destination VPC. Format: `projects/{PROJECT_ID}/regions/{REGION}/networkAttachments/{NETWORK_ATTACHMENT_NAME}`
  final pulumi.Input<String> networkAttachment;

  /// Creates a new [NetworkConfigResponse].
  /// [networkAttachment] Name of the NetworkAttachment that allows access to the destination VPC. Format: `projects/{PROJECT_ID}/regions/{REGION}/networkAttachments/{NETWORK_ATTACHMENT_NAME}`
  const NetworkConfigResponse({
    required this.networkAttachment,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'networkAttachment': networkAttachment,
    };
  }

  factory NetworkConfigResponse.fromMap(Map<String, dynamic> map) {
    return NetworkConfigResponse(
      networkAttachment: pulumi.Input.fromValue(map['networkAttachment'] as String),
    );
  }
}
