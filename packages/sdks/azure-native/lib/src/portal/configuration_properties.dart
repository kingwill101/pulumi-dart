// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Tenant Configuration Properties with Provisioning state
class ConfigurationProperties {
  /// When flag is set to true Markdown tile will require external storage configuration (URI). The inline content configuration will be prohibited.
  final pulumi.Input<bool>? enforcePrivateMarkdownStorage;

  /// Creates a new [ConfigurationProperties].
  /// [enforcePrivateMarkdownStorage] When flag is set to true Markdown tile will require external storage configuration (URI). The inline content configuration will be prohibited.
  ConfigurationProperties({
    this.enforcePrivateMarkdownStorage,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enforcePrivateMarkdownStorage': ?enforcePrivateMarkdownStorage,
    };
  }

  factory ConfigurationProperties.fromMap(Map<String, dynamic> map) {
    return ConfigurationProperties(
      enforcePrivateMarkdownStorage: map['enforcePrivateMarkdownStorage'] == null ? null : (map['enforcePrivateMarkdownStorage'] as bool).input(),
    );
  }
}

