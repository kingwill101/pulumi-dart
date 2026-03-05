import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_securitycenter_v1_custom_config_response.dart';
import 'organization_security_health_analytics_setting_custom_module_args.dart';

/// Creates a resident SecurityHealthAnalyticsCustomModule at the scope of the given CRM parent, and also creates inherited SecurityHealthAnalyticsCustomModules for all CRM descendants of the given parent. These modules are enabled by default.
/// Auto-naming is currently not supported for this resource.
class OrganizationSecurityHealthAnalyticsSettingCustomModule extends pulumi.CustomResource {
  /// If empty, indicates that the custom module was created in the organization, folder, or project in which you are viewing the custom module. Otherwise, `ancestor_module` specifies the organization or folder from which the custom module is inherited.
  late final pulumi.Output<String> ancestorModule;
  /// The user specified custom configuration for the module.
  late final pulumi.Output<GoogleCloudSecuritycenterV1CustomConfigResponse> customConfig;
  /// The display name of the Security Health Analytics custom module. This display name becomes the finding category for all findings that are returned by this custom module. The display name must be between 1 and 128 characters, start with a lowercase letter, and contain alphanumeric characters or underscores only.
  late final pulumi.Output<String> displayName;
  /// The enablement state of the custom module.
  late final pulumi.Output<String> enablementState;
  /// The editor that last updated the custom module.
  late final pulumi.Output<String> lastEditor;
  /// Immutable. The resource name of the custom module. Its format is "organizations/{organization}/securityHealthAnalyticsSettings/customModules/{customModule}", or "folders/{folder}/securityHealthAnalyticsSettings/customModules/{customModule}", or "projects/{project}/securityHealthAnalyticsSettings/customModules/{customModule}" The id {customModule} is server-generated and is not user settable. It will be a numeric id containing 1-20 digits.
  late final pulumi.Output<String> name;
  late final pulumi.Output<String> organizationId;
  /// The time at which the custom module was last updated.
  late final pulumi.Output<String> updateTime;

  /// Creates a new [OrganizationSecurityHealthAnalyticsSettingCustomModule].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [OrganizationSecurityHealthAnalyticsSettingCustomModule]. {@macro pulumi_securitycenter_v1_organization_security_health_analytics_setting_custom_module_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  OrganizationSecurityHealthAnalyticsSettingCustomModule(
    String name, {
    OrganizationSecurityHealthAnalyticsSettingCustomModuleArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'google-native:securitycenter/v1:OrganizationSecurityHealthAnalyticsSettingCustomModule',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    ancestorModule = registerOutput<String>('ancestorModule');
    customConfig = registerOutput<GoogleCloudSecuritycenterV1CustomConfigResponse>('customConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return GoogleCloudSecuritycenterV1CustomConfigResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    displayName = registerOutput<String>('displayName');
    enablementState = registerOutput<String>('enablementState');
    lastEditor = registerOutput<String>('lastEditor');
    this.name = registerOutput<String>('name');
    organizationId = registerOutput<String>('organizationId');
    updateTime = registerOutput<String>('updateTime');
  }
}
