// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'basic_autoscaling_algorithm_dataproc_v1beta2.dart';
import 'instance_group_autoscaling_policy_config_dataproc_v1beta2.dart';

/// {@template pulumi_dataproc_v1beta2_autoscaling_policy_dataproc_v1beta2_args_doc}
/// The set of arguments for AutoscalingPolicy.
/// {@endtemplate}
/// {@macro pulumi_dataproc_v1beta2_autoscaling_policy_dataproc_v1beta2_args_doc}
class AutoscalingPolicyDataprocV1beta2Args {
  final pulumi.Input<BasicAutoscalingAlgorithmDataprocV1beta2>? basicAlgorithm;
  /// The policy id.The id must contain only letters (a-z, A-Z), numbers (0-9), underscores (_), and hyphens (-). Cannot begin or end with underscore or hyphen. Must consist of between 3 and 50 characters.
  final pulumi.Input<String> id;
  final pulumi.Input<String>? location;
  final pulumi.Input<String>? project;
  /// Optional. Describes how the autoscaler will operate for secondary workers.
  final pulumi.Input<InstanceGroupAutoscalingPolicyConfigDataprocV1beta2>? secondaryWorkerConfig;
  /// Describes how the autoscaler will operate for primary workers.
  final pulumi.Input<InstanceGroupAutoscalingPolicyConfigDataprocV1beta2> workerConfig;

  /// Creates a new [AutoscalingPolicyDataprocV1beta2Args].
  /// [basicAlgorithm] Optional.
  /// [id] The policy id.The id must contain only letters (a-z, A-Z), numbers (0-9), underscores (_), and hyphens (-). Cannot begin or end with underscore or hyphen. Must consist of between 3 and 50 characters.
  /// [location] Optional.
  /// [project] Optional.
  /// [secondaryWorkerConfig] Optional. Describes how the autoscaler will operate for secondary workers.
  /// [workerConfig] Describes how the autoscaler will operate for primary workers.
  AutoscalingPolicyDataprocV1beta2Args({
    pulumi.Output<BasicAutoscalingAlgorithmDataprocV1beta2>? basicAlgorithm,
    required pulumi.Output<String> id,
    pulumi.Output<String>? location,
    pulumi.Output<String>? project,
    pulumi.Output<InstanceGroupAutoscalingPolicyConfigDataprocV1beta2>? secondaryWorkerConfig,
    required pulumi.Output<InstanceGroupAutoscalingPolicyConfigDataprocV1beta2> workerConfig,
  }) :
      basicAlgorithm = pulumi.Input.asOptionalInput<BasicAutoscalingAlgorithmDataprocV1beta2>(basicAlgorithm),
      id = pulumi.Input.asInput<String>(id),
      location = pulumi.Input.asOptionalInput<String>(location),
      project = pulumi.Input.asOptionalInput<String>(project),
      secondaryWorkerConfig = pulumi.Input.asOptionalInput<InstanceGroupAutoscalingPolicyConfigDataprocV1beta2>(secondaryWorkerConfig),
      workerConfig = pulumi.Input.asInput<InstanceGroupAutoscalingPolicyConfigDataprocV1beta2>(workerConfig);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'basicAlgorithm': ?pulumi.Input.mapOptionalInputValue<BasicAutoscalingAlgorithmDataprocV1beta2, Map<String, dynamic>>(basicAlgorithm, (value) => value.toMap()),
      'id': id,
      'location': ?location,
      'project': ?project,
      'secondaryWorkerConfig': ?pulumi.Input.mapOptionalInputValue<InstanceGroupAutoscalingPolicyConfigDataprocV1beta2, Map<String, dynamic>>(secondaryWorkerConfig, (value) => value.toMap()),
      'workerConfig': pulumi.Input.mapInputValue<InstanceGroupAutoscalingPolicyConfigDataprocV1beta2, Map<String, dynamic>>(workerConfig, (value) => value.toMap()),
    };
  }

  factory AutoscalingPolicyDataprocV1beta2Args.fromMap(Map<String, dynamic> map) {
    return AutoscalingPolicyDataprocV1beta2Args(
      basicAlgorithm: map['basicAlgorithm'] == null ? null : pulumi.Output.create<BasicAutoscalingAlgorithmDataprocV1beta2>(BasicAutoscalingAlgorithmDataprocV1beta2.fromMap((map['basicAlgorithm'] as Map).cast<String, dynamic>())),
      id: pulumi.Output.create<String>(map['id'] as String),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      secondaryWorkerConfig: map['secondaryWorkerConfig'] == null ? null : pulumi.Output.create<InstanceGroupAutoscalingPolicyConfigDataprocV1beta2>(InstanceGroupAutoscalingPolicyConfigDataprocV1beta2.fromMap((map['secondaryWorkerConfig'] as Map).cast<String, dynamic>())),
      workerConfig: pulumi.Output.create<InstanceGroupAutoscalingPolicyConfigDataprocV1beta2>(InstanceGroupAutoscalingPolicyConfigDataprocV1beta2.fromMap((map['workerConfig'] as Map).cast<String, dynamic>())),
    );
  }
}

