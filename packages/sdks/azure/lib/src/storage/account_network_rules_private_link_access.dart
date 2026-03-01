// ignore_for_file: unused_element, unnecessary_cast


class AccountNetworkRulesPrivateLinkAccess {
  /// The ID of the Azure resource that should be allowed access to the target storage account.
  final String endpointResourceId;
  /// The tenant id of the resource of the resource access rule to be granted access. Defaults to the current tenant id.
  final String? endpointTenantId;

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
      endpointResourceId: map['endpointResourceId'] as String,
      endpointTenantId: map['endpointTenantId'] == null ? null : map['endpointTenantId'] as String,
    );
  }
}

