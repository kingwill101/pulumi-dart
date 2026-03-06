// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'config_management_membership_spec_response.dart';
import 'identity_service_membership_spec_response.dart';
import 'policy_controller_membership_spec_response.dart';
import 'service_mesh_membership_spec_response.dart';

/// CommonFleetDefaultMemberConfigSpec contains default configuration information for memberships of a fleet
class CommonFleetDefaultMemberConfigSpecResponse {
  /// Config Management-specific spec.
  final pulumi.Input<ConfigManagementMembershipSpecResponse> configmanagement;
  /// Identity Service-specific spec.
  final pulumi.Input<IdentityServiceMembershipSpecResponse> identityservice;
  /// Anthos Service Mesh-specific spec
  final pulumi.Input<ServiceMeshMembershipSpecResponse> mesh;
  /// Policy Controller spec.
  final pulumi.Input<PolicyControllerMembershipSpecResponse> policycontroller;

  /// Creates a new [CommonFleetDefaultMemberConfigSpecResponse].
  /// [configmanagement] Config Management-specific spec.
  /// [identityservice] Identity Service-specific spec.
  /// [mesh] Anthos Service Mesh-specific spec
  /// [policycontroller] Policy Controller spec.
  const CommonFleetDefaultMemberConfigSpecResponse({
    required this.configmanagement,
    required this.identityservice,
    required this.mesh,
    required this.policycontroller,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'configmanagement': pulumi.Input.mapInputValue<ConfigManagementMembershipSpecResponse, Map<String, dynamic>>(configmanagement, (value) => value.toMap()),
      'identityservice': pulumi.Input.mapInputValue<IdentityServiceMembershipSpecResponse, Map<String, dynamic>>(identityservice, (value) => value.toMap()),
      'mesh': pulumi.Input.mapInputValue<ServiceMeshMembershipSpecResponse, Map<String, dynamic>>(mesh, (value) => value.toMap()),
      'policycontroller': pulumi.Input.mapInputValue<PolicyControllerMembershipSpecResponse, Map<String, dynamic>>(policycontroller, (value) => value.toMap()),
    };
  }

  factory CommonFleetDefaultMemberConfigSpecResponse.fromMap(Map<String, dynamic> map) {
    return CommonFleetDefaultMemberConfigSpecResponse(
      configmanagement: pulumi.Input.fromValue(ConfigManagementMembershipSpecResponse.fromMap((map['configmanagement']! as Map).cast<String, dynamic>())),
      identityservice: pulumi.Input.fromValue(IdentityServiceMembershipSpecResponse.fromMap((map['identityservice']! as Map).cast<String, dynamic>())),
      mesh: pulumi.Input.fromValue(ServiceMeshMembershipSpecResponse.fromMap((map['mesh']! as Map).cast<String, dynamic>())),
      policycontroller: pulumi.Input.fromValue(PolicyControllerMembershipSpecResponse.fromMap((map['policycontroller']! as Map).cast<String, dynamic>())),
    );
  }
}

