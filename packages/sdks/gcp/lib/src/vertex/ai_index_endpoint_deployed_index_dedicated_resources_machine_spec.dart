// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AiIndexEndpointDeployedIndexDedicatedResourcesMachineSpec {
  /// The type of the machine.
  /// See the [list of machine types supported for prediction](https://cloud.google.com/vertex-ai/docs/predictions/configure-compute#machine-types)
  /// See the [list of machine types supported for custom training](https://cloud.google.com/vertex-ai/docs/training/configure-compute#machine-types).
  /// For [DeployedModel](https://cloud.google.com/vertex-ai/docs/reference/rest/v1/projects.locations.endpoints#DeployedModel) this field is optional, and the default value is n1-standard-2. For [BatchPredictionJob](https://cloud.google.com/vertex-ai/docs/reference/rest/v1/projects.locations.batchPredictionJobs#BatchPredictionJob) or as part of [WorkerPoolSpec](https://cloud.google.com/vertex-ai/docs/reference/rest/v1/CustomJobSpec#WorkerPoolSpec) this field is required.
  final pulumi.Input<String>? machineType;

  /// Creates a new [AiIndexEndpointDeployedIndexDedicatedResourcesMachineSpec].
  /// [machineType] The type of the machine.
  const AiIndexEndpointDeployedIndexDedicatedResourcesMachineSpec({
    this.machineType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'machineType': ?machineType,
    };
  }

  factory AiIndexEndpointDeployedIndexDedicatedResourcesMachineSpec.fromMap(Map<String, dynamic> map) {
    return AiIndexEndpointDeployedIndexDedicatedResourcesMachineSpec(
      machineType: (() { final guardedValue = map['machineType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
