// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class PatchDeploymentPatchConfigGoo {
  /// goo update settings. Use this setting to override the default goo patch rules.
  final pulumi.Input<bool> enabled;

  /// Creates a new [PatchDeploymentPatchConfigGoo].
  /// [enabled] goo update settings. Use this setting to override the default goo patch rules.
  const PatchDeploymentPatchConfigGoo({
    required this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': enabled,
    };
  }

  factory PatchDeploymentPatchConfigGoo.fromMap(Map<String, dynamic> map) {
    return PatchDeploymentPatchConfigGoo(
      enabled: pulumi.Input.fromValue(map['enabled'] as bool),
    );
  }
}
