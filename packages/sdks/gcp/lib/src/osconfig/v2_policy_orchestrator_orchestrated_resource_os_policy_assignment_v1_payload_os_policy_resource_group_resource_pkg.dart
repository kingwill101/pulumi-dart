// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'v2_policy_orchestrator_orchestrated_resource_os_policy_assignment_v1_payload_os_policy_resource_group_resource_pkg_apt.dart';
import 'v2_policy_orchestrator_orchestrated_resource_os_policy_assignment_v1_payload_os_policy_resource_group_resource_pkg_deb.dart';
import 'v2_policy_orchestrator_orchestrated_resource_os_policy_assignment_v1_payload_os_policy_resource_group_resource_pkg_googet.dart';
import 'v2_policy_orchestrator_orchestrated_resource_os_policy_assignment_v1_payload_os_policy_resource_group_resource_pkg_msi.dart';
import 'v2_policy_orchestrator_orchestrated_resource_os_policy_assignment_v1_payload_os_policy_resource_group_resource_pkg_rpm.dart';
import 'v2_policy_orchestrator_orchestrated_resource_os_policy_assignment_v1_payload_os_policy_resource_group_resource_pkg_yum.dart';
import 'v2_policy_orchestrator_orchestrated_resource_os_policy_assignment_v1_payload_os_policy_resource_group_resource_pkg_zypper.dart';

class V2PolicyOrchestratorOrchestratedResourceOsPolicyAssignmentV1PayloadOsPolicyResourceGroupResourcePkg {
  /// A package managed by APT.
  /// - install: `apt-get update && apt-get -y install [name]`
  /// - remove: `apt-get -y remove [name]`
  /// Structure is documented below.
  final pulumi.Input<V2PolicyOrchestratorOrchestratedResourceOsPolicyAssignmentV1PayloadOsPolicyResourceGroupResourcePkgApt>? apt;
  /// A deb package file. dpkg packages only support INSTALLED state.
  /// Structure is documented below.
  final pulumi.Input<V2PolicyOrchestratorOrchestratedResourceOsPolicyAssignmentV1PayloadOsPolicyResourceGroupResourcePkgDeb>? deb;
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
  final pulumi.Input<V2PolicyOrchestratorOrchestratedResourceOsPolicyAssignmentV1PayloadOsPolicyResourceGroupResourcePkgGooget>? googet;
  /// An MSI package. MSI packages only support INSTALLED state.
  /// Structure is documented below.
  final pulumi.Input<V2PolicyOrchestratorOrchestratedResourceOsPolicyAssignmentV1PayloadOsPolicyResourceGroupResourcePkgMsi>? msi;
  /// An RPM package file. RPM packages only support INSTALLED state.
  /// Structure is documented below.
  final pulumi.Input<V2PolicyOrchestratorOrchestratedResourceOsPolicyAssignmentV1PayloadOsPolicyResourceGroupResourcePkgRpm>? rpm;
  /// A package managed by YUM.
  /// - install: `yum -y install package`
  /// - remove: `yum -y remove package`
  /// Structure is documented below.
  final pulumi.Input<V2PolicyOrchestratorOrchestratedResourceOsPolicyAssignmentV1PayloadOsPolicyResourceGroupResourcePkgYum>? yum;
  /// A package managed by Zypper.
  /// - install: `zypper -y install package`
  /// - remove: `zypper -y rm package`
  /// Structure is documented below.
  final pulumi.Input<V2PolicyOrchestratorOrchestratedResourceOsPolicyAssignmentV1PayloadOsPolicyResourceGroupResourcePkgZypper>? zypper;

