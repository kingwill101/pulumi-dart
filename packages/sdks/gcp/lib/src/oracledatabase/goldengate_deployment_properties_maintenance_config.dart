// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GoldengateDeploymentPropertiesMaintenanceConfig {
  /// Defines auto upgrade period for bundle releases. Manually configured period
  /// cannot be longer than service defined period for bundle releases. This
  /// period must be shorter or equal to major release upgrade period. Not
  /// passing this field during create will equate to using the service default.
  final pulumi.Input<int>? bundleReleaseUpgradePeriodDays;
  /// Defines auto upgrade period for interim releases. This period must be
  /// shorter or equal to bundle release upgrade period.
  final pulumi.Input<int>? interimReleaseUpgradePeriodDays;
  /// By default auto upgrade for interim releases are not enabled. If
  /// auto-upgrade is enabled for interim release,  you have to specify
  /// interimReleaseUpgradePeriodDays too.
  final pulumi.Input<bool>? isInterimReleaseAutoUpgradeEnabled;
  /// Defines auto upgrade period for major releases. Manually configured period
  /// cannot be longer than service defined period for major releases. Not
  /// passing this field during create will equate to using the service default.
  final pulumi.Input<int>? majorReleaseUpgradePeriodDays;
  /// Defines auto upgrade period for releases with security fix. Manually
  /// configured period cannot be longer than service defined period for security
  /// releases. Not passing this field during create will equate to using the
  /// service default.
  final pulumi.Input<int>? securityPatchUpgradePeriodDays;

  /// Creates a new [GoldengateDeploymentPropertiesMaintenanceConfig].
  /// [bundleReleaseUpgradePeriodDays] Defines auto upgrade period for bundle releases. Manually configured period
  /// [interimReleaseUpgradePeriodDays] Defines auto upgrade period for interim releases. This period must be
  /// [isInterimReleaseAutoUpgradeEnabled] By default auto upgrade for interim releases are not enabled. If
  /// [majorReleaseUpgradePeriodDays] Defines auto upgrade period for major releases. Manually configured period
  /// [securityPatchUpgradePeriodDays] Defines auto upgrade period for releases with security fix. Manually
  const GoldengateDeploymentPropertiesMaintenanceConfig({
    this.bundleReleaseUpgradePeriodDays,
    this.interimReleaseUpgradePeriodDays,
    this.isInterimReleaseAutoUpgradeEnabled,
    this.majorReleaseUpgradePeriodDays,
    this.securityPatchUpgradePeriodDays,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bundleReleaseUpgradePeriodDays': ?bundleReleaseUpgradePeriodDays,
      'interimReleaseUpgradePeriodDays': ?interimReleaseUpgradePeriodDays,
      'isInterimReleaseAutoUpgradeEnabled': ?isInterimReleaseAutoUpgradeEnabled,
      'majorReleaseUpgradePeriodDays': ?majorReleaseUpgradePeriodDays,
      'securityPatchUpgradePeriodDays': ?securityPatchUpgradePeriodDays,
    };
  }

  factory GoldengateDeploymentPropertiesMaintenanceConfig.fromMap(Map<String, dynamic> map) {
    return GoldengateDeploymentPropertiesMaintenanceConfig(
      bundleReleaseUpgradePeriodDays: (() { final guardedValue = map['bundleReleaseUpgradePeriodDays']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      interimReleaseUpgradePeriodDays: (() { final guardedValue = map['interimReleaseUpgradePeriodDays']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      isInterimReleaseAutoUpgradeEnabled: (() { final guardedValue = map['isInterimReleaseAutoUpgradeEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      majorReleaseUpgradePeriodDays: (() { final guardedValue = map['majorReleaseUpgradePeriodDays']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      securityPatchUpgradePeriodDays: (() { final guardedValue = map['securityPatchUpgradePeriodDays']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}
