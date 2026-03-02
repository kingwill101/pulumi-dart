// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Tenant Configuration Properties with Provisioning state
class ConfigurationPropertiesResponse {
  /// When flag is set to true Markdown tile will require external storage configuration (URI). The inline content configuration will be prohibited.
  final pulumi.Input<bool>? enforcePrivateMarkdownStorage;
  /// The status of the last operation.
  final pulumi.Input<String> provisioningState;

  /// Creates a new [ConfigurationPropertiesResponse].
  /// [enforcePrivateMarkdownStorage] When flag is set to true Markdown tile will require external storage configuration (URI). The inline content configuration will be prohibited.
  /// [provisioningState] The status of the last operation.
  ConfigurationPropertiesResponse({
    this.enforcePrivateMarkdownStorage,
    required this.provisioningState,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enforcePrivateMarkdownStorage': ?enforcePrivateMarkdownStorage,
      'provisioningState': provisioningState,
    };
  }

  factory ConfigurationPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return ConfigurationPropertiesResponse(
      enforcePrivateMarkdownStorage: map['enforcePrivateMarkdownStorage'] == null ? null : (map['enforcePrivateMarkdownStorage'] as bool).input(),
      provisioningState: (map['provisioningState'] as String).input(),
    );
  }
}