  /// Creates a new [V2PolicyOrchestratorOrchestratedResourceOsPolicyAssignmentV1PayloadOsPolicyResourceGroupResourcePkg].
  /// [apt] A package managed by APT.
  /// [deb] A deb package file. dpkg packages only support INSTALLED state.
  /// [desiredState] Required. The desired state the agent should maintain for this package.
  /// [googet] A package managed by GooGet.
  /// [msi] An MSI package. MSI packages only support INSTALLED state.
  /// [rpm] An RPM package file. RPM packages only support INSTALLED state.
  /// [yum] A package managed by YUM.
  /// [zypper] A package managed by Zypper.
  V2PolicyOrchestratorOrchestratedResourceOsPolicyAssignmentV1PayloadOsPolicyResourceGroupResourcePkg({
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
      'apt': ?pulumi.Input.mapOptionalInputValue<V2PolicyOrchestratorOrchestratedResourceOsPolicyAssignmentV1PayloadOsPolicyResourceGroupResourcePkgApt, Map<String, dynamic>>(apt, (value) => value.toMap()),
      'deb': ?pulumi.Input.mapOptionalInputValue<V2PolicyOrchestratorOrchestratedResourceOsPolicyAssignmentV1PayloadOsPolicyResourceGroupResourcePkgDeb, Map<String, dynamic>>(deb, (value) => value.toMap()),
      'desiredState': desiredState,
      'googet': ?pulumi.Input.mapOptionalInputValue<V2PolicyOrchestratorOrchestratedResourceOsPolicyAssignmentV1PayloadOsPolicyResourceGroupResourcePkgGooget, Map<String, dynamic>>(googet, (value) => value.toMap()),
      'msi': ?pulumi.Input.mapOptionalInputValue<V2PolicyOrchestratorOrchestratedResourceOsPolicyAssignmentV1PayloadOsPolicyResourceGroupResourcePkgMsi, Map<String, dynamic>>(msi, (value) => value.toMap()),
      'rpm': ?pulumi.Input.mapOptionalInputValue<V2PolicyOrchestratorOrchestratedResourceOsPolicyAssignmentV1PayloadOsPolicyResourceGroupResourcePkgRpm, Map<String, dynamic>>(rpm, (value) => value.toMap()),
      'yum': ?pulumi.Input.mapOptionalInputValue<V2PolicyOrchestratorOrchestratedResourceOsPolicyAssignmentV1PayloadOsPolicyResourceGroupResourcePkgYum, Map<String, dynamic>>(yum, (value) => value.toMap()),
      'zypper': ?pulumi.Input.mapOptionalInputValue<V2PolicyOrchestratorOrchestratedResourceOsPolicyAssignmentV1PayloadOsPolicyResourceGroupResourcePkgZypper, Map<String, dynamic>>(zypper, (value) => value.toMap()),
    };
  }

  factory V2PolicyOrchestratorOrchestratedResourceOsPolicyAssignmentV1PayloadOsPolicyResourceGroupResourcePkg.fromMap(Map<String, dynamic> map) {
    return V2PolicyOrchestratorOrchestratedResourceOsPolicyAssignmentV1PayloadOsPolicyResourceGroupResourcePkg(
      apt: map['apt'] == null ? null : (V2PolicyOrchestratorOrchestratedResourceOsPolicyAssignmentV1PayloadOsPolicyResourceGroupResourcePkgApt.fromMap((map['apt'] as Map).cast<String, dynamic>())).input(),
      deb: map['deb'] == null ? null : (V2PolicyOrchestratorOrchestratedResourceOsPolicyAssignmentV1PayloadOsPolicyResourceGroupResourcePkgDeb.fromMap((map['deb'] as Map).cast<String, dynamic>())).input(),
      desiredState: (map['desiredState'] as String).input(),
      googet: map['googet'] == null ? null : (V2PolicyOrchestratorOrchestratedResourceOsPolicyAssignmentV1PayloadOsPolicyResourceGroupResourcePkgGooget.fromMap((map['googet'] as Map).cast<String, dynamic>())).input(),
      msi: map['msi'] == null ? null : (V2PolicyOrchestratorOrchestratedResourceOsPolicyAssignmentV1PayloadOsPolicyResourceGroupResourcePkgMsi.fromMap((map['msi'] as Map).cast<String, dynamic>())).input(),
      rpm: map['rpm'] == null ? null : (V2PolicyOrchestratorOrchestratedResourceOsPolicyAssignmentV1PayloadOsPolicyResourceGroupResourcePkgRpm.fromMap((map['rpm'] as Map).cast<String, dynamic>())).input(),
      yum: map['yum'] == null ? null : (V2PolicyOrchestratorOrchestratedResourceOsPolicyAssignmentV1PayloadOsPolicyResourceGroupResourcePkgYum.fromMap((map['yum'] as Map).cast<String, dynamic>())).input(),
      zypper: map['zypper'] == null ? null : (V2PolicyOrchestratorOrchestratedResourceOsPolicyAssignmentV1PayloadOsPolicyResourceGroupResourcePkgZypper.fromMap((map['zypper'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

