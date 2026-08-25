// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AiReasoningEngineSpecBuildSpec {
  /// Optional. The resource name of the Cloud Build WorkerPool to use for the build.
  final pulumi.Input<String?>? workerPool;

  /// Creates a new [AiReasoningEngineSpecBuildSpec].
  /// [workerPool] Optional. The resource name of the Cloud Build WorkerPool to use for the build.
  const AiReasoningEngineSpecBuildSpec({
    this.workerPool,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'workerPool': ?workerPool,
    };
  }

  factory AiReasoningEngineSpecBuildSpec.fromMap(Map<String, dynamic> map) {
    return AiReasoningEngineSpecBuildSpec(
      workerPool: (() { final guardedValue = map['workerPool']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
