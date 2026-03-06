// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'service_mesh_membership_spec_control_plane_gkehub_v1alpha.dart';
import 'service_mesh_membership_spec_default_channel.dart';
import 'service_mesh_membership_spec_management_gkehub_v1alpha.dart';

/// **Service Mesh**: Spec for a single Membership for the servicemesh feature
class ServiceMeshMembershipSpecGkehubV1alpha {
  /// Deprecated: use `management` instead Enables automatic control plane management.
  final pulumi.Input<ServiceMeshMembershipSpecControlPlaneGkehubV1alpha>? controlPlane;
  /// Determines which release channel to use for default injection and service mesh APIs.
  final pulumi.Input<ServiceMeshMembershipSpecDefaultChannel>? defaultChannel;
  /// Enables automatic Service Mesh management.
  final pulumi.Input<ServiceMeshMembershipSpecManagementGkehubV1alpha>? management;

  /// Creates a new [ServiceMeshMembershipSpecGkehubV1alpha].
  /// [controlPlane] Deprecated: use `management` instead Enables automatic control plane management.
  /// [defaultChannel] Determines which release channel to use for default injection and service mesh APIs.
  /// [management] Enables automatic Service Mesh management.
  const ServiceMeshMembershipSpecGkehubV1alpha({
    this.controlPlane,
    this.defaultChannel,
    this.management,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'controlPlane': ?pulumi.Input.mapOptionalInputValue<ServiceMeshMembershipSpecControlPlaneGkehubV1alpha, String>(controlPlane, (value) => value.wireValue),
      'defaultChannel': ?pulumi.Input.mapOptionalInputValue<ServiceMeshMembershipSpecDefaultChannel, String>(defaultChannel, (value) => value.wireValue),
      'management': ?pulumi.Input.mapOptionalInputValue<ServiceMeshMembershipSpecManagementGkehubV1alpha, String>(management, (value) => value.wireValue),
    };
  }

  factory ServiceMeshMembershipSpecGkehubV1alpha.fromMap(Map<String, dynamic> map) {
    return ServiceMeshMembershipSpecGkehubV1alpha(
      controlPlane: (() { final guardedValue = map['controlPlane']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ServiceMeshMembershipSpecControlPlaneGkehubV1alpha.fromValue(guardedValue as String)); })(),
      defaultChannel: (() { final guardedValue = map['defaultChannel']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ServiceMeshMembershipSpecDefaultChannel.fromValue(guardedValue as String)); })(),
      management: (() { final guardedValue = map['management']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ServiceMeshMembershipSpecManagementGkehubV1alpha.fromValue(guardedValue as String)); })(),
    );
  }
}

