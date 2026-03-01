// ignore_for_file: unused_element, unnecessary_cast


class ConnectionGitlabConfigServiceDirectoryConfig {
  /// Required. The Service Directory service name. Format: projects/{project}/locations/{location}/namespaces/{namespace}/services/{service}.
  final String service;

  /// Creates a new [ConnectionGitlabConfigServiceDirectoryConfig].
  /// [service] Required. The Service Directory service name. Format: projects/{project}/locations/{location}/namespaces/{namespace}/services/{service}.
  ConnectionGitlabConfigServiceDirectoryConfig({
    required this.service,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'service': service,
    };
  }

  factory ConnectionGitlabConfigServiceDirectoryConfig.fromMap(Map<String, dynamic> map) {
    return ConnectionGitlabConfigServiceDirectoryConfig(
      service: map['service'] as String,
    );
  }
}

