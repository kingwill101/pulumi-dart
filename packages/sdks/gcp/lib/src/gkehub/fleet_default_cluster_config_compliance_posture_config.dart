// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'fleet_default_cluster_config_compliance_posture_config_compliance_standard.dart';

class FleetDefaultClusterConfigCompliancePostureConfig {
  /// List of enabled compliance standards.
  /// Structure is documented below.
  final pulumi.Input<List<FleetDefaultClusterConfigCompliancePostureConfigComplianceStandard>?>? complianceStandards;
  /// Sets which mode to use for Compliance Posture features.
  /// Possible values are: `DISABLED`, `ENABLED`.
  final pulumi.Input<String?>? mode;

  /// Creates a new [FleetDefaultClusterConfigCompliancePostureConfig].
  /// [complianceStandards] List of enabled compliance standards.
  /// [mode] Sets which mode to use for Compliance Posture features.
  const FleetDefaultClusterConfigCompliancePostureConfig({
    this.complianceStandards,
    this.mode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'complianceStandards': ?pulumi.Input.mapOptionalInputValue<List<FleetDefaultClusterConfigCompliancePostureConfigComplianceStandard>, List<Map<String, dynamic>>>(complianceStandards, (value) => pulumi.Input.encodeList<FleetDefaultClusterConfigCompliancePostureConfigComplianceStandard, Map<String, dynamic>>(value, (value) => value.toMap())),
      'mode': ?mode,
    };
  }

  factory FleetDefaultClusterConfigCompliancePostureConfig.fromMap(Map<String, dynamic> map) {
    return FleetDefaultClusterConfigCompliancePostureConfig(
      complianceStandards: (() { final guardedValue = map['complianceStandards']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<FleetDefaultClusterConfigCompliancePostureConfigComplianceStandard>(guardedValue, (value) => FleetDefaultClusterConfigCompliancePostureConfigComplianceStandard.fromMap((value as Map).cast<String, dynamic>()))); })(),
      mode: (() { final guardedValue = map['mode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
