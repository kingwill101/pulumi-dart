// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'extension.dart';

/// {@template pulumi_security_pricing_args_doc}
/// The set of arguments for Pricing.
/// {@endtemplate}
/// {@macro pulumi_security_pricing_args_doc}
class PricingArgs {
  /// If set to "False", it allows the descendants of this scope to override the pricing configuration set on this scope (allows setting inherited="False"). If set to "True", it prevents overrides and forces this pricing configuration on all the descendants of this scope. This field is only available for subscription-level pricing.
  final pulumi.Input<String>? enforce;

  /// Optional. List of extensions offered under a plan.
  final pulumi.Input<List<Extension>>? extensions;

  /// name of the pricing configuration
  final pulumi.Input<String>? pricingName;

  /// Indicates whether the Defender plan is enabled on the selected scope. Microsoft Defender for Cloud is provided in two pricing tiers: free and standard. The standard tier offers advanced security capabilities, while the free tier offers basic security features.
  final pulumi.Input<String> pricingTier;

  /// The scope id of the pricing. Valid scopes are: subscription (format: 'subscriptions/{subscriptionId}'), or a specific resource (format: 'subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}) - Supported resources are (VirtualMachines)
  final pulumi.Input<String> scopeId;

  /// The sub-plan selected for a Standard pricing configuration, when more than one sub-plan is available. Each sub-plan enables a set of security features. When not specified, full plan is applied. For VirtualMachines plan, available sub plans are 'P1' & 'P2', where for resource level only 'P1' sub plan is supported.
  final pulumi.Input<String>? subPlan;

  /// Creates a new [PricingArgs].
  /// [enforce] If set to "False", it allows the descendants of this scope to override the pricing configuration set on this scope (allows setting inherited="False"). If set to "True", it prevents overrides and forces this pricing configuration on all the descendants of this scope. This field is only available for subscription-level pricing.
  /// [extensions] Optional. List of extensions offered under a plan.
  /// [pricingName] name of the pricing configuration
  /// [pricingTier] Indicates whether the Defender plan is enabled on the selected scope. Microsoft Defender for Cloud is provided in two pricing tiers: free and standard. The standard tier offers advanced security capabilities, while the free tier offers basic security features.
  /// [scopeId] The scope id of the pricing. Valid scopes are: subscription (format: 'subscriptions/{subscriptionId}'), or a specific resource (format: 'subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}) - Supported resources are (VirtualMachines)
  /// [subPlan] The sub-plan selected for a Standard pricing configuration, when more than one sub-plan is available. Each sub-plan enables a set of security features. When not specified, full plan is applied. For VirtualMachines plan, available sub plans are 'P1' & 'P2', where for resource level only 'P1' sub plan is supported.
  PricingArgs({
    this.enforce,
    this.extensions,
    this.pricingName,
    required this.pricingTier,
    required this.scopeId,
    this.subPlan,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enforce': ?enforce,
      'extensions':
          ?pulumi.Input.mapOptionalInputValue<
            List<Extension>,
            List<Map<String, dynamic>>
          >(
            extensions,
            (value) => pulumi.Input.encodeList<Extension, Map<String, dynamic>>(
              value,
              (value) => value.toMap(),
            ),
          ),
      'pricingName': ?pricingName,
      'pricingTier': pricingTier,
      'scopeId': scopeId,
      'subPlan': ?subPlan,
    };
  }

  factory PricingArgs.fromMap(Map<String, dynamic> map) {
    return PricingArgs(
      enforce: (() {
        final guardedValue = map['enforce'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      extensions: (() {
        final guardedValue = map['extensions'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<Extension>(
            guardedValue,
            (value) =>
                Extension.fromMap((value as Map).cast<String, dynamic>()),
          ),
        );
      })(),
      pricingName: (() {
        final guardedValue = map['pricingName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      pricingTier: pulumi.Input.fromValue(map['pricingTier'] as String),
      scopeId: pulumi.Input.fromValue(map['scopeId'] as String),
      subPlan: (() {
        final guardedValue = map['subPlan'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
