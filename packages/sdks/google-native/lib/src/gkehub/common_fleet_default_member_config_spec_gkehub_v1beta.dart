// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'config_management_membership_spec_gkehub_v1beta.dart';
import 'identity_service_membership_spec_gkehub_v1beta.dart';
import 'policy_controller_membership_spec_gkehub_v1beta.dart';
import 'service_mesh_membership_spec_gkehub_v1beta.dart';

/// CommonFleetDefaultMemberConfigSpec contains default configuration information for memberships of a fleet
class CommonFleetDefaultMemberConfigSpecGkehubV1beta {
  /// Config Management-specific spec.
  final pulumi.Input<ConfigManagementMembershipSpecGkehubV1beta>?
  configmanagement;

  /// Identity Service-specific spec.
  final pulumi.Input<IdentityServiceMembershipSpecGkehubV1beta>?
  identityservice;

  /// Anthos Service Mesh-specific spec
  final pulumi.Input<ServiceMeshMembershipSpecGkehubV1beta>? mesh;

  /// Policy Controller spec.
  final pulumi.Input<PolicyControllerMembershipSpecGkehubV1beta>?
  policycontroller;

  /// Creates a new [CommonFleetDefaultMemberConfigSpecGkehubV1beta].
  /// [configmanagement] Config Management-specific spec.
  /// [identityservice] Identity Service-specific spec.
  /// [mesh] Anthos Service Mesh-specific spec
  /// [policycontroller] Policy Controller spec.
  CommonFleetDefaultMemberConfigSpecGkehubV1beta({
    this.configmanagement,
    this.identityservice,
    this.mesh,
    this.policycontroller,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'configmanagement':
          ?pulumi.Input.mapOptionalInputValue<
            ConfigManagementMembershipSpecGkehubV1beta,
            Map<String, dynamic>
          >(configmanagement, (value) => value.toMap()),
      'identityservice':
          ?pulumi.Input.mapOptionalInputValue<
            IdentityServiceMembershipSpecGkehubV1beta,
            Map<String, dynamic>
          >(identityservice, (value) => value.toMap()),
      'mesh':
          ?pulumi.Input.mapOptionalInputValue<
            ServiceMeshMembershipSpecGkehubV1beta,
            Map<String, dynamic>
          >(mesh, (value) => value.toMap()),
      'policycontroller':
          ?pulumi.Input.mapOptionalInputValue<
            PolicyControllerMembershipSpecGkehubV1beta,
            Map<String, dynamic>
          >(policycontroller, (value) => value.toMap()),
    };
  }

  factory CommonFleetDefaultMemberConfigSpecGkehubV1beta.fromMap(
    Map<String, dynamic> map,
  ) {
    return CommonFleetDefaultMemberConfigSpecGkehubV1beta(
      configmanagement: (() {
        final guardedValue = map['configmanagement'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ConfigManagementMembershipSpecGkehubV1beta.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      identityservice: (() {
        final guardedValue = map['identityservice'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          IdentityServiceMembershipSpecGkehubV1beta.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      mesh: (() {
        final guardedValue = map['mesh'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ServiceMeshMembershipSpecGkehubV1beta.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      policycontroller: (() {
        final guardedValue = map['policycontroller'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          PolicyControllerMembershipSpecGkehubV1beta.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
    );
  }
}
