// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class PrivateConnectionPscInterfaceConfig {
  /// Fully qualified name of the network attachment that Datastream will connect to.
  /// Format: projects/{project}/regions/{region}/networkAttachments/{name}
  /// To get Datastream project for the accepted list:
  /// `gcloud datastream private-connections create [PC ID] --location=[LOCATION] --network-attachment=[NA URI] --validate-only --display-name=[ANY STRING]`
  /// Add Datastream project to the attachment accepted list:
  /// `gcloud compute network-attachments update [NA URI] --region=[NA region] --producer-accept-list=[TP from prev command]`
  final pulumi.Input<String> networkAttachment;

  /// Creates a new [PrivateConnectionPscInterfaceConfig].
  /// [networkAttachment] Fully qualified name of the network attachment that Datastream will connect to.
  PrivateConnectionPscInterfaceConfig({
    required this.networkAttachment,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'networkAttachment': networkAttachment,
    };
  }

  factory PrivateConnectionPscInterfaceConfig.fromMap(Map<String, dynamic> map) {
    return PrivateConnectionPscInterfaceConfig(
      networkAttachment: (map['networkAttachment'] as String).input(),
    );
  }
}

