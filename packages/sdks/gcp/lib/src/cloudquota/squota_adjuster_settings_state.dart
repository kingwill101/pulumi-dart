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
    pulumi.Output<String>? effectiveContainer,
    pulumi.Output<String>? effectiveEnablement,
    pulumi.Output<String>? enablement,
    pulumi.Output<bool>? inherited,
    pulumi.Output<String>? inheritedFrom,
    pulumi.Output<String>? parent,
  }) :
      effectiveContainer = pulumi.Input.asOptionalInput<String>(effectiveContainer),
      effectiveEnablement = pulumi.Input.asOptionalInput<String>(effectiveEnablement),
      enablement = pulumi.Input.asOptionalInput<String>(enablement),
      inherited = pulumi.Input.asOptionalInput<bool>(inherited),
      inheritedFrom = pulumi.Input.asOptionalInput<String>(inheritedFrom),
      parent = pulumi.Input.asOptionalInput<String>(parent);

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
      effectiveContainer: map['effectiveContainer'] == null ? null : pulumi.Output.create<String>(map['effectiveContainer'] as String),
      effectiveEnablement: map['effectiveEnablement'] == null ? null : pulumi.Output.create<String>(map['effectiveEnablement'] as String),
      enablement: map['enablement'] == null ? null : pulumi.Output.create<String>(map['enablement'] as String),
      inherited: map['inherited'] == null ? null : pulumi.Output.create<bool>(map['inherited'] as bool),
      inheritedFrom: map['inheritedFrom'] == null ? null : pulumi.Output.create<String>(map['inheritedFrom'] as String),
      parent: map['parent'] == null ? null : pulumi.Output.create<String>(map['parent'] as String),
    );
  }
}

