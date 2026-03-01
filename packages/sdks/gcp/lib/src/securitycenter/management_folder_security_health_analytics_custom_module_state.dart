// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'management_folder_security_health_analytics_custom_module_custom_config.dart';

/// Input properties used for looking up and filtering ManagementFolderSecurityHealthAnalyticsCustomModule resources.
class ManagementFolderSecurityHealthAnalyticsCustomModuleState {
  /// If empty, indicates that the custom module was created in the organization, folder,
  /// or project in which you are viewing the custom module. Otherwise, ancestor_module
  /// specifies the organization or folder from which the custom module is inherited.
  final pulumi.Input<String>? ancestorModule;
  /// The user specified custom configuration for the module.
  /// Structure is documented below.
  final pulumi.Input<ManagementFolderSecurityHealthAnalyticsCustomModuleCustomConfig>? customConfig;
  /// The display name of the Security Health Analytics custom module. This
  /// display name becomes the finding category for all findings that are
  /// returned by this custom module. The display name must be between 1 and
  /// 128 characters, start with a lowercase letter, and contain alphanumeric
  /// characters or underscores only.
  final pulumi.Input<String>? displayName;
  /// The enablement state of the custom module.
  /// Possible values are: `ENABLED`, `DISABLED`.
  final pulumi.Input<String>? enablementState;
  /// Numerical ID of the parent folder.
  final pulumi.Input<String>? folder;
  /// The editor that last updated the custom module.
  final pulumi.Input<String>? lastEditor;
  /// Location ID of the parent organization. If not provided, 'global' will be used as the default location.
  final pulumi.Input<String>? location;
  /// The resource name of the custom module. Its format is "folders/{folder}/locations/{location}/securityHealthAnalyticsCustomModules/{securityHealthAnalyticsCustomModule}".
  /// The id {securityHealthAnalyticsCustomModule} is server-generated and is not user settable. It will be a numeric id containing 1-20 digits.
  final pulumi.Input<String>? name;
  /// The time at which the custom module was last updated.
  /// A timestamp in RFC3339 UTC "Zulu" format, with nanosecond resolution and
  /// up to nine fractional digits. Examples: "2014-10-02T15:01:23Z" and "2014-10-02T15:01:23.045123456Z".
  final pulumi.Input<String>? updateTime;

  /// Creates a new [ManagementFolderSecurityHealthAnalyticsCustomModuleState].
  /// [ancestorModule] If empty, indicates that the custom module was created in the organization, folder,
  /// [customConfig] The user specified custom configuration for the module.
  /// [displayName] The display name of the Security Health Analytics custom module. This
  /// [enablementState] The enablement state of the custom module.
  /// [folder] Numerical ID of the parent folder.
  /// [lastEditor] The editor that last updated the custom module.
  /// [location] Location ID of the parent organization. If not provided, 'global' will be used as the default location.
  /// [name] The resource name of the custom module. Its format is "folders/{folder}/locations/{location}/securityHealthAnalyticsCustomModules/{securityHealthAnalyticsCustomModule}".
  /// [updateTime] The time at which the custom module was last updated.
  ManagementFolderSecurityHealthAnalyticsCustomModuleState({
    pulumi.Output<String>? ancestorModule,
    pulumi.Output<ManagementFolderSecurityHealthAnalyticsCustomModuleCustomConfig>? customConfig,
    pulumi.Output<String>? displayName,
    pulumi.Output<String>? enablementState,
    pulumi.Output<String>? folder,
    pulumi.Output<String>? lastEditor,
    pulumi.Output<String>? location,
    pulumi.Output<String>? name,
    pulumi.Output<String>? updateTime,
  }) :
      ancestorModule = pulumi.Input.asOptionalInput<String>(ancestorModule),
      customConfig = pulumi.Input.asOptionalInput<ManagementFolderSecurityHealthAnalyticsCustomModuleCustomConfig>(customConfig),
      displayName = pulumi.Input.asOptionalInput<String>(displayName),
      enablementState = pulumi.Input.asOptionalInput<String>(enablementState),
      folder = pulumi.Input.asOptionalInput<String>(folder),
      lastEditor = pulumi.Input.asOptionalInput<String>(lastEditor),
      location = pulumi.Input.asOptionalInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      updateTime = pulumi.Input.asOptionalInput<String>(updateTime);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ancestorModule': ?ancestorModule,
      'customConfig': ?pulumi.Input.mapOptionalInputValue<ManagementFolderSecurityHealthAnalyticsCustomModuleCustomConfig, Map<String, dynamic>>(customConfig, (value) => value.toMap()),
      'displayName': ?displayName,
      'enablementState': ?enablementState,
      'folder': ?folder,
      'lastEditor': ?lastEditor,
      'location': ?location,
      'name': ?name,
      'updateTime': ?updateTime,
    };
  }

  factory ManagementFolderSecurityHealthAnalyticsCustomModuleState.fromMap(Map<String, dynamic> map) {
    return ManagementFolderSecurityHealthAnalyticsCustomModuleState(
      ancestorModule: map['ancestorModule'] == null ? null : pulumi.Output.create<String>(map['ancestorModule'] as String),
      customConfig: map['customConfig'] == null ? null : pulumi.Output.create<ManagementFolderSecurityHealthAnalyticsCustomModuleCustomConfig>(ManagementFolderSecurityHealthAnalyticsCustomModuleCustomConfig.fromMap((map['customConfig'] as Map).cast<String, dynamic>())),
      displayName: map['displayName'] == null ? null : pulumi.Output.create<String>(map['displayName'] as String),
      enablementState: map['enablementState'] == null ? null : pulumi.Output.create<String>(map['enablementState'] as String),
      folder: map['folder'] == null ? null : pulumi.Output.create<String>(map['folder'] as String),
      lastEditor: map['lastEditor'] == null ? null : pulumi.Output.create<String>(map['lastEditor'] as String),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      updateTime: map['updateTime'] == null ? null : pulumi.Output.create<String>(map['updateTime'] as String),
    );
  }
}

