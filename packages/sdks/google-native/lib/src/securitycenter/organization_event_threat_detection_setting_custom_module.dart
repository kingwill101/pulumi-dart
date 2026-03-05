import 'package:pulumi/pulumi.dart' as pulumi;
import 'organization_event_threat_detection_setting_custom_module_args.dart';

/// Creates an Event Threat Detection custom module.
/// Auto-naming is currently not supported for this resource.
class OrganizationEventThreatDetectionSettingCustomModule extends pulumi.CustomResource {
  /// Config for the module. For the resident module, its config value is defined at this level. For the inherited module, its config value is inherited from the ancestor module.
  late final pulumi.Output<Map<String, String>> config;
  /// The description for the module.
  late final pulumi.Output<String> description;
  /// The human readable name to be displayed for the module.
  late final pulumi.Output<String> displayName;
  /// The state of enablement for the module at the given level of the hierarchy.
  late final pulumi.Output<String> enablementState;
  /// The editor the module was last updated by.
  late final pulumi.Output<String> lastEditor;
  /// Immutable. The resource name of the Event Threat Detection custom module. Its format is: * "organizations/{organization}/eventThreatDetectionSettings/customModules/{module}". * "folders/{folder}/eventThreatDetectionSettings/customModules/{module}". * "projects/{project}/eventThreatDetectionSettings/customModules/{module}".
  late final pulumi.Output<String> name;
  late final pulumi.Output<String> organizationId;
  /// Type for the module. e.g. CONFIGURABLE_BAD_IP.
  late final pulumi.Output<String> type;
  /// The time the module was last updated.
  late final pulumi.Output<String> updateTime;

  /// Creates a new [OrganizationEventThreatDetectionSettingCustomModule].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [OrganizationEventThreatDetectionSettingCustomModule]. {@macro pulumi_securitycenter_v1_organization_event_threat_detection_setting_custom_module_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  OrganizationEventThreatDetectionSettingCustomModule(
    String name, {
    OrganizationEventThreatDetectionSettingCustomModuleArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'google-native:securitycenter/v1:OrganizationEventThreatDetectionSettingCustomModule',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    config = registerOutput<Map<String, String>>('config');
    description = registerOutput<String>('description');
    displayName = registerOutput<String>('displayName');
    enablementState = registerOutput<String>('enablementState');
    lastEditor = registerOutput<String>('lastEditor');
    this.name = registerOutput<String>('name');
    organizationId = registerOutput<String>('organizationId');
    type = registerOutput<String>('type');
    updateTime = registerOutput<String>('updateTime');
  }
}
