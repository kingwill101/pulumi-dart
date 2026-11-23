// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AiReasoningEngineSpecBuildSpec {
  /// Optional. The service account that the Cloud Build builder runs as.
  final pulumi.Input<String?>? serviceAccount;
  /// Optional. The resource name of the Cloud Build WorkerPool to use for the build.
  final pulumi.Input<String?>? workerPool;

  /// Creates a new [AiReasoningEngineSpecBuildSpec].
  /// [serviceAccount] Optional. The service account that the Cloud Build builder runs as.
  /// [workerPool] Optional. The resource name of the Cloud Build WorkerPool to use for the build.
  const AiReasoningEngineSpecBuildSpec({
    this.serviceAccount,
    this.workerPool,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'serviceAccount': ?serviceAccount,
      'workerPool': ?workerPool,
    };
  }

  factory AiReasoningEngineSpecBuildSpec.fromMap(Map<String, dynamic> map) {
    return AiReasoningEngineSpecBuildSpec(
      serviceAccount: (() { final guardedValue = map['serviceAccount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      workerPool: (() { final guardedValue = map['workerPool']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
