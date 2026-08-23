// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'config_management_membership_spec_response_gkehub_v1beta.dart';
import 'identity_service_membership_spec_response_gkehub_v1beta.dart';
import 'policy_controller_membership_spec_response_gkehub_v1beta.dart';
import 'service_mesh_membership_spec_response_gkehub_v1beta.dart';

/// CommonFleetDefaultMemberConfigSpec contains default configuration information for memberships of a fleet
class CommonFleetDefaultMemberConfigSpecResponseGkehubV1beta {
  /// Config Management-specific spec.
  final pulumi.Input<ConfigManagementMembershipSpecResponseGkehubV1beta> configmanagement;
  /// Identity Service-specific spec.
  final pulumi.Input<IdentityServiceMembershipSpecResponseGkehubV1beta> identityservice;
  /// Anthos Service Mesh-specific spec
  final pulumi.Input<ServiceMeshMembershipSpecResponseGkehubV1beta> mesh;
  /// Policy Controller spec.
  final pulumi.Input<PolicyControllerMembershipSpecResponseGkehubV1beta> policycontroller;

  /// Creates a new [CommonFleetDefaultMemberConfigSpecResponseGkehubV1beta].
  /// [configmanagement] Config Management-specific spec.
  /// [identityservice] Identity Service-specific spec.
  /// [mesh] Anthos Service Mesh-specific spec
  /// [policycontroller] Policy Controller spec.
  const CommonFleetDefaultMemberConfigSpecResponseGkehubV1beta({
    required this.configmanagement,
    required this.identityservice,
    required this.mesh,
    required this.policycontroller,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'configmanagement': pulumi.Input.mapInputValue<ConfigManagementMembershipSpecResponseGkehubV1beta, Map<String, dynamic>>(configmanagement, (value) => value.toMap()),
      'identityservice': pulumi.Input.mapInputValue<IdentityServiceMembershipSpecResponseGkehubV1beta, Map<String, dynamic>>(identityservice, (value) => value.toMap()),
      'mesh': pulumi.Input.mapInputValue<ServiceMeshMembershipSpecResponseGkehubV1beta, Map<String, dynamic>>(mesh, (value) => value.toMap()),
      'policycontroller': pulumi.Input.mapInputValue<PolicyControllerMembershipSpecResponseGkehubV1beta, Map<String, dynamic>>(policycontroller, (value) => value.toMap()),
    };
  }

  factory CommonFleetDefaultMemberConfigSpecResponseGkehubV1beta.fromMap(Map<String, dynamic> map) {
    return CommonFleetDefaultMemberConfigSpecResponseGkehubV1beta(
      configmanagement: pulumi.Input.fromValue(ConfigManagementMembershipSpecResponseGkehubV1beta.fromMap((map['configmanagement']! as Map).cast<String, dynamic>())),
      identityservice: pulumi.Input.fromValue(IdentityServiceMembershipSpecResponseGkehubV1beta.fromMap((map['identityservice']! as Map).cast<String, dynamic>())),
      mesh: pulumi.Input.fromValue(ServiceMeshMembershipSpecResponseGkehubV1beta.fromMap((map['mesh']! as Map).cast<String, dynamic>())),
      policycontroller: pulumi.Input.fromValue(PolicyControllerMembershipSpecResponseGkehubV1beta.fromMap((map['policycontroller']! as Map).cast<String, dynamic>())),
    );
  }
}
