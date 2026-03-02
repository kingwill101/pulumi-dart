// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering SQuotaAdjusterSettings resources.
class SQuotaAdjusterSettingsState {
  /// (Deprecated)
  /// The resource container that determines if the quota adjuster is set for this project.
  /// Expect this field to be empty currently.
  final pulumi.Input<String>? effectiveContainer;
  /// (Deprecated)
  /// Based on the effective container`s setting above, determines Whether this resource container has the quota adjuster enabled.
  /// Expect this field to be empty currently.
  final pulumi.Input<String>? effectiveEnablement;
  /// Required. The configured value of the enablement at the given resource.
  /// Possible values are: `ENABLED`, `DISABLED`.
  final pulumi.Input<String>? enablement;
  /// Indicates whether the setting is inherited or explicitly specified.
  final pulumi.Input<bool>? inherited;
  /// The resource container from which the setting is inherited. This refers to the  nearest ancestor with enablement set (either ENABLED or DISABLED).
  /// The value can be `organizations/{organization_id}`, `folders/{folder_id}`, or can be `default` if no ancestor exists with enablement set.
  /// The value will be empty when `enablement` is specified on this resource container.
  final pulumi.Input<String>? inheritedFrom;
  /// The parent of the quota preference. Allowed parent format is "projects/[project-id / number]".
  final pulumi.Input<String>? parent;

  /// Creates a new [SQuotaAdjusterSettingsState].
  /// [effectiveContainer] (Deprecated)
  /// [effectiveEnablement] (Deprecated)
  /// [enablement] Required. The configured value of the enablement at the given resource.
  /// [inherited] Indicates whether the setting is inherited or explicitly specified.
  /// [inheritedFrom] The resource container from which the setting is inherited. This refers to the  nearest ancestor with enablement set (either ENABLED or DISABLED).
  /// [parent] The parent of the quota preference. Allowed parent format is "projects/[project-id / number]".
  SQuotaAdjusterSettingsState({
    this.effectiveContainer,
    this.effectiveEnablement,
    this.enablement,
    this.inherited,
    this.inheritedFrom,
    this.parent,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'effectiveContainer': ?effectiveContainer,
      'effectiveEnablement': ?effectiveEnablement,
      'enablement': ?enablement,
      'inherited': ?inherited,
      'inheritedFrom': ?inheritedFrom,
      'parent': ?parent,
    };
  }

  factory SQuotaAdjusterSettingsState.fromMap(Map<String, dynamic> map) {
    return SQuotaAdjusterSettingsState(
      effectiveContainer: map['effectiveContainer'] == null ? null : (map['effectiveContainer'] as String).input(),
      effectiveEnablement: map['effectiveEnablement'] == null ? null : (map['effectiveEnablement'] as String).input(),
      enablement: map['enablement'] == null ? null : (map['enablement'] as String).input(),
      inherited: map['inherited'] == null ? null : (map['inherited'] as bool).input(),
      inheritedFrom: map['inheritedFrom'] == null ? null : (map['inheritedFrom'] as String).input(),
      parent: map['parent'] == null ? null : (map['parent'] as String).input(),
    );
  }
}

