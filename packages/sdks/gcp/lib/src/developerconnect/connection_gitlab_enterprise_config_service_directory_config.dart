// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ConnectionGitlabEnterpriseConfigServiceDirectoryConfig {
  /// The Service Directory service name.
  /// Format:
  /// projects/{project}/locations/{location}/namespaces/{namespace}/services/{service}.
  final pulumi.Input<String> service;

  /// Creates a new [ConnectionGitlabEnterpriseConfigServiceDirectoryConfig].
  /// [service] The Service Directory service name.
  const ConnectionGitlabEnterpriseConfigServiceDirectoryConfig({
    required this.service,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'service': service,
    };
  }

  factory ConnectionGitlabEnterpriseConfigServiceDirectoryConfig.fromMap(Map<String, dynamic> map) {
    return ConnectionGitlabEnterpriseConfigServiceDirectoryConfig(
      service: pulumi.Input.fromValue(map['service'] as String),
    );
  }
}
