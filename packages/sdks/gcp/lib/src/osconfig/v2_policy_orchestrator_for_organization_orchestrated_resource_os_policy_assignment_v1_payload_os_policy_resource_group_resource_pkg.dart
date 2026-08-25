// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'v2_policy_orchestrator_for_organization_orchestrated_resource_os_policy_assignment_v1_payload_os_policy_resource_group_resource_pkg_apt.dart';
import 'v2_policy_orchestrator_for_organization_orchestrated_resource_os_policy_assignment_v1_payload_os_policy_resource_group_resource_pkg_deb.dart';
import 'v2_policy_orchestrator_for_organization_orchestrated_resource_os_policy_assignment_v1_payload_os_policy_resource_group_resource_pkg_googet.dart';
import 'v2_policy_orchestrator_for_organization_orchestrated_resource_os_policy_assignment_v1_payload_os_policy_resource_group_resource_pkg_msi.dart';
import 'v2_policy_orchestrator_for_organization_orchestrated_resource_os_policy_assignment_v1_payload_os_policy_resource_group_resource_pkg_rpm.dart';
import 'v2_policy_orchestrator_for_organization_orchestrated_resource_os_policy_assignment_v1_payload_os_policy_resource_group_resource_pkg_yum.dart';
import 'v2_policy_orchestrator_for_organization_orchestrated_resource_os_policy_assignment_v1_payload_os_policy_resource_group_resource_pkg_zypper.dart';

class V2PolicyOrchestratorForOrganizationOrchestratedResourceOsPolicyAssignmentV1PayloadOsPolicyResourceGroupResourcePkg {
  /// A package managed by APT.
  /// - install: `apt-get update && apt-get -y install [name]`
  /// - remove: `apt-get -y remove [name]`
  /// Structure is documented below.
  final pulumi.Input<V2PolicyOrchestratorForOrganizationOrchestratedResourceOsPolicyAssignmentV1PayloadOsPolicyResourceGroupResourcePkgApt?>? apt;
  /// A deb package file. dpkg packages only support INSTALLED state.
  /// Structure is documented below.
  final pulumi.Input<V2PolicyOrchestratorForOrganizationOrchestratedResourceOsPolicyAssignmentV1PayloadOsPolicyResourceGroupResourcePkgDeb?>? deb;
  /// Required. The desired state the agent should maintain for this package.
  /// Possible values:
  /// DESIRED_STATE_UNSPECIFIED
  /// INSTALLED
  /// REMOVED
  final pulumi.Input<String> desiredState;
  /// A package managed by GooGet.
  /// - install: `googet -noconfirm install package`
  /// - remove: `googet -noconfirm remove package`
  /// Structure is documented below.
  final pulumi.Input<V2PolicyOrchestratorForOrganizationOrchestratedResourceOsPolicyAssignmentV1PayloadOsPolicyResourceGroupResourcePkgGooget?>? googet;
  /// An MSI package. MSI packages only support INSTALLED state.
  /// Structure is documented below.
  final pulumi.Input<V2PolicyOrchestratorForOrganizationOrchestratedResourceOsPolicyAssignmentV1PayloadOsPolicyResourceGroupResourcePkgMsi?>? msi;
  /// An RPM package file. RPM packages only support INSTALLED state.
  /// Structure is documented below.
  final pulumi.Input<V2PolicyOrchestratorForOrganizationOrchestratedResourceOsPolicyAssignmentV1PayloadOsPolicyResourceGroupResourcePkgRpm?>? rpm;
  /// A package managed by YUM.
  /// - install: `yum -y install package`
  /// - remove: `yum -y remove package`
  /// Structure is documented below.
  final pulumi.Input<V2PolicyOrchestratorForOrganizationOrchestratedResourceOsPolicyAssignmentV1PayloadOsPolicyResourceGroupResourcePkgYum?>? yum;
  /// A package managed by Zypper.
  /// - install: `zypper -y install package`
  /// - remove: `zypper -y rm package`
  /// Structure is documented below.
  final pulumi.Input<V2PolicyOrchestratorForOrganizationOrchestratedResourceOsPolicyAssignmentV1PayloadOsPolicyResourceGroupResourcePkgZypper?>? zypper;

