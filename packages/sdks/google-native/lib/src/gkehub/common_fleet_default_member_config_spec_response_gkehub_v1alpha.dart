// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'config_management_membership_spec_response_gkehub_v1alpha.dart';
import 'identity_service_membership_spec_response_gkehub_v1alpha.dart';
import 'policy_controller_membership_spec_response_gkehub_v1alpha.dart';
import 'service_mesh_membership_spec_response_gkehub_v1alpha.dart';

/// CommonFleetDefaultMemberConfigSpec contains default configuration information for memberships of a fleet
class CommonFleetDefaultMemberConfigSpecResponseGkehubV1alpha {
  /// Config Management-specific spec.
  final pulumi.Input<ConfigManagementMembershipSpecResponseGkehubV1alpha> configmanagement;
  /// Identity Service-specific spec.
  final pulumi.Input<IdentityServiceMembershipSpecResponseGkehubV1alpha> identityservice;
  /// Anthos Service Mesh-specific spec
  final pulumi.Input<ServiceMeshMembershipSpecResponseGkehubV1alpha> mesh;
  /// Policy Controller spec.
  final pulumi.Input<PolicyControllerMembershipSpecResponseGkehubV1alpha> policycontroller;

  /// Creates a new [CommonFleetDefaultMemberConfigSpecResponseGkehubV1alpha].
  /// [configmanagement] Config Management-specific spec.
  /// [identityservice] Identity Service-specific spec.
  /// [mesh] Anthos Service Mesh-specific spec
  /// [policycontroller] Policy Controller spec.
  CommonFleetDefaultMemberConfigSpecResponseGkehubV1alpha({
    required this.configmanagement,
    required this.identityservice,
    required this.mesh,
    required this.policycontroller,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'configmanagement': pulumi.Input.mapInputValue<ConfigManagementMembershipSpecResponseGkehubV1alpha, Map<String, dynamic>>(configmanagement, (value) => value.toMap()),
      'identityservice': pulumi.Input.mapInputValue<IdentityServiceMembershipSpecResponseGkehubV1alpha, Map<String, dynamic>>(identityservice, (value) => value.toMap()),
      'mesh': pulumi.Input.mapInputValue<ServiceMeshMembershipSpecResponseGkehubV1alpha, Map<String, dynamic>>(mesh, (value) => value.toMap()),
      'policycontroller': pulumi.Input.mapInputValue<PolicyControllerMembershipSpecResponseGkehubV1alpha, Map<String, dynamic>>(policycontroller, (value) => value.toMap()),
    };
  }

  factory CommonFleetDefaultMemberConfigSpecResponseGkehubV1alpha.fromMap(Map<String, dynamic> map) {
    return CommonFleetDefaultMemberConfigSpecResponseGkehubV1alpha(
      configmanagement: pulumi.Input.fromValue(ConfigManagementMembershipSpecResponseGkehubV1alpha.fromMap((map['configmanagement']! as Map).cast<String, dynamic>())),
      identityservice: pulumi.Input.fromValue(IdentityServiceMembershipSpecResponseGkehubV1alpha.fromMap((map['identityservice']! as Map).cast<String, dynamic>())),
      mesh: pulumi.Input.fromValue(ServiceMeshMembershipSpecResponseGkehubV1alpha.fromMap((map['mesh']! as Map).cast<String, dynamic>())),
      policycontroller: pulumi.Input.fromValue(PolicyControllerMembershipSpecResponseGkehubV1alpha.fromMap((map['policycontroller']! as Map).cast<String, dynamic>())),
    );
  }
}

