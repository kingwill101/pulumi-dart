// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class InstancePscInstanceConfigPscInterfaceConfig {
  /// The network attachment resource created in the consumer project to which the PSC interface will be linked.
  /// This is of the format: "projects/${CONSUMER_PROJECT}/regions/${REGION}/networkAttachments/${NETWORK_ATTACHMENT_NAME}".
  /// The network attachment must be in the same region as the instance.
  final pulumi.Input<String>? networkAttachmentResource;

  /// Creates a new [InstancePscInstanceConfigPscInterfaceConfig].
  /// [networkAttachmentResource] The network attachment resource created in the consumer project to which the PSC interface will be linked.
  InstancePscInstanceConfigPscInterfaceConfig({
    this.networkAttachmentResource,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'networkAttachmentResource': ?networkAttachmentResource,
    };
  }

  factory InstancePscInstanceConfigPscInterfaceConfig.fromMap(Map<String, dynamic> map) {
    return InstancePscInstanceConfigPscInterfaceConfig(
      networkAttachmentResource: (() { final guardedValue = map['networkAttachmentResource']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

