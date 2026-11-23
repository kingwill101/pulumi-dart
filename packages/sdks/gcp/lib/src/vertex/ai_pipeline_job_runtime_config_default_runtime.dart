// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ai_pipeline_job_runtime_config_default_runtime_persistent_resource_runtime_detail.dart';

class AiPipelineJobRuntimeConfigDefaultRuntime {
  /// (Optional, Beta)
  /// Persistent resource based runtime detail.
  /// Structure is documented below.
  final pulumi.Input<AiPipelineJobRuntimeConfigDefaultRuntimePersistentResourceRuntimeDetail?>? persistentResourceRuntimeDetail;

  /// Creates a new [AiPipelineJobRuntimeConfigDefaultRuntime].
  /// [persistentResourceRuntimeDetail] (Optional, Beta)
  const AiPipelineJobRuntimeConfigDefaultRuntime({
    this.persistentResourceRuntimeDetail,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'persistentResourceRuntimeDetail': ?pulumi.Input.mapOptionalInputValue<AiPipelineJobRuntimeConfigDefaultRuntimePersistentResourceRuntimeDetail, Map<String, dynamic>>(persistentResourceRuntimeDetail, (value) => value.toMap()),
    };
  }

  factory AiPipelineJobRuntimeConfigDefaultRuntime.fromMap(Map<String, dynamic> map) {
    return AiPipelineJobRuntimeConfigDefaultRuntime(
      persistentResourceRuntimeDetail: (() { final guardedValue = map['persistentResourceRuntimeDetail']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AiPipelineJobRuntimeConfigDefaultRuntimePersistentResourceRuntimeDetail.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
