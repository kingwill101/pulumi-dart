// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'deploy_policy_selector_delivery_pipeline.dart';
import 'deploy_policy_selector_target.dart';

class DeployPolicySelector {
  /// Contains attributes about a delivery pipeline.
  /// Structure is documented below.
  final pulumi.Input<DeployPolicySelectorDeliveryPipeline>? deliveryPipeline;
  /// Contains attributes about a target.
  /// Structure is documented below.
  final pulumi.Input<DeployPolicySelectorTarget>? target;

  /// Creates a new [DeployPolicySelector].
  /// [deliveryPipeline] Contains attributes about a delivery pipeline.
  /// [target] Contains attributes about a target.
  DeployPolicySelector({
    this.deliveryPipeline,
    this.target,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deliveryPipeline': ?pulumi.Input.mapOptionalInputValue<DeployPolicySelectorDeliveryPipeline, Map<String, dynamic>>(deliveryPipeline, (value) => value.toMap()),
      'target': ?pulumi.Input.mapOptionalInputValue<DeployPolicySelectorTarget, Map<String, dynamic>>(target, (value) => value.toMap()),
    };
  }

  factory DeployPolicySelector.fromMap(Map<String, dynamic> map) {
    return DeployPolicySelector(
      deliveryPipeline: map['deliveryPipeline'] == null ? null : (DeployPolicySelectorDeliveryPipeline.fromMap((map['deliveryPipeline']! as Map).cast<String, dynamic>())).input(),
      target: map['target'] == null ? null : (DeployPolicySelectorTarget.fromMap((map['target']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

