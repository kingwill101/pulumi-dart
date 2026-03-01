// ignore_for_file: unused_element, unnecessary_cast

import 'lke_cluster_control_plane_acl.dart';

class LkeClusterControlPlane {
  /// Defines the ACL configuration for an LKE cluster's control plane.
  final LkeClusterControlPlaneAcl? acl;
  /// Enables audit logs on the cluster's control plane.
  ///
  /// * `acl` - (Optional) Defines the ACL configuration for an LKE cluster's control plane.
  final bool? auditLogsEnabled;
  /// Defines whether High Availability is enabled for the cluster Control Plane. This is an **irreversible** change.
  final bool? highAvailability;

  /// Creates a new [LkeClusterControlPlane].
  /// [acl] Defines the ACL configuration for an LKE cluster's control plane.
  /// [auditLogsEnabled] Enables audit logs on the cluster's control plane.
  /// [highAvailability] Defines whether High Availability is enabled for the cluster Control Plane. This is an **irreversible** change.
  LkeClusterControlPlane({
    this.acl,
    this.auditLogsEnabled,
    this.highAvailability,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'acl': ?acl == null ? null : acl!.toMap(),
      'auditLogsEnabled': ?auditLogsEnabled,
      'highAvailability': ?highAvailability,
    };
  }

  factory LkeClusterControlPlane.fromMap(Map<String, dynamic> map) {
    return LkeClusterControlPlane(
      acl: map['acl'] == null ? null : LkeClusterControlPlaneAcl.fromMap((map['acl'] as Map).cast<String, dynamic>()),
      auditLogsEnabled: map['auditLogsEnabled'] == null ? null : map['auditLogsEnabled'] as bool,
      highAvailability: map['highAvailability'] == null ? null : map['highAvailability'] as bool,
    );
  }
}

