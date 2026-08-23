// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Specifies anti affinity group config for the VMware user cluster.
class VmwareAAGConfig {
  /// Spread nodes across at least three physical hosts (requires at least three hosts). Enabled by default.
  final pulumi.Input<bool>? aagConfigDisabled;

  /// Creates a new [VmwareAAGConfig].
  /// [aagConfigDisabled] Spread nodes across at least three physical hosts (requires at least three hosts). Enabled by default.
  const VmwareAAGConfig({
    this.aagConfigDisabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'aagConfigDisabled': ?aagConfigDisabled,
    };
  }

  factory VmwareAAGConfig.fromMap(Map<String, dynamic> map) {
    return VmwareAAGConfig(
      aagConfigDisabled: (() { final guardedValue = map['aagConfigDisabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
