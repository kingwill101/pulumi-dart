// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'os_policy_assignment_os_policy_resource_group_resource_pkg_apt.dart';
import 'os_policy_assignment_os_policy_resource_group_resource_pkg_deb.dart';
import 'os_policy_assignment_os_policy_resource_group_resource_pkg_googet.dart';
import 'os_policy_assignment_os_policy_resource_group_resource_pkg_msi.dart';
import 'os_policy_assignment_os_policy_resource_group_resource_pkg_rpm.dart';
import 'os_policy_assignment_os_policy_resource_group_resource_pkg_yum.dart';
import 'os_policy_assignment_os_policy_resource_group_resource_pkg_zypper.dart';

class OsPolicyAssignmentOsPolicyResourceGroupResourcePkg {
  /// A package managed by Apt. Structure is
  /// documented below.
  final pulumi.Input<OsPolicyAssignmentOsPolicyResourceGroupResourcePkgApt>? apt;
  /// A deb package file. Structure is
  /// documented below.
  final pulumi.Input<OsPolicyAssignmentOsPolicyResourceGroupResourcePkgDeb>? deb;
  /// The desired state the agent should maintain for
  /// this package. Possible values are: `DESIRED_STATE_UNSPECIFIED`, `INSTALLED`,
  /// `REMOVED`.
  final pulumi.Input<String> desiredState;
  /// A package managed by GooGet. Structure is
  /// documented below.
  final pulumi.Input<OsPolicyAssignmentOsPolicyResourceGroupResourcePkgGooget>? googet;
  /// An MSI package. Structure is
  /// documented below.
  final pulumi.Input<OsPolicyAssignmentOsPolicyResourceGroupResourcePkgMsi>? msi;
  /// An rpm package file. Structure is
  /// documented below.
  final pulumi.Input<OsPolicyAssignmentOsPolicyResourceGroupResourcePkgRpm>? rpm;
  /// A package managed by YUM. Structure is
  /// documented below.
  final pulumi.Input<OsPolicyAssignmentOsPolicyResourceGroupResourcePkgYum>? yum;
  /// A package managed by Zypper. Structure is
  /// documented below.
  final pulumi.Input<OsPolicyAssignmentOsPolicyResourceGroupResourcePkgZypper>? zypper;

  /// Creates a new [OsPolicyAssignmentOsPolicyResourceGroupResourcePkg].
  /// [apt] A package managed by Apt. Structure is
  /// [deb] A deb package file. Structure is
  /// [desiredState] The desired state the agent should maintain for
  /// [googet] A package managed by GooGet. Structure is
  /// [msi] An MSI package. Structure is
  /// [rpm] An rpm package file. Structure is
  /// [yum] A package managed by YUM. Structure is
  /// [zypper] A package managed by Zypper. Structure is
  OsPolicyAssignmentOsPolicyResourceGroupResourcePkg({
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
      'apt': ?pulumi.Input.mapOptionalInputValue<OsPolicyAssignmentOsPolicyResourceGroupResourcePkgApt, Map<String, dynamic>>(apt, (value) => value.toMap()),
      'deb': ?pulumi.Input.mapOptionalInputValue<OsPolicyAssignmentOsPolicyResourceGroupResourcePkgDeb, Map<String, dynamic>>(deb, (value) => value.toMap()),
      'desiredState': desiredState,
      'googet': ?pulumi.Input.mapOptionalInputValue<OsPolicyAssignmentOsPolicyResourceGroupResourcePkgGooget, Map<String, dynamic>>(googet, (value) => value.toMap()),
      'msi': ?pulumi.Input.mapOptionalInputValue<OsPolicyAssignmentOsPolicyResourceGroupResourcePkgMsi, Map<String, dynamic>>(msi, (value) => value.toMap()),
      'rpm': ?pulumi.Input.mapOptionalInputValue<OsPolicyAssignmentOsPolicyResourceGroupResourcePkgRpm, Map<String, dynamic>>(rpm, (value) => value.toMap()),
      'yum': ?pulumi.Input.mapOptionalInputValue<OsPolicyAssignmentOsPolicyResourceGroupResourcePkgYum, Map<String, dynamic>>(yum, (value) => value.toMap()),
      'zypper': ?pulumi.Input.mapOptionalInputValue<OsPolicyAssignmentOsPolicyResourceGroupResourcePkgZypper, Map<String, dynamic>>(zypper, (value) => value.toMap()),
    };
  }

  factory OsPolicyAssignmentOsPolicyResourceGroupResourcePkg.fromMap(Map<String, dynamic> map) {
    return OsPolicyAssignmentOsPolicyResourceGroupResourcePkg(
      apt: map['apt'] == null ? null : (OsPolicyAssignmentOsPolicyResourceGroupResourcePkgApt.fromMap((map['apt']! as Map).cast<String, dynamic>())).input(),
      deb: map['deb'] == null ? null : (OsPolicyAssignmentOsPolicyResourceGroupResourcePkgDeb.fromMap((map['deb']! as Map).cast<String, dynamic>())).input(),
      desiredState: (map['desiredState'] as String).input(),
      googet: map['googet'] == null ? null : (OsPolicyAssignmentOsPolicyResourceGroupResourcePkgGooget.fromMap((map['googet']! as Map).cast<String, dynamic>())).input(),
      msi: map['msi'] == null ? null : (OsPolicyAssignmentOsPolicyResourceGroupResourcePkgMsi.fromMap((map['msi']! as Map).cast<String, dynamic>())).input(),
      rpm: map['rpm'] == null ? null : (OsPolicyAssignmentOsPolicyResourceGroupResourcePkgRpm.fromMap((map['rpm']! as Map).cast<String, dynamic>())).input(),
      yum: map['yum'] == null ? null : (OsPolicyAssignmentOsPolicyResourceGroupResourcePkgYum.fromMap((map['yum']! as Map).cast<String, dynamic>())).input(),
      zypper: map['zypper'] == null ? null : (OsPolicyAssignmentOsPolicyResourceGroupResourcePkgZypper.fromMap((map['zypper']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

