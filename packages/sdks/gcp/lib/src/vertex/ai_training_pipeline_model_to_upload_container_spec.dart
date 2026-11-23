// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ai_training_pipeline_model_to_upload_container_spec_env.dart';
import 'ai_training_pipeline_model_to_upload_container_spec_grpc_port.dart';
import 'ai_training_pipeline_model_to_upload_container_spec_health_probe.dart';
import 'ai_training_pipeline_model_to_upload_container_spec_port.dart';
import 'ai_training_pipeline_model_to_upload_container_spec_startup_probe.dart';

class AiTrainingPipelineModelToUploadContainerSpec {
  /// Specifies the arguments to the command when the container starts.
  final pulumi.Input<List<String>?>? args;
  /// Specifies the command that runs when the container starts.
  final pulumi.Input<List<String>?>? commands;
  /// Deployment timeout. Limit for deployment timeout is 2 hours.
  final pulumi.Input<String?>? deploymentTimeout;
  /// List of environment variables to be set in the container.
  /// Structure is documented below.
  final pulumi.Input<List<AiTrainingPipelineModelToUploadContainerSpecEnv>?>? envs;
  /// List of ports to expose from the container for gRPC.
  /// Structure is documented below.
  final pulumi.Input<List<AiTrainingPipelineModelToUploadContainerSpecGrpcPort>?>? grpcPorts;
  /// Specification for Kubernetes readiness probe.
  /// Structure is documented below.
  final pulumi.Input<AiTrainingPipelineModelToUploadContainerSpecHealthProbe?>? healthProbe;
  /// HTTP path on the container to send health checks to.
  final pulumi.Input<String?>? healthRoute;
  /// URI of the Docker image to be used as the custom container for serving predictions.
  final pulumi.Input<String> imageUri;
  /// List of ports that are exposed by the container's process.
  /// Structure is documented below.
  final pulumi.Input<List<AiTrainingPipelineModelToUploadContainerSpecPort>?>? ports;
  /// HTTP path on the container to send prediction requests to.
  final pulumi.Input<String?>? predictRoute;
  /// The amount of the VM memory to reserve as the shared memory for the model in megabytes.
  final pulumi.Input<String?>? sharedMemorySizeMb;
  /// Specification for Kubernetes startup probe.
  /// Structure is documented below.
  final pulumi.Input<AiTrainingPipelineModelToUploadContainerSpecStartupProbe?>? startupProbe;

  /// Creates a new [AiTrainingPipelineModelToUploadContainerSpec].
  /// [args] Specifies the arguments to the command when the container starts.
  /// [commands] Specifies the command that runs when the container starts.
  /// [deploymentTimeout] Deployment timeout. Limit for deployment timeout is 2 hours.
  /// [envs] List of environment variables to be set in the container.
  /// [grpcPorts] List of ports to expose from the container for gRPC.
  /// [healthProbe] Specification for Kubernetes readiness probe.
  /// [healthRoute] HTTP path on the container to send health checks to.
  /// [imageUri] URI of the Docker image to be used as the custom container for serving predictions.
  /// [ports] List of ports that are exposed by the container's process.
  /// [predictRoute] HTTP path on the container to send prediction requests to.
  /// [sharedMemorySizeMb] The amount of the VM memory to reserve as the shared memory for the model in megabytes.
  /// [startupProbe] Specification for Kubernetes startup probe.
  const AiTrainingPipelineModelToUploadContainerSpec({
    this.args,
    this.commands,
    this.deploymentTimeout,
    this.envs,
    this.grpcPorts,
    this.healthProbe,
    this.healthRoute,
    required this.imageUri,
    this.ports,
    this.predictRoute,
    this.sharedMemorySizeMb,
    this.startupProbe,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'args': ?args,
      'commands': ?commands,
      'deploymentTimeout': ?deploymentTimeout,
      'envs': ?pulumi.Input.mapOptionalInputValue<List<AiTrainingPipelineModelToUploadContainerSpecEnv>, List<Map<String, dynamic>>>(envs, (value) => pulumi.Input.encodeList<AiTrainingPipelineModelToUploadContainerSpecEnv, Map<String, dynamic>>(value, (value) => value.toMap())),
      'grpcPorts': ?pulumi.Input.mapOptionalInputValue<List<AiTrainingPipelineModelToUploadContainerSpecGrpcPort>, List<Map<String, dynamic>>>(grpcPorts, (value) => pulumi.Input.encodeList<AiTrainingPipelineModelToUploadContainerSpecGrpcPort, Map<String, dynamic>>(value, (value) => value.toMap())),
      'healthProbe': ?pulumi.Input.mapOptionalInputValue<AiTrainingPipelineModelToUploadContainerSpecHealthProbe, Map<String, dynamic>>(healthProbe, (value) => value.toMap()),
      'healthRoute': ?healthRoute,
      'imageUri': imageUri,
      'ports': ?pulumi.Input.mapOptionalInputValue<List<AiTrainingPipelineModelToUploadContainerSpecPort>, List<Map<String, dynamic>>>(ports, (value) => pulumi.Input.encodeList<AiTrainingPipelineModelToUploadContainerSpecPort, Map<String, dynamic>>(value, (value) => value.toMap())),
      'predictRoute': ?predictRoute,
      'sharedMemorySizeMb': ?sharedMemorySizeMb,
      'startupProbe': ?pulumi.Input.mapOptionalInputValue<AiTrainingPipelineModelToUploadContainerSpecStartupProbe, Map<String, dynamic>>(startupProbe, (value) => value.toMap()),
    };
  }

  factory AiTrainingPipelineModelToUploadContainerSpec.fromMap(Map<String, dynamic> map) {
    return AiTrainingPipelineModelToUploadContainerSpec(
      args: (() { final guardedValue = map['args']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      commands: (() { final guardedValue = map['commands']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      deploymentTimeout: (() { final guardedValue = map['deploymentTimeout']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      envs: (() { final guardedValue = map['envs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AiTrainingPipelineModelToUploadContainerSpecEnv>(guardedValue, (value) => AiTrainingPipelineModelToUploadContainerSpecEnv.fromMap((value as Map).cast<String, dynamic>()))); })(),
      grpcPorts: (() { final guardedValue = map['grpcPorts']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AiTrainingPipelineModelToUploadContainerSpecGrpcPort>(guardedValue, (value) => AiTrainingPipelineModelToUploadContainerSpecGrpcPort.fromMap((value as Map).cast<String, dynamic>()))); })(),
      healthProbe: (() { final guardedValue = map['healthProbe']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AiTrainingPipelineModelToUploadContainerSpecHealthProbe.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      healthRoute: (() { final guardedValue = map['healthRoute']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      imageUri: pulumi.Input.fromValue(map['imageUri'] as String),
      ports: (() { final guardedValue = map['ports']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AiTrainingPipelineModelToUploadContainerSpecPort>(guardedValue, (value) => AiTrainingPipelineModelToUploadContainerSpecPort.fromMap((value as Map).cast<String, dynamic>()))); })(),
      predictRoute: (() { final guardedValue = map['predictRoute']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sharedMemorySizeMb: (() { final guardedValue = map['sharedMemorySizeMb']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      startupProbe: (() { final guardedValue = map['startupProbe']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AiTrainingPipelineModelToUploadContainerSpecStartupProbe.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
