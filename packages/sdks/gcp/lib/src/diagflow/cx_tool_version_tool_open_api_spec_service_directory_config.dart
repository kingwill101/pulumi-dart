// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class CxToolVersionToolOpenApiSpecServiceDirectoryConfig {
  /// The name of [Service Directory](https://cloud.google.com/service-directory/docs) service.
  /// Format: projects/&lt;ProjectID&gt;/locations/&lt;LocationID&gt;/namespaces/&lt;NamespaceID&gt;/services/&lt;ServiceID&gt;. LocationID of the service directory must be the same as the location of the agent.
  final pulumi.Input<String> service;

  /// Creates a new [CxToolVersionToolOpenApiSpecServiceDirectoryConfig].
  /// [service] The name of [Service Directory](https://cloud.google.com/service-directory/docs) service.
  const CxToolVersionToolOpenApiSpecServiceDirectoryConfig({
    required this.service,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'service': service,
    };
  }

  factory CxToolVersionToolOpenApiSpecServiceDirectoryConfig.fromMap(Map<String, dynamic> map) {
    return CxToolVersionToolOpenApiSpecServiceDirectoryConfig(
      service: pulumi.Input.fromValue(map['service'] as String),
    );
  }
}
