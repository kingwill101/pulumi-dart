// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// [Deprecated] Custom authenticator credentials. Custom authenticator credentials.
class MetadataCredentialsFromPlugin {
  /// Plugin name.
  final pulumi.Input<String>? name;
  /// A text proto that conforms to a Struct type definition interpreted by the plugin.
  final pulumi.Input<String>? structConfig;

  /// Creates a new [MetadataCredentialsFromPlugin].
  /// [name] Plugin name.
  /// [structConfig] A text proto that conforms to a Struct type definition interpreted by the plugin.
  const MetadataCredentialsFromPlugin({
    this.name,
    this.structConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'structConfig': ?structConfig,
    };
  }

  factory MetadataCredentialsFromPlugin.fromMap(Map<String, dynamic> map) {
    return MetadataCredentialsFromPlugin(
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      structConfig: (() { final guardedValue = map['structConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
