// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetPagesProjectsResultDeploymentConfigsProductionLimits {
  /// CPU time limit in milliseconds.
  final pulumi.Input<int> cpuMs;

  /// Creates a new [GetPagesProjectsResultDeploymentConfigsProductionLimits].
  /// [cpuMs] CPU time limit in milliseconds.
  const GetPagesProjectsResultDeploymentConfigsProductionLimits({
    required this.cpuMs,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cpuMs': cpuMs,
    };
  }

  factory GetPagesProjectsResultDeploymentConfigsProductionLimits.fromMap(Map<String, dynamic> map) {
    return GetPagesProjectsResultDeploymentConfigsProductionLimits(
      cpuMs: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['cpuMs'])),
    );
  }
}
