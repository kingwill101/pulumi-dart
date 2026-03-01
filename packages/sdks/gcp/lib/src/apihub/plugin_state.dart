// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'plugin_actions_config.dart';
import 'plugin_config_template.dart';
import 'plugin_documentation.dart';
import 'plugin_hosting_service.dart';

/// Input properties used for looking up and filtering Plugin resources.
class PluginState {
  /// The configuration of actions supported by the plugin.
  /// Structure is documented below.
  final pulumi.Input<List<PluginActionsConfig>>? actionsConfigs;
  /// ConfigTemplate represents the configuration template for a plugin.
  /// Structure is documented below.
  final pulumi.Input<PluginConfigTemplate>? configTemplate;
  /// Timestamp indicating when the plugin was created.
  final pulumi.Input<String>? createTime;
  /// The plugin description. Max length is 2000 characters (Unicode code
  /// points).
  final pulumi.Input<String>? description;
  /// The display name of the plugin. Max length is 50 characters (Unicode code
  /// points).
  final pulumi.Input<String>? displayName;
  /// Documentation details.
  /// Structure is documented below.
  final pulumi.Input<PluginDocumentation>? documentation;
  /// The information related to the service implemented by the plugin
  /// developer, used to invoke the plugin's functionality.
  /// Structure is documented below.
  final pulumi.Input<PluginHostingService>? hostingService;
  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  final pulumi.Input<String>? location;
  /// Identifier. The name of the plugin.
  /// Format: `projects/{project}/locations/{location}/plugins/{plugin}`
  final pulumi.Input<String>? name;
  /// The type of the plugin, indicating whether it is 'SYSTEM_OWNED' or
  /// 'USER_OWNED'.
  /// Possible values:
  /// OWNERSHIP_TYPE_UNSPECIFIED
  /// SYSTEM_OWNED
  /// USER_OWNED
  final pulumi.Input<String>? ownershipType;
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
  final pulumi.Input<String>? pluginId;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// Represents the state of the plugin.
  /// Note this field will not be set for plugins developed via plugin
  /// framework as the state will be managed at plugin instance level.
  /// Possible values:
  /// STATE_UNSPECIFIED
  /// ENABLED
  /// DISABLED
  final pulumi.Input<String>? state;
  /// Timestamp indicating when the plugin was last updated.
  final pulumi.Input<String>? updateTime;

