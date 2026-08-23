// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Information about a Provider. A Provider is an entity that offers Targets to run Azure Quantum Jobs.
class Provider {
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

  /// Creates a new [Provider].
  /// [applicationName] The provider's marketplace application display name.
  /// [instanceUri] A Uri identifying the specific instance of this provider.
  /// [providerId] Unique id of this provider.
  /// [providerSku] The sku associated with pricing information for this provider.
  /// [provisioningState] Provisioning status field
  /// [resourceUsageId] Id to track resource usage for the provider.
  const Provider({
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

  factory Provider.fromMap(Map<String, dynamic> map) {
    return Provider(
      applicationName: (() { final guardedValue = map['applicationName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      instanceUri: (() { final guardedValue = map['instanceUri']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      providerId: (() { final guardedValue = map['providerId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      providerSku: (() { final guardedValue = map['providerSku']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      provisioningState: (() { final guardedValue = map['provisioningState']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceUsageId: (() { final guardedValue = map['resourceUsageId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
