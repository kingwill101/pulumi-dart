// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getOrganizationEventThreatDetectionSettingCustomModule.
class GetOrganizationEventThreatDetectionSettingCustomModuleResult {
  /// Config for the module. For the resident module, its config value is defined at this level. For the inherited module, its config value is inherited from the ancestor module.
  final Map<String, String> config;
  /// The description for the module.
  final String description;
  /// The human readable name to be displayed for the module.
  final String displayName;
  /// The state of enablement for the module at the given level of the hierarchy.
  final String enablementState;
  /// The editor the module was last updated by.
  final String lastEditor;
  /// Immutable. The resource name of the Event Threat Detection custom module. Its format is: * "organizations/{organization}/eventThreatDetectionSettings/customModules/{module}". * "folders/{folder}/eventThreatDetectionSettings/customModules/{module}". * "projects/{project}/eventThreatDetectionSettings/customModules/{module}".
  final String name;
  /// Type for the module. e.g. CONFIGURABLE_BAD_IP.
  final String type;
  /// The time the module was last updated.
  final String updateTime;

  /// Creates a new [GetOrganizationEventThreatDetectionSettingCustomModuleResult].
  /// [config] Config for the module. For the resident module, its config value is defined at this level. For the inherited module, its config value is inherited from the ancestor module.
  /// [description] The description for the module.
  /// [displayName] The human readable name to be displayed for the module.
  /// [enablementState] The state of enablement for the module at the given level of the hierarchy.
  /// [lastEditor] The editor the module was last updated by.
  /// [name] Immutable. The resource name of the Event Threat Detection custom module. Its format is: * "organizations/{organization}/eventThreatDetectionSettings/customModules/{module}". * "folders/{folder}/eventThreatDetectionSettings/customModules/{module}". * "projects/{project}/eventThreatDetectionSettings/customModules/{module}".
  /// [type] Type for the module. e.g. CONFIGURABLE_BAD_IP.
  /// [updateTime] The time the module was last updated.
  GetOrganizationEventThreatDetectionSettingCustomModuleResult({
    required this.config,
    required this.description,
    required this.displayName,
    required this.enablementState,
    required this.lastEditor,
    required this.name,
    required this.type,
    required this.updateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'config': config,
      'description': description,
      'displayName': displayName,
      'enablementState': enablementState,
      'lastEditor': lastEditor,
      'name': name,
      'type': type,
      'updateTime': updateTime,
    };
  }

  factory GetOrganizationEventThreatDetectionSettingCustomModuleResult.fromMap(Map<String, dynamic> map) {
    return GetOrganizationEventThreatDetectionSettingCustomModuleResult(
      config: (map['config'] as Map).cast<String, String>(),
      description: map['description'] as String,
      displayName: map['displayName'] as String,
      enablementState: map['enablementState'] as String,
      lastEditor: map['lastEditor'] as String,
      name: map['name'] as String,
      type: map['type'] as String,
      updateTime: map['updateTime'] as String,
    );
  }
}

