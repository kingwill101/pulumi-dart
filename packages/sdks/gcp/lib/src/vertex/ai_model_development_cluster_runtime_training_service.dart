// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ai_model_development_cluster_runtime_training_service_deployment_spec.dart';
import 'ai_model_development_cluster_runtime_training_service_service_status.dart';

class AiModelDevelopmentClusterRuntimeTrainingService {
  /// (Output)
  /// Time when the TrainingService was created.
  final pulumi.Input<String?>? createTime;
  /// (Output)
  /// Orchestrator-agnostic deployment spec.
  /// Structure is documented below.
  final pulumi.Input<List<AiModelDevelopmentClusterRuntimeTrainingServiceDeploymentSpec>?>? deploymentSpecs;
  /// (Output)
  /// Cloud Storage bucket name dynamically GCSFuse-mounted on all nodes, for
  /// storing checkpoints and other service outputs.
  final pulumi.Input<String?>? gcsBucket;
  /// (Output)
  /// Cloud Storage URI of the squashfs (.sqsh) container image.
  final pulumi.Input<String?>? imageUri;
  /// (Output)
  /// Identifier. Resource name of the TrainingService. Format:
  /// `projects/{project}/locations/{location}/modelDevelopmentClusters/{cluster}/trainingServices/{training_service}`
  final pulumi.Input<String?>? name;
  /// (Output)
  /// Status of a TrainingService.
  /// Structure is documented below.
  final pulumi.Input<List<AiModelDevelopmentClusterRuntimeTrainingServiceServiceStatus>?>? serviceStatuses;
  /// (Output)
  /// Time when the TrainingService was most recently updated.
  final pulumi.Input<String?>? updateTime;

  /// Creates a new [AiModelDevelopmentClusterRuntimeTrainingService].
  /// [createTime] (Output)
  /// [deploymentSpecs] (Output)
  /// [gcsBucket] (Output)
  /// [imageUri] (Output)
  /// [name] (Output)
  /// [serviceStatuses] (Output)
  /// [updateTime] (Output)
  const AiModelDevelopmentClusterRuntimeTrainingService({
    this.createTime,
    this.deploymentSpecs,
    this.gcsBucket,
    this.imageUri,
    this.name,
    this.serviceStatuses,
    this.updateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': ?createTime,
      'deploymentSpecs': ?pulumi.Input.mapOptionalInputValue<List<AiModelDevelopmentClusterRuntimeTrainingServiceDeploymentSpec>, List<Map<String, dynamic>>>(deploymentSpecs, (value) => pulumi.Input.encodeList<AiModelDevelopmentClusterRuntimeTrainingServiceDeploymentSpec, Map<String, dynamic>>(value, (value) => value.toMap())),
      'gcsBucket': ?gcsBucket,
      'imageUri': ?imageUri,
      'name': ?name,
      'serviceStatuses': ?pulumi.Input.mapOptionalInputValue<List<AiModelDevelopmentClusterRuntimeTrainingServiceServiceStatus>, List<Map<String, dynamic>>>(serviceStatuses, (value) => pulumi.Input.encodeList<AiModelDevelopmentClusterRuntimeTrainingServiceServiceStatus, Map<String, dynamic>>(value, (value) => value.toMap())),
      'updateTime': ?updateTime,
    };
  }

  factory AiModelDevelopmentClusterRuntimeTrainingService.fromMap(Map<String, dynamic> map) {
    return AiModelDevelopmentClusterRuntimeTrainingService(
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      deploymentSpecs: (() { final guardedValue = map['deploymentSpecs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AiModelDevelopmentClusterRuntimeTrainingServiceDeploymentSpec>(guardedValue, (value) => AiModelDevelopmentClusterRuntimeTrainingServiceDeploymentSpec.fromMap((value as Map).cast<String, dynamic>()))); })(),
      gcsBucket: (() { final guardedValue = map['gcsBucket']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      imageUri: (() { final guardedValue = map['imageUri']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      serviceStatuses: (() { final guardedValue = map['serviceStatuses']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AiModelDevelopmentClusterRuntimeTrainingServiceServiceStatus>(guardedValue, (value) => AiModelDevelopmentClusterRuntimeTrainingServiceServiceStatus.fromMap((value as Map).cast<String, dynamic>()))); })(),
      updateTime: (() { final guardedValue = map['updateTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
