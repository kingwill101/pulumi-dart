import 'package:pulumi/pulumi.dart' as pulumi;
import 'plugin_args.dart';
import 'plugin_state.dart';

/// &lt;!-- Bug: Type and Name are switched --&gt;
/// Manages the lifecycle of a Docker plugin.
///
/// ## Import
///
/// ```sh
/// #!/bin/bash
/// terraform import docker_plugin.sample-volume-plugin "$(docker plugin inspect -f {{.ID}} tiborvass/sample-volume-plugin:latest)"
/// ```
class Plugin extends pulumi.CustomResource {
  /// Docker Plugin alias
  late final pulumi.Output<String> alias;
  /// HTTP client timeout to enable the plugin
  late final pulumi.Output<int?> enableTimeout;
  /// If `true` the plugin is enabled. Defaults to `true`
  late final pulumi.Output<bool?> enabled;
  /// The environment variables in the form of `KEY=VALUE`, e.g. `DEBUG=0`
  late final pulumi.Output<List<String>> envs;
  /// If true, then the plugin is destroyed forcibly
  late final pulumi.Output<bool?> forceDestroy;
  /// If true, then the plugin is disabled forcibly
  late final pulumi.Output<bool?> forceDisable;
  /// If true, grant all permissions necessary to run the plugin
  late final pulumi.Output<bool?> grantAllPermissions;
  /// Grant specific permissions only
  late final pulumi.Output<List<Map<String, dynamic>>?> grantPermissions;
  /// Docker Plugin name
  late final pulumi.Output<String> name;
  /// Docker Plugin Reference
  late final pulumi.Output<String> pluginReference;

  /// Creates a new [Plugin].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Plugin]. {@macro pulumi_index_plugin_plugin_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Plugin(
    String name, {
    PluginArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'docker:index/plugin:Plugin',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    alias = registerOutput<String>('alias');
    enableTimeout = registerOutput<int?>('enableTimeout');
    enabled = registerOutput<bool?>('enabled');
    envs = registerOutput<List<String>>('envs');
    forceDestroy = registerOutput<bool?>('forceDestroy');
    forceDisable = registerOutput<bool?>('forceDisable');
    grantAllPermissions = registerOutput<bool?>('grantAllPermissions');
    grantPermissions = registerOutput<List<Map<String, dynamic>>?>('grantPermissions');
    this.name = registerOutput<String>('name');
    pluginReference = registerOutput<String>('pluginReference');
  }

  /// Gets an existing [Plugin] resource's state with the given [name] and [id].
  static Plugin get(
    String name,
    pulumi.Input<String> id, {
    PluginState? state,
  }) {
    return Plugin._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Plugin._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'docker:index/plugin:Plugin',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    alias = registerOutput<String>('alias');
    enableTimeout = registerOutput<int?>('enableTimeout');
    enabled = registerOutput<bool?>('enabled');
    envs = registerOutput<List<String>>('envs');
    forceDestroy = registerOutput<bool?>('forceDestroy');
    forceDisable = registerOutput<bool?>('forceDisable');
    grantAllPermissions = registerOutput<bool?>('grantAllPermissions');
    grantPermissions = registerOutput<List<Map<String, dynamic>>?>('grantPermissions');
    this.name = registerOutput<String>('name');
    pluginReference = registerOutput<String>('pluginReference');
  }
}
