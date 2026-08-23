// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class PrivateConnectionPscInterfaceConfig {
  /// Fully qualified name of the Network Attachment that DMS will connect to.
  /// Format: projects/{project}/regions/{region}/networkAttachments/{name}
  final pulumi.Input<String> networkAttachment;

  /// Creates a new [PrivateConnectionPscInterfaceConfig].
  /// [networkAttachment] Fully qualified name of the Network Attachment that DMS will connect to.
  const PrivateConnectionPscInterfaceConfig({
    required this.networkAttachment,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'networkAttachment': networkAttachment,
    };
  }

  factory PrivateConnectionPscInterfaceConfig.fromMap(Map<String, dynamic> map) {
    return PrivateConnectionPscInterfaceConfig(
      networkAttachment: pulumi.Input.fromValue(map['networkAttachment'] as String),
    );
  }
}
