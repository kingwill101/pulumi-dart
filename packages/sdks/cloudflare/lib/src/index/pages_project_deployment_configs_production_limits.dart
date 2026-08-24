// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class PagesProjectDeploymentConfigsProductionLimits {
  /// CPU time limit in milliseconds.
  final pulumi.Input<int> cpuMs;

  /// Creates a new [PagesProjectDeploymentConfigsProductionLimits].
  /// [cpuMs] CPU time limit in milliseconds.
  const PagesProjectDeploymentConfigsProductionLimits({
    required this.cpuMs,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cpuMs': cpuMs,
    };
  }

  factory PagesProjectDeploymentConfigsProductionLimits.fromMap(Map<String, dynamic> map) {
    return PagesProjectDeploymentConfigsProductionLimits(
      cpuMs: pulumi.Input.fromValue((map['cpuMs'] as num).toInt()),
    );
  }
}
