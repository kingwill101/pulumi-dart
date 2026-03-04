// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetLkeClustersLkeClusterControlPlane {
  /// Enables audit logs on the cluster's control plane.
  final pulumi.Input<bool> auditLogsEnabled;

  /// Whether High Availability is enabled for the cluster Control Plane.
  final pulumi.Input<bool> highAvailability;

  /// Creates a new [GetLkeClustersLkeClusterControlPlane].
  /// [auditLogsEnabled] Enables audit logs on the cluster's control plane.
  /// [highAvailability] Whether High Availability is enabled for the cluster Control Plane.
  GetLkeClustersLkeClusterControlPlane({
    required this.auditLogsEnabled,
    required this.highAvailability,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'auditLogsEnabled': auditLogsEnabled,
      'highAvailability': highAvailability,
    };
  }

  factory GetLkeClustersLkeClusterControlPlane.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetLkeClustersLkeClusterControlPlane(
      auditLogsEnabled: pulumi.Input.fromValue(map['auditLogsEnabled'] as bool),
      highAvailability: pulumi.Input.fromValue(map['highAvailability'] as bool),
    );
  }
}
