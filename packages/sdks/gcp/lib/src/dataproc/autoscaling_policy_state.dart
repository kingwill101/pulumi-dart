// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'autoscaling_policy_basic_algorithm.dart';
import 'autoscaling_policy_secondary_worker_config.dart';
import 'autoscaling_policy_worker_config.dart';

/// Input properties used for looking up and filtering AutoscalingPolicy resources.
class AutoscalingPolicyState {
  /// Basic algorithm for autoscaling.
  /// Structure is documented below.
  final pulumi.Input<AutoscalingPolicyBasicAlgorithm>? basicAlgorithm;
  /// The  location where the autoscaling policy should reside.
  /// The default value is `global`.
  final pulumi.Input<String>? location;
  /// The "resource name" of the autoscaling policy.
  final pulumi.Input<String>? name;
  /// The policy id. The id must contain only letters (a-z, A-Z), numbers (0-9), underscores (_),
  /// and hyphens (-). Cannot begin or end with underscore or hyphen. Must consist of between
  /// 3 and 50 characters.
  final pulumi.Input<String>? policyId;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// Describes how the autoscaler will operate for secondary workers.
  /// Structure is documented below.
  final pulumi.Input<AutoscalingPolicySecondaryWorkerConfig>? secondaryWorkerConfig;
  /// Describes how the autoscaler will operate for primary workers.
  /// Structure is documented below.
  final pulumi.Input<AutoscalingPolicyWorkerConfig>? workerConfig;

  /// Creates a new [AutoscalingPolicyState].
  /// [basicAlgorithm] Basic algorithm for autoscaling.
  /// [location] The  location where the autoscaling policy should reside.
  /// [name] The "resource name" of the autoscaling policy.
  /// [policyId] The policy id. The id must contain only letters (a-z, A-Z), numbers (0-9), underscores (_),
  /// [project] The ID of the project in which the resource belongs.
  /// [secondaryWorkerConfig] Describes how the autoscaler will operate for secondary workers.
  /// [workerConfig] Describes how the autoscaler will operate for primary workers.
  AutoscalingPolicyState({
    this.basicAlgorithm,
    this.location,
    this.name,
    this.policyId,
    this.project,
    this.secondaryWorkerConfig,
    this.workerConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'basicAlgorithm': ?pulumi.Input.mapOptionalInputValue<AutoscalingPolicyBasicAlgorithm, Map<String, dynamic>>(basicAlgorithm, (value) => value.toMap()),
      'location': ?location,
      'name': ?name,
      'policyId': ?policyId,
      'project': ?project,
      'secondaryWorkerConfig': ?pulumi.Input.mapOptionalInputValue<AutoscalingPolicySecondaryWorkerConfig, Map<String, dynamic>>(secondaryWorkerConfig, (value) => value.toMap()),
      'workerConfig': ?pulumi.Input.mapOptionalInputValue<AutoscalingPolicyWorkerConfig, Map<String, dynamic>>(workerConfig, (value) => value.toMap()),
    };
  }

  factory AutoscalingPolicyState.fromMap(Map<String, dynamic> map) {
    return AutoscalingPolicyState(
      basicAlgorithm: map['basicAlgorithm'] == null ? null : (AutoscalingPolicyBasicAlgorithm.fromMap((map['basicAlgorithm']! as Map).cast<String, dynamic>())).input(),
      location: map['location'] == null ? null : (map['location']! as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      policyId: map['policyId'] == null ? null : (map['policyId']! as String).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
      secondaryWorkerConfig: map['secondaryWorkerConfig'] == null ? null : (AutoscalingPolicySecondaryWorkerConfig.fromMap((map['secondaryWorkerConfig']! as Map).cast<String, dynamic>())).input(),
      workerConfig: map['workerConfig'] == null ? null : (AutoscalingPolicyWorkerConfig.fromMap((map['workerConfig']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

