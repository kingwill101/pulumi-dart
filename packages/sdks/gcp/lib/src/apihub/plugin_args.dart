// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'plugin_actions_config.dart';
import 'plugin_config_template.dart';
import 'plugin_documentation.dart';
import 'plugin_hosting_service.dart';

/// {@template pulumi_apihub_plugin_plugin_args_doc}
/// The set of arguments for Plugin.
/// {@endtemplate}
/// {@macro pulumi_apihub_plugin_plugin_args_doc}
class PluginArgs {
  /// The configuration of actions supported by the plugin.
  /// Structure is documented below.
  final pulumi.Input<List<PluginActionsConfig>>? actionsConfigs;
  /// ConfigTemplate represents the configuration template for a plugin.
  /// Structure is documented below.
  final pulumi.Input<PluginConfigTemplate>? configTemplate;
  /// The plugin description. Max length is 2000 characters (Unicode code
  /// points).
  final pulumi.Input<String>? description;
  /// The display name of the plugin. Max length is 50 characters (Unicode code
  /// points).
  final pulumi.Input<String> displayName;
  /// Documentation details.
  /// Structure is documented below.
  final pulumi.Input<PluginDocumentation>? documentation;
  /// The information related to the service implemented by the plugin
  /// developer, used to invoke the plugin's functionality.
  /// Structure is documented below.
  final pulumi.Input<PluginHostingService>? hostingService;
  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  final pulumi.Input<String> location;
  /// Possible values:
  /// PLUGIN_CATEGORY_UNSPECIFIED
  /// API_GATEWAY
  /// API_PRODUCER
  final pulumi.Input<String>? pluginCategory;
  /// The ID to use for the Plugin resource, which will become the final
  /// component of the Plugin's resource name. This field is optional.
  /// * If provided, the same will be used. The service will throw an error if
  /// the specified id is already used by another Plugin resource in the API hub
  /// instance.
  /// * If not provided, a system generated id will be used.
  /// This value should be 4-63 characters, overall resource name which will be
  /// of format
  /// `projects/{project}/locations/{location}/plugins/{plugin}`,
  /// its length is limited to 1000 characters and valid characters are
  /// /a-z[0-9]-_/.
  final pulumi.Input<String> pluginId;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// Creates a new [PluginArgs].
  /// [actionsConfigs] The configuration of actions supported by the plugin.
  /// [configTemplate] ConfigTemplate represents the configuration template for a plugin.
  /// [description] The plugin description. Max length is 2000 characters (Unicode code
  /// [displayName] The display name of the plugin. Max length is 50 characters (Unicode code
  /// [documentation] Documentation details.
  /// [hostingService] The information related to the service implemented by the plugin
  /// [location] Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  /// [pluginCategory] Possible values:
  /// [pluginId] The ID to use for the Plugin resource, which will become the final
  /// [project] The ID of the project in which the resource belongs.
  PluginArgs({
    this.actionsConfigs,
    this.configTemplate,
    this.description,
    required this.displayName,
    this.documentation,
    this.hostingService,
    required this.location,
    this.pluginCategory,
    required this.pluginId,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'actionsConfigs': ?pulumi.Input.mapOptionalInputValue<List<PluginActionsConfig>, List<Map<String, dynamic>>>(actionsConfigs, (value) => pulumi.Input.encodeList<PluginActionsConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
      'configTemplate': ?pulumi.Input.mapOptionalInputValue<PluginConfigTemplate, Map<String, dynamic>>(configTemplate, (value) => value.toMap()),
      'description': ?description,
      'displayName': displayName,
      'documentation': ?pulumi.Input.mapOptionalInputValue<PluginDocumentation, Map<String, dynamic>>(documentation, (value) => value.toMap()),
      'hostingService': ?pulumi.Input.mapOptionalInputValue<PluginHostingService, Map<String, dynamic>>(hostingService, (value) => value.toMap()),
      'location': location,
      'pluginCategory': ?pluginCategory,
      'pluginId': pluginId,
      'project': ?project,
    };
  }

  factory PluginArgs.fromMap(Map<String, dynamic> map) {
    return PluginArgs(
      actionsConfigs: map['actionsConfigs'] == null ? null : (pulumi.Input.decodeList<PluginActionsConfig>(map['actionsConfigs'], (value) => PluginActionsConfig.fromMap((value as Map).cast<String, dynamic>()))).input(),
      configTemplate: map['configTemplate'] == null ? null : (PluginConfigTemplate.fromMap((map['configTemplate'] as Map).cast<String, dynamic>())).input(),
      description: map['description'] == null ? null : (map['description'] as String).input(),
      displayName: (map['displayName'] as String).input(),
      documentation: map['documentation'] == null ? null : (PluginDocumentation.fromMap((map['documentation'] as Map).cast<String, dynamic>())).input(),
      hostingService: map['hostingService'] == null ? null : (PluginHostingService.fromMap((map['hostingService'] as Map).cast<String, dynamic>())).input(),
      location: (map['location'] as String).input(),
      pluginCategory: map['pluginCategory'] == null ? null : (map['pluginCategory'] as String).input(),
      pluginId: (map['pluginId'] as String).input(),
      project: map['project'] == null ? null : (map['project'] as String).input(),
    );
  }
}

