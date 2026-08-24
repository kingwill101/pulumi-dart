// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class PagesProjectDeploymentConfigsPreviewLimits {
  /// CPU time limit in milliseconds.
  final pulumi.Input<int> cpuMs;

  /// Creates a new [PagesProjectDeploymentConfigsPreviewLimits].
  /// [cpuMs] CPU time limit in milliseconds.
  const PagesProjectDeploymentConfigsPreviewLimits({
    required this.cpuMs,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cpuMs': cpuMs,
    };
  }

  factory PagesProjectDeploymentConfigsPreviewLimits.fromMap(Map<String, dynamic> map) {
    return PagesProjectDeploymentConfigsPreviewLimits(
      cpuMs: pulumi.Input.fromValue((map['cpuMs'] as num).toInt()),
    );
  }
}
