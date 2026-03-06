// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'config_management_membership_spec.dart';
import 'identity_service_membership_spec.dart';
import 'policy_controller_membership_spec.dart';
import 'service_mesh_membership_spec.dart';

/// CommonFleetDefaultMemberConfigSpec contains default configuration information for memberships of a fleet
class CommonFleetDefaultMemberConfigSpec {
  /// Config Management-specific spec.
  final pulumi.Input<ConfigManagementMembershipSpec>? configmanagement;
  /// Identity Service-specific spec.
  final pulumi.Input<IdentityServiceMembershipSpec>? identityservice;
  /// Anthos Service Mesh-specific spec
  final pulumi.Input<ServiceMeshMembershipSpec>? mesh;
  /// Policy Controller spec.
  final pulumi.Input<PolicyControllerMembershipSpec>? policycontroller;

  /// Creates a new [CommonFleetDefaultMemberConfigSpec].
  /// [configmanagement] Config Management-specific spec.
  /// [identityservice] Identity Service-specific spec.
  /// [mesh] Anthos Service Mesh-specific spec
  /// [policycontroller] Policy Controller spec.
  const CommonFleetDefaultMemberConfigSpec({
    this.configmanagement,
    this.identityservice,
    this.mesh,
    this.policycontroller,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'configmanagement': ?pulumi.Input.mapOptionalInputValue<ConfigManagementMembershipSpec, Map<String, dynamic>>(configmanagement, (value) => value.toMap()),
      'identityservice': ?pulumi.Input.mapOptionalInputValue<IdentityServiceMembershipSpec, Map<String, dynamic>>(identityservice, (value) => value.toMap()),
      'mesh': ?pulumi.Input.mapOptionalInputValue<ServiceMeshMembershipSpec, Map<String, dynamic>>(mesh, (value) => value.toMap()),
      'policycontroller': ?pulumi.Input.mapOptionalInputValue<PolicyControllerMembershipSpec, Map<String, dynamic>>(policycontroller, (value) => value.toMap()),
    };
  }

  factory CommonFleetDefaultMemberConfigSpec.fromMap(Map<String, dynamic> map) {
    return CommonFleetDefaultMemberConfigSpec(
      configmanagement: (() { final guardedValue = map['configmanagement']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ConfigManagementMembershipSpec.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      identityservice: (() { final guardedValue = map['identityservice']; if (guardedValue == null) return null; return pulumi.Input.fromValue(IdentityServiceMembershipSpec.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      mesh: (() { final guardedValue = map['mesh']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ServiceMeshMembershipSpec.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      policycontroller: (() { final guardedValue = map['policycontroller']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PolicyControllerMembershipSpec.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

