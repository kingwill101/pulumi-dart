// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'autoscaling_policy_basic_algorithm.dart';
import 'autoscaling_policy_secondary_worker_config.dart';
import 'autoscaling_policy_worker_config.dart';

/// {@template pulumi_dataproc_autoscaling_policy_autoscaling_policy_args_doc}
/// The set of arguments for AutoscalingPolicy.
/// {@endtemplate}
/// {@macro pulumi_dataproc_autoscaling_policy_autoscaling_policy_args_doc}
class AutoscalingPolicyArgs {
  /// Basic algorithm for autoscaling.
  /// Structure is documented below.
  final pulumi.Input<AutoscalingPolicyBasicAlgorithm>? basicAlgorithm;
  /// The  location where the autoscaling policy should reside.
  /// The default value is `global`.
  final pulumi.Input<String>? location;
  /// The policy id. The id must contain only letters (a-z, A-Z), numbers (0-9), underscores (_),
  /// and hyphens (-). Cannot begin or end with underscore or hyphen. Must consist of between
  /// 3 and 50 characters.
  final pulumi.Input<String> policyId;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// Describes how the autoscaler will operate for secondary workers.
  /// Structure is documented below.
  final pulumi.Input<AutoscalingPolicySecondaryWorkerConfig>? secondaryWorkerConfig;
  /// Describes how the autoscaler will operate for primary workers.
  /// Structure is documented below.
  final pulumi.Input<AutoscalingPolicyWorkerConfig>? workerConfig;

  /// Creates a new [AutoscalingPolicyArgs].
  /// [basicAlgorithm] Basic algorithm for autoscaling.
  /// [location] The  location where the autoscaling policy should reside.
  /// [policyId] The policy id. The id must contain only letters (a-z, A-Z), numbers (0-9), underscores (_),
  /// [project] The ID of the project in which the resource belongs.
  /// [secondaryWorkerConfig] Describes how the autoscaler will operate for secondary workers.
  /// [workerConfig] Describes how the autoscaler will operate for primary workers.
  AutoscalingPolicyArgs({
    pulumi.Output<AutoscalingPolicyBasicAlgorithm>? basicAlgorithm,
    pulumi.Output<String>? location,
    required pulumi.Output<String> policyId,
    pulumi.Output<String>? project,
    pulumi.Output<AutoscalingPolicySecondaryWorkerConfig>? secondaryWorkerConfig,
    pulumi.Output<AutoscalingPolicyWorkerConfig>? workerConfig,
  }) :
      basicAlgorithm = pulumi.Input.asOptionalInput<AutoscalingPolicyBasicAlgorithm>(basicAlgorithm),
      location = pulumi.Input.asOptionalInput<String>(location),
      policyId = pulumi.Input.asInput<String>(policyId),
      project = pulumi.Input.asOptionalInput<String>(project),
      secondaryWorkerConfig = pulumi.Input.asOptionalInput<AutoscalingPolicySecondaryWorkerConfig>(secondaryWorkerConfig),
      workerConfig = pulumi.Input.asOptionalInput<AutoscalingPolicyWorkerConfig>(workerConfig);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'basicAlgorithm': ?pulumi.Input.mapOptionalInputValue<AutoscalingPolicyBasicAlgorithm, Map<String, dynamic>>(basicAlgorithm, (value) => value.toMap()),
      'location': ?location,
      'policyId': policyId,
      'project': ?project,
      'secondaryWorkerConfig': ?pulumi.Input.mapOptionalInputValue<AutoscalingPolicySecondaryWorkerConfig, Map<String, dynamic>>(secondaryWorkerConfig, (value) => value.toMap()),
      'workerConfig': ?pulumi.Input.mapOptionalInputValue<AutoscalingPolicyWorkerConfig, Map<String, dynamic>>(workerConfig, (value) => value.toMap()),
    };
  }

  factory AutoscalingPolicyArgs.fromMap(Map<String, dynamic> map) {
    return AutoscalingPolicyArgs(
      basicAlgorithm: map['basicAlgorithm'] == null ? null : pulumi.Output.create<AutoscalingPolicyBasicAlgorithm>(AutoscalingPolicyBasicAlgorithm.fromMap((map['basicAlgorithm'] as Map).cast<String, dynamic>())),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      policyId: pulumi.Output.create<String>(map['policyId'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      secondaryWorkerConfig: map['secondaryWorkerConfig'] == null ? null : pulumi.Output.create<AutoscalingPolicySecondaryWorkerConfig>(AutoscalingPolicySecondaryWorkerConfig.fromMap((map['secondaryWorkerConfig'] as Map).cast<String, dynamic>())),
      workerConfig: map['workerConfig'] == null ? null : pulumi.Output.create<AutoscalingPolicyWorkerConfig>(AutoscalingPolicyWorkerConfig.fromMap((map['workerConfig'] as Map).cast<String, dynamic>())),
    );
  }
}

