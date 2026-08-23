// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// [Deprecated] Custom authenticator credentials. Custom authenticator credentials.
class MetadataCredentialsFromPluginResponse {
  /// Plugin name.
  final pulumi.Input<String> name;
  /// A text proto that conforms to a Struct type definition interpreted by the plugin.
  final pulumi.Input<String> structConfig;

  /// Creates a new [MetadataCredentialsFromPluginResponse].
  /// [name] Plugin name.
  /// [structConfig] A text proto that conforms to a Struct type definition interpreted by the plugin.
  const MetadataCredentialsFromPluginResponse({
    required this.name,
    required this.structConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'structConfig': structConfig,
    };
  }

  factory MetadataCredentialsFromPluginResponse.fromMap(Map<String, dynamic> map) {
    return MetadataCredentialsFromPluginResponse(
      name: pulumi.Input.fromValue(map['name'] as String),
      structConfig: pulumi.Input.fromValue(map['structConfig'] as String),
    );
  }
}
