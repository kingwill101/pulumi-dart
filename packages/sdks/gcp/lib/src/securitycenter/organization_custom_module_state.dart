// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'organization_custom_module_custom_config.dart';

/// Input properties used for looking up and filtering OrganizationCustomModule resources.
class OrganizationCustomModuleState {
  /// If empty, indicates that the custom module was created in the organization, folder,
  /// or project in which you are viewing the custom module. Otherwise, ancestor_module
  /// specifies the organization or folder from which the custom module is inherited.
  final pulumi.Input<String>? ancestorModule;
  /// The user specified custom configuration for the module.
  /// Structure is documented below.
  final pulumi.Input<OrganizationCustomModuleCustomConfig>? customConfig;
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
  /// The resource name of the custom module. Its format is "organizations/{org_id}/securityHealthAnalyticsSettings/customModules/{customModule}".
  /// The id {customModule} is server-generated and is not user settable. It will be a numeric id containing 1-20 digits.
  final pulumi.Input<String>? name;
  /// Numerical ID of the parent organization.
  final pulumi.Input<String>? organization;
  /// The time at which the custom module was last updated.
  /// A timestamp in RFC3339 UTC "Zulu" format, with nanosecond resolution and
  /// up to nine fractional digits. Examples: "2014-10-02T15:01:23Z" and "2014-10-02T15:01:23.045123456Z".
  final pulumi.Input<String>? updateTime;

  /// Creates a new [OrganizationCustomModuleState].
  /// [ancestorModule] If empty, indicates that the custom module was created in the organization, folder,
  /// [customConfig] The user specified custom configuration for the module.
  /// [displayName] The display name of the Security Health Analytics custom module. This
  /// [enablementState] The enablement state of the custom module.
  /// [lastEditor] The editor that last updated the custom module.
  /// [name] The resource name of the custom module. Its format is "organizations/{org_id}/securityHealthAnalyticsSettings/customModules/{customModule}".
  /// [organization] Numerical ID of the parent organization.
  /// [updateTime] The time at which the custom module was last updated.
  OrganizationCustomModuleState({
    this.ancestorModule,
    this.customConfig,
    this.displayName,
    this.enablementState,
    this.lastEditor,
    this.name,
    this.organization,
    this.updateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ancestorModule': ?ancestorModule,
      'customConfig': ?pulumi.Input.mapOptionalInputValue<OrganizationCustomModuleCustomConfig, Map<String, dynamic>>(customConfig, (value) => value.toMap()),
      'displayName': ?displayName,
      'enablementState': ?enablementState,
      'lastEditor': ?lastEditor,
      'name': ?name,
      'organization': ?organization,
      'updateTime': ?updateTime,
    };
  }

  factory OrganizationCustomModuleState.fromMap(Map<String, dynamic> map) {
    return OrganizationCustomModuleState(
      ancestorModule: map['ancestorModule'] == null ? null : (map['ancestorModule']! as String).input(),
      customConfig: map['customConfig'] == null ? null : (OrganizationCustomModuleCustomConfig.fromMap((map['customConfig']! as Map).cast<String, dynamic>())).input(),
      displayName: map['displayName'] == null ? null : (map['displayName']! as String).input(),
      enablementState: map['enablementState'] == null ? null : (map['enablementState']! as String).input(),
      lastEditor: map['lastEditor'] == null ? null : (map['lastEditor']! as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      organization: map['organization'] == null ? null : (map['organization']! as String).input(),
      updateTime: map['updateTime'] == null ? null : (map['updateTime']! as String).input(),
    );
  }
}

