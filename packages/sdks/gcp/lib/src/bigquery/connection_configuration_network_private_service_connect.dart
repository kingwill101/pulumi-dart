// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ConnectionConfigurationNetworkPrivateServiceConnect {
  /// The resource name of a network attachment in the format of
  /// `projects/{project}/regions/{region}/networkAttachments/{networkAttachment}`.
  final pulumi.Input<String> networkAttachment;

  /// Creates a new [ConnectionConfigurationNetworkPrivateServiceConnect].
  /// [networkAttachment] The resource name of a network attachment in the format of
  const ConnectionConfigurationNetworkPrivateServiceConnect({
    required this.networkAttachment,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'networkAttachment': networkAttachment,
    };
  }

  factory ConnectionConfigurationNetworkPrivateServiceConnect.fromMap(Map<String, dynamic> map) {
    return ConnectionConfigurationNetworkPrivateServiceConnect(
      networkAttachment: pulumi.Input.fromValue(map['networkAttachment'] as String),
    );
  }
}
