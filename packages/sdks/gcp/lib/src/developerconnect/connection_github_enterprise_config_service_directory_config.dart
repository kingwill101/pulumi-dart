// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ConnectionGithubEnterpriseConfigServiceDirectoryConfig {
  /// The Service Directory service name.
  /// Format:
  /// projects/{project}/locations/{location}/namespaces/{namespace}/services/{service}.
  final pulumi.Input<String> service;

  /// Creates a new [ConnectionGithubEnterpriseConfigServiceDirectoryConfig].
  /// [service] The Service Directory service name.
  const ConnectionGithubEnterpriseConfigServiceDirectoryConfig({
    required this.service,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'service': service,
    };
  }

  factory ConnectionGithubEnterpriseConfigServiceDirectoryConfig.fromMap(Map<String, dynamic> map) {
    return ConnectionGithubEnterpriseConfigServiceDirectoryConfig(
      service: pulumi.Input.fromValue(map['service'] as String),
    );
  }
}
