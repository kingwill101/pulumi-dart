// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ConnectionBitbucketDataCenterConfigServiceDirectoryConfig {
  /// Required. The Service Directory service name.
  /// Format:
  /// projects/{project}/locations/{location}/namespaces/{namespace}/services/{service}.
  final pulumi.Input<String> service;

  /// Creates a new [ConnectionBitbucketDataCenterConfigServiceDirectoryConfig].
  /// [service] Required. The Service Directory service name.
  const ConnectionBitbucketDataCenterConfigServiceDirectoryConfig({
    required this.service,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'service': service,
    };
  }

  factory ConnectionBitbucketDataCenterConfigServiceDirectoryConfig.fromMap(Map<String, dynamic> map) {
    return ConnectionBitbucketDataCenterConfigServiceDirectoryConfig(
      service: pulumi.Input.fromValue(map['service'] as String),
    );
  }
}

