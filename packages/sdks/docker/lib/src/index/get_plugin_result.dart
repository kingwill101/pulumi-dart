// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getPlugin.
class GetPluginResult {
  /// The alias of the Docker plugin. If the tag is omitted, `:latest` is complemented to the attribute value.
  final String? alias;
  /// If `true` the plugin is enabled
  final bool enabled;
  /// The environment variables in the form of `KEY=VALUE`, e.g. `DEBUG=0`
  final List<String> envs;
  /// If true, grant all permissions necessary to run the plugin
  final bool grantAllPermissions;
  /// The ID of the plugin, which has precedence over the `alias` of both are given
  final String? id;
  /// The plugin name. If the tag is omitted, `:latest` is complemented to the attribute value.
  final String name;
  /// The Docker Plugin Reference
  final String pluginReference;

  /// Creates a new [GetPluginResult].
  /// [alias] The alias of the Docker plugin. If the tag is omitted, `:latest` is complemented to the attribute value.
  /// [enabled] If `true` the plugin is enabled
  /// [envs] The environment variables in the form of `KEY=VALUE`, e.g. `DEBUG=0`
  /// [grantAllPermissions] If true, grant all permissions necessary to run the plugin
  /// [id] The ID of the plugin, which has precedence over the `alias` of both are given
  /// [name] The plugin name. If the tag is omitted, `:latest` is complemented to the attribute value.
  /// [pluginReference] The Docker Plugin Reference
  GetPluginResult({
    this.alias,
    required this.enabled,
    required this.envs,
    required this.grantAllPermissions,
    this.id,
    required this.name,
    required this.pluginReference,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'alias': ?alias,
      'enabled': enabled,
      'envs': envs,
      'grantAllPermissions': grantAllPermissions,
      'id': ?id,
      'name': name,
      'pluginReference': pluginReference,
    };
  }

  factory GetPluginResult.fromMap(Map<String, dynamic> map) {
    return GetPluginResult(
      alias: map['alias'] == null ? null : map['alias'] as String,
      enabled: map['enabled'] as bool,
      envs: (map['envs'] as List).cast<String>(),
      grantAllPermissions: map['grantAllPermissions'] as bool,
      id: map['id'] == null ? null : map['id'] as String,
      name: map['name'] as String,
      pluginReference: map['pluginReference'] as String,
    );
  }
}

