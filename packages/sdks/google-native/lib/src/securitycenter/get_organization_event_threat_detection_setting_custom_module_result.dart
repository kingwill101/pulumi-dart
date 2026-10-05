// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getOrganizationEventThreatDetectionSettingCustomModule.
class GetOrganizationEventThreatDetectionSettingCustomModuleResult {
  /// Config for the module. For the resident module, its config value is defined at this level. For the inherited module, its config value is inherited from the ancestor module.
  final Map<String, String>? config;
  /// The description for the module.
  final String? description;
  /// The human readable name to be displayed for the module.
  final String? displayName;
  /// The state of enablement for the module at the given level of the hierarchy.
  final String? enablementState;
  /// The editor the module was last updated by.
  final String? lastEditor;
  /// Immutable. The resource name of the Event Threat Detection custom module. Its format is: * "organizations/{organization}/eventThreatDetectionSettings/customModules/{module}". * "folders/{folder}/eventThreatDetectionSettings/customModules/{module}". * "projects/{project}/eventThreatDetectionSettings/customModules/{module}".
  final String? name;
  /// Type for the module. e.g. CONFIGURABLE_BAD_IP.
  final String? type;
  /// The time the module was last updated.
  final String? updateTime;

  /// Creates a new [GetOrganizationEventThreatDetectionSettingCustomModuleResult].
  /// [config] Config for the module. For the resident module, its config value is defined at this level. For the inherited module, its config value is inherited from the ancestor module.
  /// [description] The description for the module.
  /// [displayName] The human readable name to be displayed for the module.
  /// [enablementState] The state of enablement for the module at the given level of the hierarchy.
  /// [lastEditor] The editor the module was last updated by.
  /// [name] Immutable. The resource name of the Event Threat Detection custom module. Its format is: * "organizations/{organization}/eventThreatDetectionSettings/customModules/{module}". * "folders/{folder}/eventThreatDetectionSettings/customModules/{module}". * "projects/{project}/eventThreatDetectionSettings/customModules/{module}".
  /// [type] Type for the module. e.g. CONFIGURABLE_BAD_IP.
  /// [updateTime] The time the module was last updated.
  const GetOrganizationEventThreatDetectionSettingCustomModuleResult({
    this.config,
    this.description,
    this.displayName,
    this.enablementState,
    this.lastEditor,
    this.name,
    this.type,
    this.updateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'config': ?config,
      'description': ?description,
      'displayName': ?displayName,
      'enablementState': ?enablementState,
      'lastEditor': ?lastEditor,
      'name': ?name,
      'type': ?type,
      'updateTime': ?updateTime,
    };
  }

  factory GetOrganizationEventThreatDetectionSettingCustomModuleResult.fromMap(Map<String, dynamic> map) {
    return GetOrganizationEventThreatDetectionSettingCustomModuleResult(
      config: (() { final guardedValue = map['config']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      enablementState: (() { final guardedValue = map['enablementState']; if (guardedValue == null) return null; return guardedValue as String; })(),
      lastEditor: (() { final guardedValue = map['lastEditor']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
      updateTime: (() { final guardedValue = map['updateTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
