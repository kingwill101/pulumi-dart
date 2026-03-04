// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'project_custom_module_custom_config.dart';

/// Input properties used for looking up and filtering ProjectCustomModule resources.
class ProjectCustomModuleState {
  /// If empty, indicates that the custom module was created in the organization,folder,
  /// or project in which you are viewing the custom module. Otherwise, ancestor_module
  /// specifies the organization or folder from which the custom module is inherited.
  final pulumi.Input<String>? ancestorModule;

  /// The user specified custom configuration for the module.
  /// Structure is documented below.
  final pulumi.Input<ProjectCustomModuleCustomConfig>? customConfig;

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

  /// The resource name of the custom module. Its format is "projects/{project}/securityHealthAnalyticsSettings/customModules/{customModule}".
  /// The id {customModule} is server-generated and is not user settable. It will be a numeric id containing 1-20 digits.
  final pulumi.Input<String>? name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// The time at which the custom module was last updated.
  /// A timestamp in RFC3339 UTC "Zulu" format, with nanosecond resolution and
  /// up to nine fractional digits. Examples: "2014-10-02T15:01:23Z" and "2014-10-02T15:01:23.045123456Z".
  final pulumi.Input<String>? updateTime;

  /// Creates a new [ProjectCustomModuleState].
  /// [ancestorModule] If empty, indicates that the custom module was created in the organization,folder,
  /// [customConfig] The user specified custom configuration for the module.
  /// [displayName] The display name of the Security Health Analytics custom module. This
  /// [enablementState] The enablement state of the custom module.
  /// [lastEditor] The editor that last updated the custom module.
  /// [name] The resource name of the custom module. Its format is "projects/{project}/securityHealthAnalyticsSettings/customModules/{customModule}".
  /// [project] The ID of the project in which the resource belongs.
  /// [updateTime] The time at which the custom module was last updated.
  ProjectCustomModuleState({
    this.ancestorModule,
    this.customConfig,
    this.displayName,
    this.enablementState,
    this.lastEditor,
    this.name,
    this.project,
    this.updateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ancestorModule': ?ancestorModule,
      'customConfig':
          ?pulumi.Input.mapOptionalInputValue<
            ProjectCustomModuleCustomConfig,
            Map<String, dynamic>
          >(customConfig, (value) => value.toMap()),
      'displayName': ?displayName,
      'enablementState': ?enablementState,
      'lastEditor': ?lastEditor,
      'name': ?name,
      'project': ?project,
      'updateTime': ?updateTime,
    };
  }

  factory ProjectCustomModuleState.fromMap(Map<String, dynamic> map) {
    return ProjectCustomModuleState(
      ancestorModule: (() {
        final guardedValue = map['ancestorModule'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      customConfig: (() {
        final guardedValue = map['customConfig'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ProjectCustomModuleCustomConfig.fromMap(
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
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      project: (() {
        final guardedValue = map['project'];
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
