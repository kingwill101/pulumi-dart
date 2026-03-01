// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_security_get_pricing_args_doc}
/// Arguments for getPricing.
/// {@endtemplate}
/// {@macro pulumi_security_get_pricing_args_doc}
class GetPricingArgs {
  /// name of the pricing configuration
  final pulumi.Input<String> pricingName;
  /// The scope id of the pricing. Valid scopes are: subscription (format: 'subscriptions/{subscriptionId}'), or a specific resource (format: 'subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}) - Supported resources are (VirtualMachines)
  final pulumi.Input<String> scopeId;

  /// Creates a new [GetPricingArgs].
  /// [pricingName] name of the pricing configuration
  /// [scopeId] The scope id of the pricing. Valid scopes are: subscription (format: 'subscriptions/{subscriptionId}'), or a specific resource (format: 'subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}) - Supported resources are (VirtualMachines)
  GetPricingArgs({
    required pulumi.Output<String> pricingName,
    required pulumi.Output<String> scopeId,
  }) :
      pricingName = pulumi.Input.asInput<String>(pricingName),
      scopeId = pulumi.Input.asInput<String>(scopeId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'pricingName': pricingName,
      'scopeId': scopeId,
    };
  }

  factory GetPricingArgs.fromMap(Map<String, dynamic> map) {
    return GetPricingArgs(
      pricingName: pulumi.Output.create<String>(map['pricingName'] as String),
      scopeId: pulumi.Output.create<String>(map['scopeId'] as String),
    );
  }
}

