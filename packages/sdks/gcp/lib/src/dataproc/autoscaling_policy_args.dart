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
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String>? deletionPolicy;
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
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [location] The  location where the autoscaling policy should reside.
  /// [policyId] The policy id. The id must contain only letters (a-z, A-Z), numbers (0-9), underscores (_),
  /// [project] The ID of the project in which the resource belongs.
  /// [secondaryWorkerConfig] Describes how the autoscaler will operate for secondary workers.
  /// [workerConfig] Describes how the autoscaler will operate for primary workers.
  const AutoscalingPolicyArgs({
    this.basicAlgorithm,
    this.deletionPolicy,
    this.location,
    required this.policyId,
    this.project,
    this.secondaryWorkerConfig,
    this.workerConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'basicAlgorithm': ?pulumi.Input.mapOptionalInputValue<AutoscalingPolicyBasicAlgorithm, Map<String, dynamic>>(basicAlgorithm, (value) => value.toMap()),
      'deletionPolicy': ?deletionPolicy,
      'location': ?location,
      'policyId': policyId,
      'project': ?project,
      'secondaryWorkerConfig': ?pulumi.Input.mapOptionalInputValue<AutoscalingPolicySecondaryWorkerConfig, Map<String, dynamic>>(secondaryWorkerConfig, (value) => value.toMap()),
      'workerConfig': ?pulumi.Input.mapOptionalInputValue<AutoscalingPolicyWorkerConfig, Map<String, dynamic>>(workerConfig, (value) => value.toMap()),
    };
  }

  factory AutoscalingPolicyArgs.fromMap(Map<String, dynamic> map) {
    return AutoscalingPolicyArgs(
      basicAlgorithm: (() { final guardedValue = map['basicAlgorithm']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AutoscalingPolicyBasicAlgorithm.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      policyId: pulumi.Input.fromValue(map['policyId'] as String),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      secondaryWorkerConfig: (() { final guardedValue = map['secondaryWorkerConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AutoscalingPolicySecondaryWorkerConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      workerConfig: (() { final guardedValue = map['workerConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AutoscalingPolicyWorkerConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
