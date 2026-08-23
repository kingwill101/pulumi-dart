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
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String>? deletionPolicy;
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
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [description] The plugin description. Max length is 2000 characters (Unicode code
  /// [displayName] The display name of the plugin. Max length is 50 characters (Unicode code
  /// [documentation] Documentation details.
  /// [hostingService] The information related to the service implemented by the plugin
  /// [location] Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  /// [pluginCategory] Possible values:
  /// [pluginId] The ID to use for the Plugin resource, which will become the final
  /// [project] The ID of the project in which the resource belongs.
  const PluginArgs({
    this.actionsConfigs,
    this.configTemplate,
    this.deletionPolicy,
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
      'deletionPolicy': ?deletionPolicy,
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
      actionsConfigs: (() { final guardedValue = map['actionsConfigs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<PluginActionsConfig>(guardedValue, (value) => PluginActionsConfig.fromMap((value as Map).cast<String, dynamic>()))); })(),
      configTemplate: (() { final guardedValue = map['configTemplate']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PluginConfigTemplate.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      displayName: pulumi.Input.fromValue(map['displayName'] as String),
      documentation: (() { final guardedValue = map['documentation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PluginDocumentation.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      hostingService: (() { final guardedValue = map['hostingService']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PluginHostingService.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      location: pulumi.Input.fromValue(map['location'] as String),
      pluginCategory: (() { final guardedValue = map['pluginCategory']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      pluginId: pulumi.Input.fromValue(map['pluginId'] as String),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
