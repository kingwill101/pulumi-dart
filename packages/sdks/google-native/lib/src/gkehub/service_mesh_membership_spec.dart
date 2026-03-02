// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'service_mesh_membership_spec_control_plane.dart';
import 'service_mesh_membership_spec_management.dart';

/// **Service Mesh**: Spec for a single Membership for the servicemesh feature
class ServiceMeshMembershipSpec {
  /// Deprecated: use `management` instead Enables automatic control plane management.
  final pulumi.Input<ServiceMeshMembershipSpecControlPlane>? controlPlane;
  /// Enables automatic Service Mesh management.
  final pulumi.Input<ServiceMeshMembershipSpecManagement>? management;

  /// Creates a new [ServiceMeshMembershipSpec].
  /// [controlPlane] Deprecated: use `management` instead Enables automatic control plane management.
  /// [management] Enables automatic Service Mesh management.
  ServiceMeshMembershipSpec({
    this.controlPlane,
    this.management,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'controlPlane': ?pulumi.Input.mapOptionalInputValue<ServiceMeshMembershipSpecControlPlane, String>(controlPlane, (value) => value.value),
      'management': ?pulumi.Input.mapOptionalInputValue<ServiceMeshMembershipSpecManagement, String>(management, (value) => value.value),
    };
  }

  factory ServiceMeshMembershipSpec.fromMap(Map<String, dynamic> map) {
    return ServiceMeshMembershipSpec(
      controlPlane: map['controlPlane'] == null ? null : (ServiceMeshMembershipSpecControlPlane.fromValue(map['controlPlane'] as String)).input(),
      management: map['management'] == null ? null : (ServiceMeshMembershipSpecManagement.fromValue(map['management'] as String)).input(),
    );
  }
}

