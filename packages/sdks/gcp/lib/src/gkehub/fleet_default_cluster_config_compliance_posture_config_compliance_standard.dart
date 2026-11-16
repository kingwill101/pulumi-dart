// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class FleetDefaultClusterConfigCompliancePostureConfigComplianceStandard {
  /// Name of the compliance standard.
  final pulumi.Input<String?>? standard;

  /// Creates a new [FleetDefaultClusterConfigCompliancePostureConfigComplianceStandard].
  /// [standard] Name of the compliance standard.
  const FleetDefaultClusterConfigCompliancePostureConfigComplianceStandard({
    this.standard,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'standard': ?standard,
    };
  }

  factory FleetDefaultClusterConfigCompliancePostureConfigComplianceStandard.fromMap(Map<String, dynamic> map) {
    return FleetDefaultClusterConfigCompliancePostureConfigComplianceStandard(
      standard: (() { final guardedValue = map['standard']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
