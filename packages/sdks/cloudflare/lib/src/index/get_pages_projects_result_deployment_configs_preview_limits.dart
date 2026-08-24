// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetPagesProjectsResultDeploymentConfigsPreviewLimits {
  /// CPU time limit in milliseconds.
  final pulumi.Input<int> cpuMs;

  /// Creates a new [GetPagesProjectsResultDeploymentConfigsPreviewLimits].
  /// [cpuMs] CPU time limit in milliseconds.
  const GetPagesProjectsResultDeploymentConfigsPreviewLimits({
    required this.cpuMs,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cpuMs': cpuMs,
    };
  }

  factory GetPagesProjectsResultDeploymentConfigsPreviewLimits.fromMap(Map<String, dynamic> map) {
    return GetPagesProjectsResultDeploymentConfigsPreviewLimits(
      cpuMs: pulumi.Input.fromValue((map['cpuMs'] as num).toInt()),
    );
  }
}
