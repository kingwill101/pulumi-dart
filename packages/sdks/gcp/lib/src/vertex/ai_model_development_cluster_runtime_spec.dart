// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AiModelDevelopmentClusterRuntimeSpec {
  /// The default service account used by the cluster when running any workloads
  /// on it. If not specified, the default compute engine service account will be
  /// used.
  final pulumi.Input<String?>? serviceAccount;

  /// Creates a new [AiModelDevelopmentClusterRuntimeSpec].
  /// [serviceAccount] The default service account used by the cluster when running any workloads
  const AiModelDevelopmentClusterRuntimeSpec({
    this.serviceAccount,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'serviceAccount': ?serviceAccount,
    };
  }

  factory AiModelDevelopmentClusterRuntimeSpec.fromMap(Map<String, dynamic> map) {
    return AiModelDevelopmentClusterRuntimeSpec(
      serviceAccount: (() { final guardedValue = map['serviceAccount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
