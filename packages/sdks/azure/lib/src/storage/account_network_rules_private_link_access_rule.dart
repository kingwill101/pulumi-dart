// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AccountNetworkRulesPrivateLinkAccessRule {
  /// The resource id of the resource access rule to be granted access.
  final pulumi.Input<String> endpointResourceId;
  /// The tenant id of the resource of the resource access rule to be granted access. Defaults to the current tenant id.
  final pulumi.Input<String?>? endpointTenantId;

  /// Creates a new [AccountNetworkRulesPrivateLinkAccessRule].
  /// [endpointResourceId] The resource id of the resource access rule to be granted access.
  /// [endpointTenantId] The tenant id of the resource of the resource access rule to be granted access. Defaults to the current tenant id.
  const AccountNetworkRulesPrivateLinkAccessRule({
    required this.endpointResourceId,
    this.endpointTenantId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'endpointResourceId': endpointResourceId,
      'endpointTenantId': ?endpointTenantId,
    };
  }

  factory AccountNetworkRulesPrivateLinkAccessRule.fromMap(Map<String, dynamic> map) {
    return AccountNetworkRulesPrivateLinkAccessRule(
      endpointResourceId: pulumi.Input.fromValue(map['endpointResourceId'] as String),
      endpointTenantId: (() { final guardedValue = map['endpointTenantId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
