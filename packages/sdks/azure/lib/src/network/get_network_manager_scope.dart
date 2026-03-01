// ignore_for_file: unused_element, unnecessary_cast


class GetNetworkManagerScope {
  /// A list of management group IDs used a scope for the Network Manager.
  final List<String> managementGroupIds;
  /// A list of subscription IDs used as the scope for the Network Manager.
  final List<String> subscriptionIds;

  /// Creates a new [GetNetworkManagerScope].
  /// [managementGroupIds] A list of management group IDs used a scope for the Network Manager.
  /// [subscriptionIds] A list of subscription IDs used as the scope for the Network Manager.
  GetNetworkManagerScope({
    required this.managementGroupIds,
    required this.subscriptionIds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'managementGroupIds': managementGroupIds,
      'subscriptionIds': subscriptionIds,
    };
  }

  factory GetNetworkManagerScope.fromMap(Map<String, dynamic> map) {
    return GetNetworkManagerScope(
      managementGroupIds: (map['managementGroupIds'] as List).cast<String>(),
      subscriptionIds: (map['subscriptionIds'] as List).cast<String>(),
    );
  }
}

