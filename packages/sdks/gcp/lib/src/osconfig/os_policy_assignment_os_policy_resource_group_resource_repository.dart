// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'os_policy_assignment_os_policy_resource_group_resource_repository_apt.dart';
import 'os_policy_assignment_os_policy_resource_group_resource_repository_goo.dart';
import 'os_policy_assignment_os_policy_resource_group_resource_repository_yum.dart';
import 'os_policy_assignment_os_policy_resource_group_resource_repository_zypper.dart';

class OsPolicyAssignmentOsPolicyResourceGroupResourceRepository {
  /// An Apt Repository. Structure is
  /// documented below.
  final pulumi.Input<OsPolicyAssignmentOsPolicyResourceGroupResourceRepositoryApt>? apt;
  /// A Goo Repository. Structure is
  /// documented below.
  final pulumi.Input<OsPolicyAssignmentOsPolicyResourceGroupResourceRepositoryGoo>? goo;
  /// A Yum Repository. Structure is
  /// documented below.
  final pulumi.Input<OsPolicyAssignmentOsPolicyResourceGroupResourceRepositoryYum>? yum;
  /// A Zypper Repository. Structure is
  /// documented below.
  final pulumi.Input<OsPolicyAssignmentOsPolicyResourceGroupResourceRepositoryZypper>? zypper;

  /// Creates a new [OsPolicyAssignmentOsPolicyResourceGroupResourceRepository].
  /// [apt] An Apt Repository. Structure is
  /// [goo] A Goo Repository. Structure is
  /// [yum] A Yum Repository. Structure is
  /// [zypper] A Zypper Repository. Structure is
  OsPolicyAssignmentOsPolicyResourceGroupResourceRepository({
    this.apt,
    this.goo,
    this.yum,
    this.zypper,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apt': ?pulumi.Input.mapOptionalInputValue<OsPolicyAssignmentOsPolicyResourceGroupResourceRepositoryApt, Map<String, dynamic>>(apt, (value) => value.toMap()),
      'goo': ?pulumi.Input.mapOptionalInputValue<OsPolicyAssignmentOsPolicyResourceGroupResourceRepositoryGoo, Map<String, dynamic>>(goo, (value) => value.toMap()),
      'yum': ?pulumi.Input.mapOptionalInputValue<OsPolicyAssignmentOsPolicyResourceGroupResourceRepositoryYum, Map<String, dynamic>>(yum, (value) => value.toMap()),
      'zypper': ?pulumi.Input.mapOptionalInputValue<OsPolicyAssignmentOsPolicyResourceGroupResourceRepositoryZypper, Map<String, dynamic>>(zypper, (value) => value.toMap()),
    };
  }

  factory OsPolicyAssignmentOsPolicyResourceGroupResourceRepository.fromMap(Map<String, dynamic> map) {
    return OsPolicyAssignmentOsPolicyResourceGroupResourceRepository(
      apt: map['apt'] == null ? null : (OsPolicyAssignmentOsPolicyResourceGroupResourceRepositoryApt.fromMap((map['apt']! as Map).cast<String, dynamic>())).input(),
      goo: map['goo'] == null ? null : (OsPolicyAssignmentOsPolicyResourceGroupResourceRepositoryGoo.fromMap((map['goo']! as Map).cast<String, dynamic>())).input(),
      yum: map['yum'] == null ? null : (OsPolicyAssignmentOsPolicyResourceGroupResourceRepositoryYum.fromMap((map['yum']! as Map).cast<String, dynamic>())).input(),
      zypper: map['zypper'] == null ? null : (OsPolicyAssignmentOsPolicyResourceGroupResourceRepositoryZypper.fromMap((map['zypper']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

