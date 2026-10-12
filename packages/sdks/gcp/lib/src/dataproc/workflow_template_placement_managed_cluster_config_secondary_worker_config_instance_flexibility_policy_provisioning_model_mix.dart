// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class WorkflowTemplatePlacementManagedClusterConfigSecondaryWorkerConfigInstanceFlexibilityPolicyProvisioningModelMix {
  /// The base capacity that will always use Standard VMs to avoid risk of premature allocation.
  final pulumi.Input<int?>? standardCapacityBase;
  /// The percentage of target capacity that will use Standard VMs above standardCapacityBase.
  final pulumi.Input<int?>? standardCapacityPercentAboveBase;

  /// Creates a new [WorkflowTemplatePlacementManagedClusterConfigSecondaryWorkerConfigInstanceFlexibilityPolicyProvisioningModelMix].
  /// [standardCapacityBase] The base capacity that will always use Standard VMs to avoid risk of premature allocation.
  /// [standardCapacityPercentAboveBase] The percentage of target capacity that will use Standard VMs above standardCapacityBase.
  const WorkflowTemplatePlacementManagedClusterConfigSecondaryWorkerConfigInstanceFlexibilityPolicyProvisioningModelMix({
    this.standardCapacityBase,
    this.standardCapacityPercentAboveBase,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'standardCapacityBase': ?standardCapacityBase,
      'standardCapacityPercentAboveBase': ?standardCapacityPercentAboveBase,
    };
  }

  factory WorkflowTemplatePlacementManagedClusterConfigSecondaryWorkerConfigInstanceFlexibilityPolicyProvisioningModelMix.fromMap(Map<String, dynamic> map) {
    return WorkflowTemplatePlacementManagedClusterConfigSecondaryWorkerConfigInstanceFlexibilityPolicyProvisioningModelMix(
      standardCapacityBase: (() { final guardedValue = map['standardCapacityBase']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      standardCapacityPercentAboveBase: (() { final guardedValue = map['standardCapacityPercentAboveBase']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
    );
  }
}
