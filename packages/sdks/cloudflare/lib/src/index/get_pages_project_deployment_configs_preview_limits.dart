// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetPagesProjectDeploymentConfigsPreviewLimits {
  /// CPU time limit in milliseconds.
  final pulumi.Input<int> cpuMs;

  /// Creates a new [GetPagesProjectDeploymentConfigsPreviewLimits].
  /// [cpuMs] CPU time limit in milliseconds.
  const GetPagesProjectDeploymentConfigsPreviewLimits({
    required this.cpuMs,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cpuMs': cpuMs,
    };
  }

  factory GetPagesProjectDeploymentConfigsPreviewLimits.fromMap(Map<String, dynamic> map) {
    return GetPagesProjectDeploymentConfigsPreviewLimits(
      cpuMs: pulumi.Input.fromValue((map['cpuMs'] as num).toInt()),
    );
  }
}
