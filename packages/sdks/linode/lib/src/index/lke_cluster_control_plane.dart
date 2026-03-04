// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'lke_cluster_control_plane_acl.dart';

class LkeClusterControlPlane {
  /// Defines the ACL configuration for an LKE cluster's control plane.
  final pulumi.Input<LkeClusterControlPlaneAcl>? acl;

  /// Enables audit logs on the cluster's control plane.
  ///
  /// * `acl` - (Optional) Defines the ACL configuration for an LKE cluster's control plane.
  final pulumi.Input<bool>? auditLogsEnabled;

  /// Defines whether High Availability is enabled for the cluster Control Plane. This is an **irreversible** change.
  final pulumi.Input<bool>? highAvailability;

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
      'acl':
          ?pulumi.Input.mapOptionalInputValue<
            LkeClusterControlPlaneAcl,
            Map<String, dynamic>
          >(acl, (value) => value.toMap()),
      'auditLogsEnabled': ?auditLogsEnabled,
      'highAvailability': ?highAvailability,
    };
  }

  factory LkeClusterControlPlane.fromMap(Map<String, dynamic> map) {
    return LkeClusterControlPlane(
      acl: (() {
        final guardedValue = map['acl'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          LkeClusterControlPlaneAcl.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      auditLogsEnabled: (() {
        final guardedValue = map['auditLogsEnabled'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      highAvailability: (() {
        final guardedValue = map['highAvailability'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
    );
  }
}
