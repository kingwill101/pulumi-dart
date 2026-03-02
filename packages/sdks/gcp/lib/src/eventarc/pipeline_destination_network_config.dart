// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class PipelineDestinationNetworkConfig {
  /// Name of the NetworkAttachment that allows access to the consumer VPC.
  /// Format:
  /// `projects/{PROJECT_ID}/regions/{REGION}/networkAttachments/{NETWORK_ATTACHMENT_NAME}`
  /// Required for HTTP endpoint destinations. Must not be specified for
  /// Workflows, MessageBus, or Topic destinations.
  final pulumi.Input<String>? networkAttachment;

  /// Creates a new [PipelineDestinationNetworkConfig].
  /// [networkAttachment] Name of the NetworkAttachment that allows access to the consumer VPC.
  PipelineDestinationNetworkConfig({
    this.networkAttachment,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'networkAttachment': ?networkAttachment,
    };
  }

  factory PipelineDestinationNetworkConfig.fromMap(Map<String, dynamic> map) {
    return PipelineDestinationNetworkConfig(
      networkAttachment: map['networkAttachment'] == null ? null : (map['networkAttachment'] as String).input(),
    );
  }
}

