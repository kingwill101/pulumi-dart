// ignore_for_file: unused_element, unnecessary_cast


class AccountNetworkRulesPrivateLinkAccessRule {
  /// The resource id of the resource access rule to be granted access.
  final String endpointResourceId;
  /// The tenant id of the resource of the resource access rule to be granted access. Defaults to the current tenant id.
  final String? endpointTenantId;

  /// Creates a new [AccountNetworkRulesPrivateLinkAccessRule].
  /// [endpointResourceId] The resource id of the resource access rule to be granted access.
  /// [endpointTenantId] The tenant id of the resource of the resource access rule to be granted access. Defaults to the current tenant id.
  AccountNetworkRulesPrivateLinkAccessRule({
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
      endpointResourceId: map['endpointResourceId'] as String,
      endpointTenantId: map['endpointTenantId'] == null ? null : map['endpointTenantId'] as String,
    );
  }
}

