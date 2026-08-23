// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AccountConnectorCustomOauthConfigServiceDirectoryConfig {
  /// The Service Directory service name.
  /// Format:
  /// projects/{project}/locations/{location}/namespaces/{namespace}/services/{service}.
  final pulumi.Input<String> service;

  /// Creates a new [AccountConnectorCustomOauthConfigServiceDirectoryConfig].
  /// [service] The Service Directory service name.
  const AccountConnectorCustomOauthConfigServiceDirectoryConfig({
    required this.service,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'service': service,
    };
  }

  factory AccountConnectorCustomOauthConfigServiceDirectoryConfig.fromMap(Map<String, dynamic> map) {
    return AccountConnectorCustomOauthConfigServiceDirectoryConfig(
      service: pulumi.Input.fromValue(map['service'] as String),
    );
  }
}
