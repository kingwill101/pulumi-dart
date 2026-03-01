// ignore_for_file: unused_element, unnecessary_cast

import 'config_management_membership_spec_response.dart';
import 'identity_service_membership_spec_response.dart';
import 'policy_controller_membership_spec_response.dart';
import 'service_mesh_membership_spec_response.dart';

/// CommonFleetDefaultMemberConfigSpec contains default configuration information for memberships of a fleet
class CommonFleetDefaultMemberConfigSpecResponse {
  /// Config Management-specific spec.
  final ConfigManagementMembershipSpecResponse configmanagement;
  /// Identity Service-specific spec.
  final IdentityServiceMembershipSpecResponse identityservice;
  /// Anthos Service Mesh-specific spec
  final ServiceMeshMembershipSpecResponse mesh;
  /// Policy Controller spec.
  final PolicyControllerMembershipSpecResponse policycontroller;

  /// Creates a new [CommonFleetDefaultMemberConfigSpecResponse].
  /// [configmanagement] Config Management-specific spec.
  /// [identityservice] Identity Service-specific spec.
  /// [mesh] Anthos Service Mesh-specific spec
  /// [policycontroller] Policy Controller spec.
  CommonFleetDefaultMemberConfigSpecResponse({
    required this.configmanagement,
    required this.identityservice,
    required this.mesh,
    required this.policycontroller,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'configmanagement': configmanagement.toMap(),
      'identityservice': identityservice.toMap(),
      'mesh': mesh.toMap(),
      'policycontroller': policycontroller.toMap(),
    };
  }

  factory CommonFleetDefaultMemberConfigSpecResponse.fromMap(Map<String, dynamic> map) {
    return CommonFleetDefaultMemberConfigSpecResponse(
      configmanagement: ConfigManagementMembershipSpecResponse.fromMap((map['configmanagement'] as Map).cast<String, dynamic>()),
      identityservice: IdentityServiceMembershipSpecResponse.fromMap((map['identityservice'] as Map).cast<String, dynamic>()),
      mesh: ServiceMeshMembershipSpecResponse.fromMap((map['mesh'] as Map).cast<String, dynamic>()),
      policycontroller: PolicyControllerMembershipSpecResponse.fromMap((map['policycontroller'] as Map).cast<String, dynamic>()),
    );
  }
}

