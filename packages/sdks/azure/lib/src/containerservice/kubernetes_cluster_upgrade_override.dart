// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class KubernetesClusterUpgradeOverride {
  /// Specifies the duration, in RFC 3339 format (e.g., `2025-10-01T13:00:00Z`), the `upgradeOverride` values are effective. This field must be set for the `upgradeOverride` values to take effect. The date-time must be within the next 30 days.
  ///
  /// &gt; **Note:** This only matches the start time of an upgrade, and the effectiveness won't change once an upgrade starts even if the `effectiveUntil` value expires as the upgrade proceeds.
  final pulumi.Input<String?>? effectiveUntil;
  /// Whether to force upgrade the cluster. Possible values are `true` or `false`.
  ///
  /// &gt; **Note:** The `forceUpgradeEnabled` field instructs the upgrade operation to bypass upgrade protections (e.g. checking for deprecated API usage) which may render the cluster inoperative after the upgrade process has completed. Use the `forceUpgradeEnabled` option with extreme caution only.
  final pulumi.Input<bool> forceUpgradeEnabled;

  /// Creates a new [KubernetesClusterUpgradeOverride].
  /// [effectiveUntil] Specifies the duration, in RFC 3339 format (e.g., `2025-10-01T13:00:00Z`), the `upgradeOverride` values are effective. This field must be set for the `upgradeOverride` values to take effect. The date-time must be within the next 30 days.
  /// [forceUpgradeEnabled] Whether to force upgrade the cluster. Possible values are `true` or `false`.
  const KubernetesClusterUpgradeOverride({
    this.effectiveUntil,
    required this.forceUpgradeEnabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'effectiveUntil': ?effectiveUntil,
      'forceUpgradeEnabled': forceUpgradeEnabled,
    };
  }

  factory KubernetesClusterUpgradeOverride.fromMap(Map<String, dynamic> map) {
    return KubernetesClusterUpgradeOverride(
      effectiveUntil: (() { final guardedValue = map['effectiveUntil']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      forceUpgradeEnabled: pulumi.Input.fromValue(map['forceUpgradeEnabled'] as bool),
    );
  }
}
