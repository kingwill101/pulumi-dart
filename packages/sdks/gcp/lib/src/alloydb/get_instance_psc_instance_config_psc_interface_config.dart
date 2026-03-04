// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetInstancePscInstanceConfigPscInterfaceConfig {
  /// The network attachment resource created in the consumer project to which the PSC interface will be linked.
  /// This is of the format: "projects/${CONSUMER_PROJECT}/regions/${REGION}/networkAttachments/${NETWORK_ATTACHMENT_NAME}".
  /// The network attachment must be in the same region as the instance.
  final pulumi.Input<String> networkAttachmentResource;

  /// Creates a new [GetInstancePscInstanceConfigPscInterfaceConfig].
  /// [networkAttachmentResource] The network attachment resource created in the consumer project to which the PSC interface will be linked.
  GetInstancePscInstanceConfigPscInterfaceConfig({
    required this.networkAttachmentResource,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'networkAttachmentResource': networkAttachmentResource,
    };
  }

  factory GetInstancePscInstanceConfigPscInterfaceConfig.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetInstancePscInstanceConfigPscInterfaceConfig(
      networkAttachmentResource: pulumi.Input.fromValue(
        map['networkAttachmentResource'] as String,
      ),
    );
  }
}
