// ignore_for_file: unused_element, unnecessary_cast

import 'config_management_membership_spec_gkehub_v1beta.dart';
import 'identity_service_membership_spec_gkehub_v1beta.dart';
import 'policy_controller_membership_spec_gkehub_v1beta.dart';
import 'service_mesh_membership_spec_gkehub_v1beta.dart';

/// CommonFleetDefaultMemberConfigSpec contains default configuration information for memberships of a fleet
class CommonFleetDefaultMemberConfigSpecGkehubV1beta {
  /// Config Management-specific spec.
  final ConfigManagementMembershipSpecGkehubV1beta? configmanagement;
  /// Identity Service-specific spec.
  final IdentityServiceMembershipSpecGkehubV1beta? identityservice;
  /// Anthos Service Mesh-specific spec
  final ServiceMeshMembershipSpecGkehubV1beta? mesh;
  /// Policy Controller spec.
  final PolicyControllerMembershipSpecGkehubV1beta? policycontroller;

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
      'configmanagement': ?configmanagement == null ? null : configmanagement!.toMap(),
      'identityservice': ?identityservice == null ? null : identityservice!.toMap(),
      'mesh': ?mesh == null ? null : mesh!.toMap(),
      'policycontroller': ?policycontroller == null ? null : policycontroller!.toMap(),
    };
  }

  factory CommonFleetDefaultMemberConfigSpecGkehubV1beta.fromMap(Map<String, dynamic> map) {
    return CommonFleetDefaultMemberConfigSpecGkehubV1beta(
      configmanagement: map['configmanagement'] == null ? null : ConfigManagementMembershipSpecGkehubV1beta.fromMap((map['configmanagement'] as Map).cast<String, dynamic>()),
      identityservice: map['identityservice'] == null ? null : IdentityServiceMembershipSpecGkehubV1beta.fromMap((map['identityservice'] as Map).cast<String, dynamic>()),
      mesh: map['mesh'] == null ? null : ServiceMeshMembershipSpecGkehubV1beta.fromMap((map['mesh'] as Map).cast<String, dynamic>()),
      policycontroller: map['policycontroller'] == null ? null : PolicyControllerMembershipSpecGkehubV1beta.fromMap((map['policycontroller'] as Map).cast<String, dynamic>()),
    );
  }
}

