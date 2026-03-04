// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'management_organization_security_health_analytics_custom_module_custom_config.dart';

/// Input properties used for looking up and filtering ManagementOrganizationSecurityHealthAnalyticsCustomModule resources.
class ManagementOrganizationSecurityHealthAnalyticsCustomModuleState {
  /// If empty, indicates that the custom module was created in the organization, folder,
  /// or project in which you are viewing the custom module. Otherwise, ancestor_module
  /// specifies the organization or folder from which the custom module is inherited.
  final pulumi.Input<String>? ancestorModule;

  /// The user specified custom configuration for the module.
  /// Structure is documented below.
  final pulumi.Input<
    ManagementOrganizationSecurityHealthAnalyticsCustomModuleCustomConfig
  >?
  customConfig;

  /// The display name of the Security Health Analytics custom module. This
  /// display name becomes the finding category for all findings that are
  /// returned by this custom module. The display name must be between 1 and
  /// 128 characters, start with a lowercase letter, and contain alphanumeric
  /// characters or underscores only.
  final pulumi.Input<String>? displayName;

  /// The enablement state of the custom module.
  /// Possible values are: `ENABLED`, `DISABLED`.
  final pulumi.Input<String>? enablementState;

  /// The editor that last updated the custom module.
  final pulumi.Input<String>? lastEditor;

  /// Location ID of the parent organization. If not provided, 'global' will be used as the default location.
  final pulumi.Input<String>? location;

  /// The resource name of the custom module. Its format is "organizations/{organization}/locations/{location}/securityHealthAnalyticsCustomModules/{securityHealthAnalyticsCustomModule}".
  /// The id {securityHealthAnalyticsCustomModule} is server-generated and is not user settable. It will be a numeric id containing 1-20 digits.
  final pulumi.Input<String>? name;

  /// Numerical ID of the parent organization.
  final pulumi.Input<String>? organization;

  /// The time at which the custom module was last updated.
  /// A timestamp in RFC3339 UTC "Zulu" format, with nanosecond resolution and
  /// up to nine fractional digits. Examples: "2014-10-02T15:01:23Z" and "2014-10-02T15:01:23.045123456Z".
  final pulumi.Input<String>? updateTime;

  /// Creates a new [ManagementOrganizationSecurityHealthAnalyticsCustomModuleState].
  /// [ancestorModule] If empty, indicates that the custom module was created in the organization, folder,
  /// [customConfig] The user specified custom configuration for the module.
  /// [displayName] The display name of the Security Health Analytics custom module. This
  /// [enablementState] The enablement state of the custom module.
  /// [lastEditor] The editor that last updated the custom module.
  /// [location] Location ID of the parent organization. If not provided, 'global' will be used as the default location.
  /// [name] The resource name of the custom module. Its format is "organizations/{organization}/locations/{location}/securityHealthAnalyticsCustomModules/{securityHealthAnalyticsCustomModule}".
  /// [organization] Numerical ID of the parent organization.
  /// [updateTime] The time at which the custom module was last updated.
  ManagementOrganizationSecurityHealthAnalyticsCustomModuleState({
    this.ancestorModule,
    this.customConfig,
    this.displayName,
    this.enablementState,
    this.lastEditor,
    this.location,
    this.name,
    this.organization,
    this.updateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ancestorModule': ?ancestorModule,
      'customConfig':
          ?pulumi.Input.mapOptionalInputValue<
            ManagementOrganizationSecurityHealthAnalyticsCustomModuleCustomConfig,
            Map<String, dynamic>
          >(customConfig, (value) => value.toMap()),
      'displayName': ?displayName,
      'enablementState': ?enablementState,
      'lastEditor': ?lastEditor,
      'location': ?location,
      'name': ?name,
      'organization': ?organization,
      'updateTime': ?updateTime,
    };
  }

  factory ManagementOrganizationSecurityHealthAnalyticsCustomModuleState.fromMap(
    Map<String, dynamic> map,
  ) {
    return ManagementOrganizationSecurityHealthAnalyticsCustomModuleState(
      ancestorModule: (() {
        final guardedValue = map['ancestorModule'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      customConfig: (() {
        final guardedValue = map['customConfig'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ManagementOrganizationSecurityHealthAnalyticsCustomModuleCustomConfig.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      displayName: (() {
        final guardedValue = map['displayName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      enablementState: (() {
        final guardedValue = map['enablementState'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      lastEditor: (() {
        final guardedValue = map['lastEditor'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      location: (() {
        final guardedValue = map['location'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      organization: (() {
        final guardedValue = map['organization'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      updateTime: (() {
        final guardedValue = map['updateTime'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
