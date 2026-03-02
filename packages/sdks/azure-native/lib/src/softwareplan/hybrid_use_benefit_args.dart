// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'sku.dart';

/// {@template pulumi_softwareplan_hybrid_use_benefit_args_doc}
/// The set of arguments for HybridUseBenefit.
/// {@endtemplate}
/// {@macro pulumi_softwareplan_hybrid_use_benefit_args_doc}
class HybridUseBenefitArgs {
  /// This is a unique identifier for a plan. Should be a guid.
  final pulumi.Input<String>? planId;
  /// The scope at which the operation is performed. This is limited to Microsoft.Compute/virtualMachines and Microsoft.Compute/hostGroups/hosts for now
  final pulumi.Input<String> scope;
  /// Hybrid use benefit SKU
  final pulumi.Input<Sku> sku;

  /// Creates a new [HybridUseBenefitArgs].
  /// [planId] This is a unique identifier for a plan. Should be a guid.
  /// [scope] The scope at which the operation is performed. This is limited to Microsoft.Compute/virtualMachines and Microsoft.Compute/hostGroups/hosts for now
  /// [sku] Hybrid use benefit SKU
  HybridUseBenefitArgs({
    this.planId,
    required this.scope,
    required this.sku,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'planId': ?planId,
      'scope': scope,
      'sku': pulumi.Input.mapInputValue<Sku, Map<String, dynamic>>(sku, (value) => value.toMap()),
    };
  }

  factory HybridUseBenefitArgs.fromMap(Map<String, dynamic> map) {
    return HybridUseBenefitArgs(
      planId: map['planId'] == null ? null : (map['planId']! as String).input(),
      scope: (map['scope'] as String).input(),
      sku: (Sku.fromMap((map['sku'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

