// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'management_organization_security_health_analytics_custom_module_custom_config.dart';

/// {@template pulumi_securitycenter_management_organization_security_health_analytics_custom_module_management_organization_security_health_analytics_custom_module_args_doc}
/// The set of arguments for ManagementOrganizationSecurityHealthAnalyticsCustomModule.
/// {@endtemplate}
/// {@macro pulumi_securitycenter_management_organization_security_health_analytics_custom_module_management_organization_security_health_analytics_custom_module_args_doc}
class ManagementOrganizationSecurityHealthAnalyticsCustomModuleArgs {
  /// The user specified custom configuration for the module.
  /// Structure is documented below.
  final pulumi.Input<ManagementOrganizationSecurityHealthAnalyticsCustomModuleCustomConfig>? customConfig;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String>? deletionPolicy;
  /// The display name of the Security Health Analytics custom module. This
  /// display name becomes the finding category for all findings that are
  /// returned by this custom module. The display name must be between 1 and
  /// 128 characters, start with a lowercase letter, and contain alphanumeric
  /// characters or underscores only.
  final pulumi.Input<String>? displayName;
  /// The enablement state of the custom module.
  /// Possible values are: `ENABLED`, `DISABLED`.
  final pulumi.Input<String>? enablementState;
  /// Location ID of the parent organization. If not provided, 'global' will be used as the default location.
  final pulumi.Input<String>? location;
  /// Numerical ID of the parent organization.
  final pulumi.Input<String> organization;

  /// Creates a new [ManagementOrganizationSecurityHealthAnalyticsCustomModuleArgs].
  /// [customConfig] The user specified custom configuration for the module.
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [displayName] The display name of the Security Health Analytics custom module. This
  /// [enablementState] The enablement state of the custom module.
  /// [location] Location ID of the parent organization. If not provided, 'global' will be used as the default location.
  /// [organization] Numerical ID of the parent organization.
  const ManagementOrganizationSecurityHealthAnalyticsCustomModuleArgs({
    this.customConfig,
    this.deletionPolicy,
    this.displayName,
    this.enablementState,
    this.location,
    required this.organization,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customConfig': ?pulumi.Input.mapOptionalInputValue<ManagementOrganizationSecurityHealthAnalyticsCustomModuleCustomConfig, Map<String, dynamic>>(customConfig, (value) => value.toMap()),
      'deletionPolicy': ?deletionPolicy,
      'displayName': ?displayName,
      'enablementState': ?enablementState,
      'location': ?location,
      'organization': organization,
    };
  }

  factory ManagementOrganizationSecurityHealthAnalyticsCustomModuleArgs.fromMap(Map<String, dynamic> map) {
    return ManagementOrganizationSecurityHealthAnalyticsCustomModuleArgs(
      customConfig: (() { final guardedValue = map['customConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ManagementOrganizationSecurityHealthAnalyticsCustomModuleCustomConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      enablementState: (() { final guardedValue = map['enablementState']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      organization: pulumi.Input.fromValue(map['organization'] as String),
    );
  }
}
