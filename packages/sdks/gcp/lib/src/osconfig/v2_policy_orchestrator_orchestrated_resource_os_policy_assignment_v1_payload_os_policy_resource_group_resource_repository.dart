// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'v2_policy_orchestrator_orchestrated_resource_os_policy_assignment_v1_payload_os_policy_resource_group_resource_repository_apt.dart';
import 'v2_policy_orchestrator_orchestrated_resource_os_policy_assignment_v1_payload_os_policy_resource_group_resource_repository_goo.dart';
import 'v2_policy_orchestrator_orchestrated_resource_os_policy_assignment_v1_payload_os_policy_resource_group_resource_repository_yum.dart';
import 'v2_policy_orchestrator_orchestrated_resource_os_policy_assignment_v1_payload_os_policy_resource_group_resource_repository_zypper.dart';

class V2PolicyOrchestratorOrchestratedResourceOsPolicyAssignmentV1PayloadOsPolicyResourceGroupResourceRepository {
  /// Represents a single apt package repository. These will be added to
  /// a repo file that will be managed at
  /// `/etc/apt/sources.list.d/google_osconfig.list`.
  /// Structure is documented below.
  final pulumi.Input<V2PolicyOrchestratorOrchestratedResourceOsPolicyAssignmentV1PayloadOsPolicyResourceGroupResourceRepositoryApt>? apt;
  /// Represents a Goo package repository. These are added to a repo file
  /// that is managed at
  /// `C:/ProgramData/GooGet/repos/google_osconfig.repo`.
  /// Structure is documented below.
  final pulumi.Input<V2PolicyOrchestratorOrchestratedResourceOsPolicyAssignmentV1PayloadOsPolicyResourceGroupResourceRepositoryGoo>? goo;
  /// Represents a single yum package repository. These are added to a
  /// repo file that is managed at
  /// `/etc/yum.repos.d/google_osconfig.repo`.
  /// Structure is documented below.
  final pulumi.Input<V2PolicyOrchestratorOrchestratedResourceOsPolicyAssignmentV1PayloadOsPolicyResourceGroupResourceRepositoryYum>? yum;
  /// Represents a single zypper package repository. These are added to a
  /// repo file that is managed at
  /// `/etc/zypp/repos.d/google_osconfig.repo`.
  /// Structure is documented below.
  final pulumi.Input<V2PolicyOrchestratorOrchestratedResourceOsPolicyAssignmentV1PayloadOsPolicyResourceGroupResourceRepositoryZypper>? zypper;

  /// Creates a new [V2PolicyOrchestratorOrchestratedResourceOsPolicyAssignmentV1PayloadOsPolicyResourceGroupResourceRepository].
  /// [apt] Represents a single apt package repository. These will be added to
  /// [goo] Represents a Goo package repository. These are added to a repo file
  /// [yum] Represents a single yum package repository. These are added to a
  /// [zypper] Represents a single zypper package repository. These are added to a
  const V2PolicyOrchestratorOrchestratedResourceOsPolicyAssignmentV1PayloadOsPolicyResourceGroupResourceRepository({
    this.apt,
    this.goo,
    this.yum,
    this.zypper,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apt': ?pulumi.Input.mapOptionalInputValue<V2PolicyOrchestratorOrchestratedResourceOsPolicyAssignmentV1PayloadOsPolicyResourceGroupResourceRepositoryApt, Map<String, dynamic>>(apt, (value) => value.toMap()),
      'goo': ?pulumi.Input.mapOptionalInputValue<V2PolicyOrchestratorOrchestratedResourceOsPolicyAssignmentV1PayloadOsPolicyResourceGroupResourceRepositoryGoo, Map<String, dynamic>>(goo, (value) => value.toMap()),
      'yum': ?pulumi.Input.mapOptionalInputValue<V2PolicyOrchestratorOrchestratedResourceOsPolicyAssignmentV1PayloadOsPolicyResourceGroupResourceRepositoryYum, Map<String, dynamic>>(yum, (value) => value.toMap()),
      'zypper': ?pulumi.Input.mapOptionalInputValue<V2PolicyOrchestratorOrchestratedResourceOsPolicyAssignmentV1PayloadOsPolicyResourceGroupResourceRepositoryZypper, Map<String, dynamic>>(zypper, (value) => value.toMap()),
    };
  }

  factory V2PolicyOrchestratorOrchestratedResourceOsPolicyAssignmentV1PayloadOsPolicyResourceGroupResourceRepository.fromMap(Map<String, dynamic> map) {
    return V2PolicyOrchestratorOrchestratedResourceOsPolicyAssignmentV1PayloadOsPolicyResourceGroupResourceRepository(
      apt: (() { final guardedValue = map['apt']; if (guardedValue == null) return null; return pulumi.Input.fromValue(V2PolicyOrchestratorOrchestratedResourceOsPolicyAssignmentV1PayloadOsPolicyResourceGroupResourceRepositoryApt.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      goo: (() { final guardedValue = map['goo']; if (guardedValue == null) return null; return pulumi.Input.fromValue(V2PolicyOrchestratorOrchestratedResourceOsPolicyAssignmentV1PayloadOsPolicyResourceGroupResourceRepositoryGoo.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      yum: (() { final guardedValue = map['yum']; if (guardedValue == null) return null; return pulumi.Input.fromValue(V2PolicyOrchestratorOrchestratedResourceOsPolicyAssignmentV1PayloadOsPolicyResourceGroupResourceRepositoryYum.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      zypper: (() { final guardedValue = map['zypper']; if (guardedValue == null) return null; return pulumi.Input.fromValue(V2PolicyOrchestratorOrchestratedResourceOsPolicyAssignmentV1PayloadOsPolicyResourceGroupResourceRepositoryZypper.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
