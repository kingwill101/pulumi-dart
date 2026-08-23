// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_security_get_pricing_args_doc}
/// Arguments for getPricing.
/// {@endtemplate}
/// {@macro pulumi_security_get_pricing_args_doc}
class GetPricingArgs {
  /// name of the pricing configuration
  final pulumi.Input<String> pricingName;
  /// The fully qualified Azure Resource manager identifier of the resource.
  final pulumi.Input<String> scopeId;

  /// Creates a new [GetPricingArgs].
  /// [pricingName] name of the pricing configuration
  /// [scopeId] The fully qualified Azure Resource manager identifier of the resource.
  const GetPricingArgs({
    required this.pricingName,
    required this.scopeId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'pricingName': pricingName,
      'scopeId': scopeId,
    };
  }

  factory GetPricingArgs.fromMap(Map<String, dynamic> map) {
    return GetPricingArgs(
      pricingName: pulumi.Input.fromValue(map['pricingName'] as String),
      scopeId: pulumi.Input.fromValue(map['scopeId'] as String),
    );
  }
}