  /// Creates a new [PluginState].
  /// [actionsConfigs] The configuration of actions supported by the plugin.
  /// [configTemplate] ConfigTemplate represents the configuration template for a plugin.
  /// [createTime] Timestamp indicating when the plugin was created.
  /// [description] The plugin description. Max length is 2000 characters (Unicode code
  /// [displayName] The display name of the plugin. Max length is 50 characters (Unicode code
  /// [documentation] Documentation details.
  /// [hostingService] The information related to the service implemented by the plugin
  /// [location] Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  /// [name] Identifier. The name of the plugin.
  /// [ownershipType] The type of the plugin, indicating whether it is 'SYSTEM_OWNED' or
  /// [pluginCategory] Possible values:
  /// [pluginId] The ID to use for the Plugin resource, which will become the final
  /// [project] The ID of the project in which the resource belongs.
  /// [state] Represents the state of the plugin.
  /// [updateTime] Timestamp indicating when the plugin was last updated.
  PluginState({
    pulumi.Output<List<PluginActionsConfig>>? actionsConfigs,
    pulumi.Output<PluginConfigTemplate>? configTemplate,
    pulumi.Output<String>? createTime,
    pulumi.Output<String>? description,
    pulumi.Output<String>? displayName,
    pulumi.Output<PluginDocumentation>? documentation,
    pulumi.Output<PluginHostingService>? hostingService,
    pulumi.Output<String>? location,
    pulumi.Output<String>? name,
    pulumi.Output<String>? ownershipType,
    pulumi.Output<String>? pluginCategory,
    pulumi.Output<String>? pluginId,
    pulumi.Output<String>? project,
    pulumi.Output<String>? state,
    pulumi.Output<String>? updateTime,
  }) :
      actionsConfigs = pulumi.Input.asOptionalInput<List<PluginActionsConfig>>(actionsConfigs),
      configTemplate = pulumi.Input.asOptionalInput<PluginConfigTemplate>(configTemplate),
      createTime = pulumi.Input.asOptionalInput<String>(createTime),
      description = pulumi.Input.asOptionalInput<String>(description),
      displayName = pulumi.Input.asOptionalInput<String>(displayName),
      documentation = pulumi.Input.asOptionalInput<PluginDocumentation>(documentation),
      hostingService = pulumi.Input.asOptionalInput<PluginHostingService>(hostingService),
      location = pulumi.Input.asOptionalInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      ownershipType = pulumi.Input.asOptionalInput<String>(ownershipType),
      pluginCategory = pulumi.Input.asOptionalInput<String>(pluginCategory),
      pluginId = pulumi.Input.asOptionalInput<String>(pluginId),
      project = pulumi.Input.asOptionalInput<String>(project),
      state = pulumi.Input.asOptionalInput<String>(state),
      updateTime = pulumi.Input.asOptionalInput<String>(updateTime);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'actionsConfigs': ?pulumi.Input.mapOptionalInputValue<List<PluginActionsConfig>, List<Map<String, dynamic>>>(actionsConfigs, (value) => pulumi.Input.encodeList<PluginActionsConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
      'configTemplate': ?pulumi.Input.mapOptionalInputValue<PluginConfigTemplate, Map<String, dynamic>>(configTemplate, (value) => value.toMap()),
      'createTime': ?createTime,
      'description': ?description,
      'displayName': ?displayName,
      'documentation': ?pulumi.Input.mapOptionalInputValue<PluginDocumentation, Map<String, dynamic>>(documentation, (value) => value.toMap()),
      'hostingService': ?pulumi.Input.mapOptionalInputValue<PluginHostingService, Map<String, dynamic>>(hostingService, (value) => value.toMap()),
      'location': ?location,
      'name': ?name,
      'ownershipType': ?ownershipType,
      'pluginCategory': ?pluginCategory,
      'pluginId': ?pluginId,
      'project': ?project,
      'state': ?state,
      'updateTime': ?updateTime,
    };
  }

  factory PluginState.fromMap(Map<String, dynamic> map) {
    return PluginState(
      actionsConfigs: map['actionsConfigs'] == null ? null : pulumi.Output.create<List<PluginActionsConfig>>(pulumi.Input.decodeList<PluginActionsConfig>(map['actionsConfigs'], (value) => PluginActionsConfig.fromMap((value as Map).cast<String, dynamic>()))),
      configTemplate: map['configTemplate'] == null ? null : pulumi.Output.create<PluginConfigTemplate>(PluginConfigTemplate.fromMap((map['configTemplate'] as Map).cast<String, dynamic>())),
      createTime: map['createTime'] == null ? null : pulumi.Output.create<String>(map['createTime'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      displayName: map['displayName'] == null ? null : pulumi.Output.create<String>(map['displayName'] as String),
      documentation: map['documentation'] == null ? null : pulumi.Output.create<PluginDocumentation>(PluginDocumentation.fromMap((map['documentation'] as Map).cast<String, dynamic>())),
      hostingService: map['hostingService'] == null ? null : pulumi.Output.create<PluginHostingService>(PluginHostingService.fromMap((map['hostingService'] as Map).cast<String, dynamic>())),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      ownershipType: map['ownershipType'] == null ? null : pulumi.Output.create<String>(map['ownershipType'] as String),
      pluginCategory: map['pluginCategory'] == null ? null : pulumi.Output.create<String>(map['pluginCategory'] as String),
      pluginId: map['pluginId'] == null ? null : pulumi.Output.create<String>(map['pluginId'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      state: map['state'] == null ? null : pulumi.Output.create<String>(map['state'] as String),
      updateTime: map['updateTime'] == null ? null : pulumi.Output.create<String>(map['updateTime'] as String),
    );
  }
}

