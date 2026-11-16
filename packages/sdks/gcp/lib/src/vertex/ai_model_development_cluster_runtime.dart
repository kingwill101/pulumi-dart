// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ai_model_development_cluster_runtime_training_service.dart';
import 'ai_model_development_cluster_runtime_xmanager.dart';

class AiModelDevelopmentClusterRuntime {
  /// (Output)
  /// The training services running on this Vertex AI Training Cluster.
  /// Structure is documented below.
  final pulumi.Input<List<AiModelDevelopmentClusterRuntimeTrainingService>?>? trainingServices;
  /// (Output)
  /// A purpose-built, output-only view of the XManager instance attached to a
  /// cluster.
  /// Structure is documented below.
  final pulumi.Input<List<AiModelDevelopmentClusterRuntimeXmanager>?>? xmanagers;

  /// Creates a new [AiModelDevelopmentClusterRuntime].
  /// [trainingServices] (Output)
  /// [xmanagers] (Output)
  const AiModelDevelopmentClusterRuntime({
    this.trainingServices,
    this.xmanagers,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'trainingServices': ?pulumi.Input.mapOptionalInputValue<List<AiModelDevelopmentClusterRuntimeTrainingService>, List<Map<String, dynamic>>>(trainingServices, (value) => pulumi.Input.encodeList<AiModelDevelopmentClusterRuntimeTrainingService, Map<String, dynamic>>(value, (value) => value.toMap())),
      'xmanagers': ?pulumi.Input.mapOptionalInputValue<List<AiModelDevelopmentClusterRuntimeXmanager>, List<Map<String, dynamic>>>(xmanagers, (value) => pulumi.Input.encodeList<AiModelDevelopmentClusterRuntimeXmanager, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory AiModelDevelopmentClusterRuntime.fromMap(Map<String, dynamic> map) {
    return AiModelDevelopmentClusterRuntime(
      trainingServices: (() { final guardedValue = map['trainingServices']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AiModelDevelopmentClusterRuntimeTrainingService>(guardedValue, (value) => AiModelDevelopmentClusterRuntimeTrainingService.fromMap((value as Map).cast<String, dynamic>()))); })(),
      xmanagers: (() { final guardedValue = map['xmanagers']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AiModelDevelopmentClusterRuntimeXmanager>(guardedValue, (value) => AiModelDevelopmentClusterRuntimeXmanager.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
