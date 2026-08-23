// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetNetworkManagerCrossTenantScope {
  /// A list of management groups used as cross tenant scope for the Network Manager.
  final pulumi.Input<List<String>> managementGroups;
  /// A list of subscriptions used as cross tenant scope for the Network Manager.
  final pulumi.Input<List<String>> subscriptions;
  /// The tenant ID of the cross tenant scope.
  final pulumi.Input<String> tenantId;

  /// Creates a new [GetNetworkManagerCrossTenantScope].
  /// [managementGroups] A list of management groups used as cross tenant scope for the Network Manager.
  /// [subscriptions] A list of subscriptions used as cross tenant scope for the Network Manager.
  /// [tenantId] The tenant ID of the cross tenant scope.
  const GetNetworkManagerCrossTenantScope({
    required this.managementGroups,
    required this.subscriptions,
    required this.tenantId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'managementGroups': managementGroups,
      'subscriptions': subscriptions,
      'tenantId': tenantId,
    };
  }

  factory GetNetworkManagerCrossTenantScope.fromMap(Map<String, dynamic> map) {
    return GetNetworkManagerCrossTenantScope(
      managementGroups: pulumi.Input.fromValue((map['managementGroups'] as List).cast<String>()),
      subscriptions: pulumi.Input.fromValue((map['subscriptions'] as List).cast<String>()),
      tenantId: pulumi.Input.fromValue(map['tenantId'] as String),
    );
  }
}
