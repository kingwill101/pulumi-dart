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
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
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
  const PluginState({
    this.actionsConfigs,
    this.configTemplate,
    this.createTime,
    this.deletionPolicy,
    this.description,
    this.displayName,
    this.documentation,
    this.hostingService,
    this.location,
    this.name,
    this.ownershipType,
    this.pluginCategory,
    this.pluginId,
    this.project,
    this.state,
    this.updateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'actionsConfigs': ?pulumi.Input.mapOptionalInputValue<List<PluginActionsConfig>, List<Map<String, dynamic>>>(actionsConfigs, (value) => pulumi.Input.encodeList<PluginActionsConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
      'configTemplate': ?pulumi.Input.mapOptionalInputValue<PluginConfigTemplate, Map<String, dynamic>>(configTemplate, (value) => value.toMap()),
      'createTime': ?createTime,
      'deletionPolicy': ?deletionPolicy,
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
      actionsConfigs: (() { final guardedValue = map['actionsConfigs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<PluginActionsConfig>(guardedValue, (value) => PluginActionsConfig.fromMap((value as Map).cast<String, dynamic>()))); })(),
      configTemplate: (() { final guardedValue = map['configTemplate']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PluginConfigTemplate.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      documentation: (() { final guardedValue = map['documentation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PluginDocumentation.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      hostingService: (() { final guardedValue = map['hostingService']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PluginHostingService.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ownershipType: (() { final guardedValue = map['ownershipType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      pluginCategory: (() { final guardedValue = map['pluginCategory']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      pluginId: (() { final guardedValue = map['pluginId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      updateTime: (() { final guardedValue = map['updateTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
