// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AccountNetworkRulesPrivateLinkAccess {
  /// The ID of the Azure resource that should be allowed access to the target storage account.
  final pulumi.Input<String> endpointResourceId;
  /// The tenant id of the resource of the resource access rule to be granted access. Defaults to the current tenant id.
  final pulumi.Input<String>? endpointTenantId;

  /// Creates a new [AccountNetworkRulesPrivateLinkAccess].
  /// [endpointResourceId] The ID of the Azure resource that should be allowed access to the target storage account.
  /// [endpointTenantId] The tenant id of the resource of the resource access rule to be granted access. Defaults to the current tenant id.
  AccountNetworkRulesPrivateLinkAccess({
    required this.endpointResourceId,
    this.endpointTenantId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'endpointResourceId': endpointResourceId,
      'endpointTenantId': ?endpointTenantId,
    };
  }

  factory AccountNetworkRulesPrivateLinkAccess.fromMap(Map<String, dynamic> map) {
    return AccountNetworkRulesPrivateLinkAccess(
      endpointResourceId: pulumi.Input.fromValue(map['endpointResourceId'] as String),
      endpointTenantId: (() { final guardedValue = map['endpointTenantId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

