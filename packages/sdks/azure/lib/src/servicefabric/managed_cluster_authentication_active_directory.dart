// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ManagedClusterAuthenticationActiveDirectory {
  /// The ID of the Client Application.
  final pulumi.Input<String> clientApplicationId;

  /// The ID of the Cluster Application.
  final pulumi.Input<String> clusterApplicationId;

  /// The ID of the Tenant.
  final pulumi.Input<String> tenantId;

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

  factory ManagedClusterAuthenticationActiveDirectory.fromMap(
    Map<String, dynamic> map,
  ) {
    return ManagedClusterAuthenticationActiveDirectory(
      clientApplicationId: pulumi.Input.fromValue(
        map['clientApplicationId'] as String,
      ),
      clusterApplicationId: pulumi.Input.fromValue(
        map['clusterApplicationId'] as String,
      ),
      tenantId: pulumi.Input.fromValue(map['tenantId'] as String),
    );
  }
}
