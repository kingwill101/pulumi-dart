// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'organization_event_threat_detection_setting_custom_module_enablement_state.dart';

/// {@template pulumi_securitycenter_v1_organization_event_threat_detection_setting_custom_module_args_doc}
/// The set of arguments for OrganizationEventThreatDetectionSettingCustomModule.
/// {@endtemplate}
/// {@macro pulumi_securitycenter_v1_organization_event_threat_detection_setting_custom_module_args_doc}
class OrganizationEventThreatDetectionSettingCustomModuleArgs {
  /// Config for the module. For the resident module, its config value is defined at this level. For the inherited module, its config value is inherited from the ancestor module.
  final pulumi.Input<Map<String, String>>? config;
  /// The description for the module.
  final pulumi.Input<String>? description;
  /// The human readable name to be displayed for the module.
  final pulumi.Input<String>? displayName;
  /// The state of enablement for the module at the given level of the hierarchy.
  final pulumi.Input<OrganizationEventThreatDetectionSettingCustomModuleEnablementState>? enablementState;
  /// Immutable. The resource name of the Event Threat Detection custom module. Its format is: * "organizations/{organization}/eventThreatDetectionSettings/customModules/{module}". * "folders/{folder}/eventThreatDetectionSettings/customModules/{module}". * "projects/{project}/eventThreatDetectionSettings/customModules/{module}".
  final pulumi.Input<String>? name;
  final pulumi.Input<String> organizationId;
  /// Type for the module. e.g. CONFIGURABLE_BAD_IP.
  final pulumi.Input<String>? type;

  /// Creates a new [OrganizationEventThreatDetectionSettingCustomModuleArgs].
  /// [config] Config for the module. For the resident module, its config value is defined at this level. For the inherited module, its config value is inherited from the ancestor module.
  /// [description] The description for the module.
  /// [displayName] The human readable name to be displayed for the module.
  /// [enablementState] The state of enablement for the module at the given level of the hierarchy.
  /// [name] Immutable. The resource name of the Event Threat Detection custom module. Its format is: * "organizations/{organization}/eventThreatDetectionSettings/customModules/{module}". * "folders/{folder}/eventThreatDetectionSettings/customModules/{module}". * "projects/{project}/eventThreatDetectionSettings/customModules/{module}".
  /// [organizationId] Required.
  /// [type] Type for the module. e.g. CONFIGURABLE_BAD_IP.
  const OrganizationEventThreatDetectionSettingCustomModuleArgs({
    this.config,
    this.description,
    this.displayName,
    this.enablementState,
    this.name,
    required this.organizationId,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'config': ?config,
      'description': ?description,
      'displayName': ?displayName,
      'enablementState': ?pulumi.Input.mapOptionalInputValue<OrganizationEventThreatDetectionSettingCustomModuleEnablementState, String>(enablementState, (value) => value.wireValue),
      'name': ?name,
      'organizationId': organizationId,
      'type': ?type,
    };
  }

  factory OrganizationEventThreatDetectionSettingCustomModuleArgs.fromMap(Map<String, dynamic> map) {
    return OrganizationEventThreatDetectionSettingCustomModuleArgs(
      config: (() { final guardedValue = map['config']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      enablementState: (() { final guardedValue = map['enablementState']; if (guardedValue == null) return null; return pulumi.Input.fromValue(OrganizationEventThreatDetectionSettingCustomModuleEnablementState.fromValue(guardedValue as String)); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      organizationId: pulumi.Input.fromValue(map['organizationId'] as String),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
