// ignore_for_file: unused_element, unnecessary_cast


/// [Deprecated] Custom authenticator credentials. Custom authenticator credentials.
class MetadataCredentialsFromPlugin {
  /// Plugin name.
  final String? name;
  /// A text proto that conforms to a Struct type definition interpreted by the plugin.
  final String? structConfig;

  /// Creates a new [MetadataCredentialsFromPlugin].
  /// [name] Plugin name.
  /// [structConfig] A text proto that conforms to a Struct type definition interpreted by the plugin.
  MetadataCredentialsFromPlugin({
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
      name: map['name'] == null ? null : map['name'] as String,
      structConfig: map['structConfig'] == null ? null : map['structConfig'] as String,
    );
  }
}

