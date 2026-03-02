// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'basic_autoscaling_algorithm.dart';
import 'instance_group_autoscaling_policy_config.dart';

/// {@template pulumi_dataproc_v1_autoscaling_policy_args_doc}
/// The set of arguments for AutoscalingPolicy.
/// {@endtemplate}
/// {@macro pulumi_dataproc_v1_autoscaling_policy_args_doc}
class AutoscalingPolicyArgs {
  final pulumi.Input<BasicAutoscalingAlgorithm>? basicAlgorithm;
  /// The policy id.The id must contain only letters (a-z, A-Z), numbers (0-9), underscores (_), and hyphens (-). Cannot begin or end with underscore or hyphen. Must consist of between 3 and 50 characters.
  final pulumi.Input<String> id;
  /// Optional. The labels to associate with this autoscaling policy. Label keys must contain 1 to 63 characters, and must conform to RFC 1035 (https://www.ietf.org/rfc/rfc1035.txt). Label values may be empty, but, if present, must contain 1 to 63 characters, and must conform to RFC 1035 (https://www.ietf.org/rfc/rfc1035.txt). No more than 32 labels can be associated with an autoscaling policy.
  final pulumi.Input<Map<String, String>>? labels;
  final pulumi.Input<String>? location;
  final pulumi.Input<String>? project;
  /// Optional. Describes how the autoscaler will operate for secondary workers.
  final pulumi.Input<InstanceGroupAutoscalingPolicyConfig>? secondaryWorkerConfig;
  /// Describes how the autoscaler will operate for primary workers.
  final pulumi.Input<InstanceGroupAutoscalingPolicyConfig> workerConfig;

  /// Creates a new [AutoscalingPolicyArgs].
  /// [basicAlgorithm] Optional.
  /// [id] The policy id.The id must contain only letters (a-z, A-Z), numbers (0-9), underscores (_), and hyphens (-). Cannot begin or end with underscore or hyphen. Must consist of between 3 and 50 characters.
  /// [labels] Optional. The labels to associate with this autoscaling policy. Label keys must contain 1 to 63 characters, and must conform to RFC 1035 (https://www.ietf.org/rfc/rfc1035.txt). Label values may be empty, but, if present, must contain 1 to 63 characters, and must conform to RFC 1035 (https://www.ietf.org/rfc/rfc1035.txt). No more than 32 labels can be associated with an autoscaling policy.
  /// [location] Optional.
  /// [project] Optional.
  /// [secondaryWorkerConfig] Optional. Describes how the autoscaler will operate for secondary workers.
  /// [workerConfig] Describes how the autoscaler will operate for primary workers.
  AutoscalingPolicyArgs({
    this.basicAlgorithm,
    required this.id,
    this.labels,
    this.location,
    this.project,
    this.secondaryWorkerConfig,
    required this.workerConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'basicAlgorithm': ?pulumi.Input.mapOptionalInputValue<BasicAutoscalingAlgorithm, Map<String, dynamic>>(basicAlgorithm, (value) => value.toMap()),
      'id': id,
      'labels': ?labels,
      'location': ?location,
      'project': ?project,
      'secondaryWorkerConfig': ?pulumi.Input.mapOptionalInputValue<InstanceGroupAutoscalingPolicyConfig, Map<String, dynamic>>(secondaryWorkerConfig, (value) => value.toMap()),
      'workerConfig': pulumi.Input.mapInputValue<InstanceGroupAutoscalingPolicyConfig, Map<String, dynamic>>(workerConfig, (value) => value.toMap()),
    };
  }

  factory AutoscalingPolicyArgs.fromMap(Map<String, dynamic> map) {
    return AutoscalingPolicyArgs(
      basicAlgorithm: map['basicAlgorithm'] == null ? null : (BasicAutoscalingAlgorithm.fromMap((map['basicAlgorithm']! as Map).cast<String, dynamic>())).input(),
      id: (map['id'] as String).input(),
      labels: map['labels'] == null ? null : ((map['labels']! as Map).cast<String, String>()).input(),
      location: map['location'] == null ? null : (map['location']! as String).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
      secondaryWorkerConfig: map['secondaryWorkerConfig'] == null ? null : (InstanceGroupAutoscalingPolicyConfig.fromMap((map['secondaryWorkerConfig']! as Map).cast<String, dynamic>())).input(),
      workerConfig: (InstanceGroupAutoscalingPolicyConfig.fromMap((map['workerConfig'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

