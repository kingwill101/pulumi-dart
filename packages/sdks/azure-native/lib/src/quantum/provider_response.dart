// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Information about a Provider. A Provider is an entity that offers Targets to run Azure Quantum Jobs.
class ProviderResponse {
  /// The provider's marketplace application display name.
  final pulumi.Input<String>? applicationName;
  /// A Uri identifying the specific instance of this provider.
  final pulumi.Input<String>? instanceUri;
  /// Unique id of this provider.
  final pulumi.Input<String>? providerId;
  /// The sku associated with pricing information for this provider.
  final pulumi.Input<String>? providerSku;
  /// Provisioning status field
  final pulumi.Input<String>? provisioningState;
  /// Id to track resource usage for the provider.
  final pulumi.Input<String>? resourceUsageId;

  /// Creates a new [ProviderResponse].
  /// [applicationName] The provider's marketplace application display name.
  /// [instanceUri] A Uri identifying the specific instance of this provider.
  /// [providerId] Unique id of this provider.
  /// [providerSku] The sku associated with pricing information for this provider.
  /// [provisioningState] Provisioning status field
  /// [resourceUsageId] Id to track resource usage for the provider.
  ProviderResponse({
    this.applicationName,
    this.instanceUri,
    this.providerId,
    this.providerSku,
    this.provisioningState,
    this.resourceUsageId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'applicationName': ?applicationName,
      'instanceUri': ?instanceUri,
      'providerId': ?providerId,
      'providerSku': ?providerSku,
      'provisioningState': ?provisioningState,
      'resourceUsageId': ?resourceUsageId,
    };
  }

  factory ProviderResponse.fromMap(Map<String, dynamic> map) {
    return ProviderResponse(
      applicationName: map['applicationName'] == null ? null : (map['applicationName']! as String).input(),
      instanceUri: map['instanceUri'] == null ? null : (map['instanceUri']! as String).input(),
      providerId: map['providerId'] == null ? null : (map['providerId']! as String).input(),
      providerSku: map['providerSku'] == null ? null : (map['providerSku']! as String).input(),
      provisioningState: map['provisioningState'] == null ? null : (map['provisioningState']! as String).input(),
      resourceUsageId: map['resourceUsageId'] == null ? null : (map['resourceUsageId']! as String).input(),
    );
  }
}

