// ignore_for_file: unused_element, unnecessary_cast


class ManagedClusterAuthenticationActiveDirectory {
  /// The ID of the Client Application.
  final String clientApplicationId;
  /// The ID of the Cluster Application.
  final String clusterApplicationId;
  /// The ID of the Tenant.
  final String tenantId;

  /// Creates a new [ManagedClusterAuthenticationActiveDirectory].
  /// [clientApplicationId] The ID of the Client Application.
  /// [clusterApplicationId] The ID of the Cluster Application.
  /// [tenantId] The ID of the Tenant.
  ManagedClusterAuthenticationActiveDirectory({
    required this.clientApplicationId,
    required this.clusterApplicationId,
    required this.tenantId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clientApplicationId': clientApplicationId,
      'clusterApplicationId': clusterApplicationId,
      'tenantId': tenantId,
    };
  }

  factory ManagedClusterAuthenticationActiveDirectory.fromMap(Map<String, dynamic> map) {
    return ManagedClusterAuthenticationActiveDirectory(
      clientApplicationId: map['clientApplicationId'] as String,
      clusterApplicationId: map['clusterApplicationId'] as String,
      tenantId: map['tenantId'] as String,
    );
  }
}

