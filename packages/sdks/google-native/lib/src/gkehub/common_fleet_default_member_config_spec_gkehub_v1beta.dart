// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'config_management_membership_spec_gkehub_v1beta.dart';
import 'identity_service_membership_spec_gkehub_v1beta.dart';
import 'policy_controller_membership_spec_gkehub_v1beta.dart';
import 'service_mesh_membership_spec_gkehub_v1beta.dart';

/// CommonFleetDefaultMemberConfigSpec contains default configuration information for memberships of a fleet
class CommonFleetDefaultMemberConfigSpecGkehubV1beta {
  /// Config Management-specific spec.
  final pulumi.Input<ConfigManagementMembershipSpecGkehubV1beta>? configmanagement;
  /// Identity Service-specific spec.
  final pulumi.Input<IdentityServiceMembershipSpecGkehubV1beta>? identityservice;
  /// Anthos Service Mesh-specific spec
  final pulumi.Input<ServiceMeshMembershipSpecGkehubV1beta>? mesh;
  /// Policy Controller spec.
  final pulumi.Input<PolicyControllerMembershipSpecGkehubV1beta>? policycontroller;

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
      'configmanagement': ?pulumi.Input.mapOptionalInputValue<ConfigManagementMembershipSpecGkehubV1beta, Map<String, dynamic>>(configmanagement, (value) => value.toMap()),
      'identityservice': ?pulumi.Input.mapOptionalInputValue<IdentityServiceMembershipSpecGkehubV1beta, Map<String, dynamic>>(identityservice, (value) => value.toMap()),
      'mesh': ?pulumi.Input.mapOptionalInputValue<ServiceMeshMembershipSpecGkehubV1beta, Map<String, dynamic>>(mesh, (value) => value.toMap()),
      'policycontroller': ?pulumi.Input.mapOptionalInputValue<PolicyControllerMembershipSpecGkehubV1beta, Map<String, dynamic>>(policycontroller, (value) => value.toMap()),
    };
  }

  factory CommonFleetDefaultMemberConfigSpecGkehubV1beta.fromMap(Map<String, dynamic> map) {
    return CommonFleetDefaultMemberConfigSpecGkehubV1beta(
      configmanagement: map['configmanagement'] == null ? null : (ConfigManagementMembershipSpecGkehubV1beta.fromMap((map['configmanagement']! as Map).cast<String, dynamic>())).input(),
      identityservice: map['identityservice'] == null ? null : (IdentityServiceMembershipSpecGkehubV1beta.fromMap((map['identityservice']! as Map).cast<String, dynamic>())).input(),
      mesh: map['mesh'] == null ? null : (ServiceMeshMembershipSpecGkehubV1beta.fromMap((map['mesh']! as Map).cast<String, dynamic>())).input(),
      policycontroller: map['policycontroller'] == null ? null : (PolicyControllerMembershipSpecGkehubV1beta.fromMap((map['policycontroller']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

