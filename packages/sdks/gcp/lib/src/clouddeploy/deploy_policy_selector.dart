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
  const DeployPolicySelector({
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
      deliveryPipeline: (() { final guardedValue = map['deliveryPipeline']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DeployPolicySelectorDeliveryPipeline.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      target: (() { final guardedValue = map['target']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DeployPolicySelectorTarget.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

