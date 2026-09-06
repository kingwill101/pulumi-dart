// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'extension_response.dart';
import 'system_data_response.dart';

/// Result data returned by getPricing.
class GetPricingResult {
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// Optional. True if the plan is deprecated. If there are replacing plans they will appear in `replacedBy` property
  final bool? deprecated;
  /// Optional. If `pricingTier` is `Standard` then this property holds the date of the last time the `pricingTier` was set to `Standard`, when available (e.g 2023-03-01T12:42:42.1921106Z).
  final String? enablementTime;
  /// If set to "False", it allows the descendants of this scope to override the pricing configuration set on this scope (allows setting inherited="False"). If set to "True", it prevents overrides and forces this pricing configuration on all the descendants of this scope. This field is only available for subscription-level pricing.
  final String? enforce;
  /// Optional. List of extensions offered under a plan.
  final List<ExtensionResponse>? extensions;
  /// The duration left for the subscriptions free trial period - in ISO 8601 format (e.g. P3Y6M4DT12H30M5S).
  final String? freeTrialRemainingTime;
  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String? id;
  /// "inherited" = "True" indicates that the current scope inherits its pricing configuration from its parent. The ID of the parent scope that provides the inherited configuration is displayed in the "inheritedFrom" field. On the other hand, "inherited" = "False" indicates that the current scope has its own pricing configuration explicitly set, and does not inherit from its parent. This field is read only and available only for resource-level pricing.
  final String? inherited;
  /// The id of the scope inherited from. "Null" if not inherited. This field is only available for resource-level pricing.
  final String? inheritedFrom;
  /// The name of the resource
  final String? name;
  /// Indicates whether the Defender plan is enabled on the selected scope. Microsoft Defender for Cloud is provided in two pricing tiers: free and standard. The standard tier offers advanced security capabilities, while the free tier offers basic security features.
  final String? pricingTier;
  /// Optional. List of plans that replace this plan. This property exists only if this plan is deprecated.
  final List<String>? replacedBy;
  /// This field is available for subscription-level only, and reflects the coverage status of the resources under the subscription. Please note: The "pricingTier" field reflects the plan status of the subscription. However, since the plan status can also be defined at the resource level, there might be misalignment between the subscription's plan status and the resource status. This field helps indicate the coverage status of the resources.
  final String? resourcesCoverageStatus;
  /// The sub-plan selected for a Standard pricing configuration, when more than one sub-plan is available. Each sub-plan enables a set of security features. When not specified, full plan is applied. For VirtualMachines plan, available sub plans are 'P1' & 'P2', where for resource level only 'P1' sub plan is supported.
  final String? subPlan;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse? systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String? type;

  /// Creates a new [GetPricingResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [deprecated] Optional. True if the plan is deprecated. If there are replacing plans they will appear in `replacedBy` property
  /// [enablementTime] Optional. If `pricingTier` is `Standard` then this property holds the date of the last time the `pricingTier` was set to `Standard`, when available (e.g 2023-03-01T12:42:42.1921106Z).
  /// [enforce] If set to "False", it allows the descendants of this scope to override the pricing configuration set on this scope (allows setting inherited="False"). If set to "True", it prevents overrides and forces this pricing configuration on all the descendants of this scope. This field is only available for subscription-level pricing.
  /// [extensions] Optional. List of extensions offered under a plan.
  /// [freeTrialRemainingTime] The duration left for the subscriptions free trial period - in ISO 8601 format (e.g. P3Y6M4DT12H30M5S).
  /// [id] Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  /// [inherited] "inherited" = "True" indicates that the current scope inherits its pricing configuration from its parent. The ID of the parent scope that provides the inherited configuration is displayed in the "inheritedFrom" field. On the other hand, "inherited" = "False" indicates that the current scope has its own pricing configuration explicitly set, and does not inherit from its parent. This field is read only and available only for resource-level pricing.
  /// [inheritedFrom] The id of the scope inherited from. "Null" if not inherited. This field is only available for resource-level pricing.
  /// [name] The name of the resource
  /// [pricingTier] Indicates whether the Defender plan is enabled on the selected scope. Microsoft Defender for Cloud is provided in two pricing tiers: free and standard. The standard tier offers advanced security capabilities, while the free tier offers basic security features.
  /// [replacedBy] Optional. List of plans that replace this plan. This property exists only if this plan is deprecated.
  /// [resourcesCoverageStatus] This field is available for subscription-level only, and reflects the coverage status of the resources under the subscription. Please note: The "pricingTier" field reflects the plan status of the subscription. However, since the plan status can also be defined at the resource level, there might be misalignment between the subscription's plan status and the resource status. This field helps indicate the coverage status of the resources.
  /// [subPlan] The sub-plan selected for a Standard pricing configuration, when more than one sub-plan is available. Each sub-plan enables a set of security features. When not specified, full plan is applied. For VirtualMachines plan, available sub plans are 'P1' & 'P2', where for resource level only 'P1' sub plan is supported.
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  const GetPricingResult({
    this.azureApiVersion,
    this.deprecated,
    this.enablementTime,
    this.enforce,
    this.extensions,
    this.freeTrialRemainingTime,
    this.id,
    this.inherited,
    this.inheritedFrom,
    this.name,
    this.pricingTier,
    this.replacedBy,
    this.resourcesCoverageStatus,
    this.subPlan,
    this.systemData,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': ?azureApiVersion,
      'deprecated': ?deprecated,
      'enablementTime': ?enablementTime,
      'enforce': ?enforce,
      'extensions': ?(() { final guardedValue = extensions; if (guardedValue == null) return null; return pulumi.Input.encodeList<ExtensionResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'freeTrialRemainingTime': ?freeTrialRemainingTime,
      'id': ?id,
      'inherited': ?inherited,
      'inheritedFrom': ?inheritedFrom,
      'name': ?name,
      'pricingTier': ?pricingTier,
      'replacedBy': ?replacedBy,
      'resourcesCoverageStatus': ?resourcesCoverageStatus,
      'subPlan': ?subPlan,
      'systemData': ?systemData?.toMap(),
      'type': ?type,
    };
  }

  factory GetPricingResult.fromMap(Map<String, dynamic> map) {
    return GetPricingResult(
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      deprecated: (() { final guardedValue = map['deprecated']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      enablementTime: (() { final guardedValue = map['enablementTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      enforce: (() { final guardedValue = map['enforce']; if (guardedValue == null) return null; return guardedValue as String; })(),
      extensions: (() { final guardedValue = map['extensions']; if (guardedValue == null) return null; return pulumi.Input.decodeList<ExtensionResponse>(guardedValue, (value) => ExtensionResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      freeTrialRemainingTime: (() { final guardedValue = map['freeTrialRemainingTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      inherited: (() { final guardedValue = map['inherited']; if (guardedValue == null) return null; return guardedValue as String; })(),
      inheritedFrom: (() { final guardedValue = map['inheritedFrom']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      pricingTier: (() { final guardedValue = map['pricingTier']; if (guardedValue == null) return null; return guardedValue as String; })(),
      replacedBy: (() { final guardedValue = map['replacedBy']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      resourcesCoverageStatus: (() { final guardedValue = map['resourcesCoverageStatus']; if (guardedValue == null) return null; return guardedValue as String; })(),
      subPlan: (() { final guardedValue = map['subPlan']; if (guardedValue == null) return null; return guardedValue as String; })(),
      systemData: (() { final guardedValue = map['systemData']; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