  /// Creates a new [V2PolicyOrchestratorForOrganizationOrchestratedResourceOsPolicyAssignmentV1PayloadOsPolicyResourceGroupResourcePkg].
  /// [apt] A package managed by APT.
  /// [deb] A deb package file. dpkg packages only support INSTALLED state.
  /// [desiredState] Required. The desired state the agent should maintain for this package.
  /// [googet] A package managed by GooGet.
  /// [msi] An MSI package. MSI packages only support INSTALLED state.
  /// [rpm] An RPM package file. RPM packages only support INSTALLED state.
  /// [yum] A package managed by YUM.
  /// [zypper] A package managed by Zypper.
  const V2PolicyOrchestratorForOrganizationOrchestratedResourceOsPolicyAssignmentV1PayloadOsPolicyResourceGroupResourcePkg({
    this.apt,
    this.deb,
    required this.desiredState,
    this.googet,
    this.msi,
    this.rpm,
    this.yum,
    this.zypper,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apt': ?pulumi.Input.mapOptionalInputValue<V2PolicyOrchestratorForOrganizationOrchestratedResourceOsPolicyAssignmentV1PayloadOsPolicyResourceGroupResourcePkgApt, Map<String, dynamic>>(apt, (value) => value.toMap()),
      'deb': ?pulumi.Input.mapOptionalInputValue<V2PolicyOrchestratorForOrganizationOrchestratedResourceOsPolicyAssignmentV1PayloadOsPolicyResourceGroupResourcePkgDeb, Map<String, dynamic>>(deb, (value) => value.toMap()),
      'desiredState': desiredState,
      'googet': ?pulumi.Input.mapOptionalInputValue<V2PolicyOrchestratorForOrganizationOrchestratedResourceOsPolicyAssignmentV1PayloadOsPolicyResourceGroupResourcePkgGooget, Map<String, dynamic>>(googet, (value) => value.toMap()),
      'msi': ?pulumi.Input.mapOptionalInputValue<V2PolicyOrchestratorForOrganizationOrchestratedResourceOsPolicyAssignmentV1PayloadOsPolicyResourceGroupResourcePkgMsi, Map<String, dynamic>>(msi, (value) => value.toMap()),
      'rpm': ?pulumi.Input.mapOptionalInputValue<V2PolicyOrchestratorForOrganizationOrchestratedResourceOsPolicyAssignmentV1PayloadOsPolicyResourceGroupResourcePkgRpm, Map<String, dynamic>>(rpm, (value) => value.toMap()),
      'yum': ?pulumi.Input.mapOptionalInputValue<V2PolicyOrchestratorForOrganizationOrchestratedResourceOsPolicyAssignmentV1PayloadOsPolicyResourceGroupResourcePkgYum, Map<String, dynamic>>(yum, (value) => value.toMap()),
      'zypper': ?pulumi.Input.mapOptionalInputValue<V2PolicyOrchestratorForOrganizationOrchestratedResourceOsPolicyAssignmentV1PayloadOsPolicyResourceGroupResourcePkgZypper, Map<String, dynamic>>(zypper, (value) => value.toMap()),
    };
  }

  factory V2PolicyOrchestratorForOrganizationOrchestratedResourceOsPolicyAssignmentV1PayloadOsPolicyResourceGroupResourcePkg.fromMap(Map<String, dynamic> map) {
    return V2PolicyOrchestratorForOrganizationOrchestratedResourceOsPolicyAssignmentV1PayloadOsPolicyResourceGroupResourcePkg(
      apt: (() { final guardedValue = map['apt']; if (guardedValue == null) return null; return pulumi.Input.fromValue(V2PolicyOrchestratorForOrganizationOrchestratedResourceOsPolicyAssignmentV1PayloadOsPolicyResourceGroupResourcePkgApt.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      deb: (() { final guardedValue = map['deb']; if (guardedValue == null) return null; return pulumi.Input.fromValue(V2PolicyOrchestratorForOrganizationOrchestratedResourceOsPolicyAssignmentV1PayloadOsPolicyResourceGroupResourcePkgDeb.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      desiredState: pulumi.Input.fromValue(map['desiredState'] as String),
      googet: (() { final guardedValue = map['googet']; if (guardedValue == null) return null; return pulumi.Input.fromValue(V2PolicyOrchestratorForOrganizationOrchestratedResourceOsPolicyAssignmentV1PayloadOsPolicyResourceGroupResourcePkgGooget.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      msi: (() { final guardedValue = map['msi']; if (guardedValue == null) return null; return pulumi.Input.fromValue(V2PolicyOrchestratorForOrganizationOrchestratedResourceOsPolicyAssignmentV1PayloadOsPolicyResourceGroupResourcePkgMsi.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      rpm: (() { final guardedValue = map['rpm']; if (guardedValue == null) return null; return pulumi.Input.fromValue(V2PolicyOrchestratorForOrganizationOrchestratedResourceOsPolicyAssignmentV1PayloadOsPolicyResourceGroupResourcePkgRpm.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      yum: (() { final guardedValue = map['yum']; if (guardedValue == null) return null; return pulumi.Input.fromValue(V2PolicyOrchestratorForOrganizationOrchestratedResourceOsPolicyAssignmentV1PayloadOsPolicyResourceGroupResourcePkgYum.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      zypper: (() { final guardedValue = map['zypper']; if (guardedValue == null) return null; return pulumi.Input.fromValue(V2PolicyOrchestratorForOrganizationOrchestratedResourceOsPolicyAssignmentV1PayloadOsPolicyResourceGroupResourcePkgZypper.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
