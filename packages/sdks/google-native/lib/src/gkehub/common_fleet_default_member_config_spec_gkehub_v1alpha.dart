// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'config_management_membership_spec_gkehub_v1alpha.dart';
import 'identity_service_membership_spec_gkehub_v1alpha.dart';
import 'policy_controller_membership_spec_gkehub_v1alpha.dart';
import 'service_mesh_membership_spec_gkehub_v1alpha.dart';

/// CommonFleetDefaultMemberConfigSpec contains default configuration information for memberships of a fleet
class CommonFleetDefaultMemberConfigSpecGkehubV1alpha {
  /// Config Management-specific spec.
  final pulumi.Input<ConfigManagementMembershipSpecGkehubV1alpha>? configmanagement;
  /// Identity Service-specific spec.
  final pulumi.Input<IdentityServiceMembershipSpecGkehubV1alpha>? identityservice;
  /// Anthos Service Mesh-specific spec
  final pulumi.Input<ServiceMeshMembershipSpecGkehubV1alpha>? mesh;
  /// Policy Controller spec.
  final pulumi.Input<PolicyControllerMembershipSpecGkehubV1alpha>? policycontroller;

  /// Creates a new [CommonFleetDefaultMemberConfigSpecGkehubV1alpha].
  /// [configmanagement] Config Management-specific spec.
  /// [identityservice] Identity Service-specific spec.
  /// [mesh] Anthos Service Mesh-specific spec
  /// [policycontroller] Policy Controller spec.
  CommonFleetDefaultMemberConfigSpecGkehubV1alpha({
    this.configmanagement,
    this.identityservice,
    this.mesh,
    this.policycontroller,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'configmanagement': ?pulumi.Input.mapOptionalInputValue<ConfigManagementMembershipSpecGkehubV1alpha, Map<String, dynamic>>(configmanagement, (value) => value.toMap()),
      'identityservice': ?pulumi.Input.mapOptionalInputValue<IdentityServiceMembershipSpecGkehubV1alpha, Map<String, dynamic>>(identityservice, (value) => value.toMap()),
      'mesh': ?pulumi.Input.mapOptionalInputValue<ServiceMeshMembershipSpecGkehubV1alpha, Map<String, dynamic>>(mesh, (value) => value.toMap()),
      'policycontroller': ?pulumi.Input.mapOptionalInputValue<PolicyControllerMembershipSpecGkehubV1alpha, Map<String, dynamic>>(policycontroller, (value) => value.toMap()),
    };
  }

  factory CommonFleetDefaultMemberConfigSpecGkehubV1alpha.fromMap(Map<String, dynamic> map) {
    return CommonFleetDefaultMemberConfigSpecGkehubV1alpha(
      configmanagement: map['configmanagement'] == null ? null : (ConfigManagementMembershipSpecGkehubV1alpha.fromMap((map['configmanagement']! as Map).cast<String, dynamic>())).input(),
      identityservice: map['identityservice'] == null ? null : (IdentityServiceMembershipSpecGkehubV1alpha.fromMap((map['identityservice']! as Map).cast<String, dynamic>())).input(),
      mesh: map['mesh'] == null ? null : (ServiceMeshMembershipSpecGkehubV1alpha.fromMap((map['mesh']! as Map).cast<String, dynamic>())).input(),
      policycontroller: map['policycontroller'] == null ? null : (PolicyControllerMembershipSpecGkehubV1alpha.fromMap((map['policycontroller']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

