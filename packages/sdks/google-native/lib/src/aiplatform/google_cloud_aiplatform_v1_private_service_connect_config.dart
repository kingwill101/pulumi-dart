// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Represents configuration for private service connect.
class GoogleCloudAiplatformV1PrivateServiceConnectConfig {
  /// If true, expose the IndexEndpoint via private service connect.
  final pulumi.Input<bool> enablePrivateServiceConnect;
  /// A list of Projects from which the forwarding rule will target the service attachment.
  final pulumi.Input<List<String>>? projectAllowlist;

  /// Creates a new [GoogleCloudAiplatformV1PrivateServiceConnectConfig].
  /// [enablePrivateServiceConnect] If true, expose the IndexEndpoint via private service connect.
  /// [projectAllowlist] A list of Projects from which the forwarding rule will target the service attachment.
  GoogleCloudAiplatformV1PrivateServiceConnectConfig({
    required this.enablePrivateServiceConnect,
    this.projectAllowlist,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enablePrivateServiceConnect': enablePrivateServiceConnect,
      'projectAllowlist': ?projectAllowlist,
    };
  }

  factory GoogleCloudAiplatformV1PrivateServiceConnectConfig.fromMap(Map<String, dynamic> map) {
    return GoogleCloudAiplatformV1PrivateServiceConnectConfig(
      enablePrivateServiceConnect: (map['enablePrivateServiceConnect'] as bool).input(),
      projectAllowlist: map['projectAllowlist'] == null ? null : ((map['projectAllowlist']! as List).cast<String>()).input(),
    );
  }
}

