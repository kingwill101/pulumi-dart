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
  const OsPolicyAssignmentOsPolicyResourceGroupResourceRepository({
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
      apt: (() { final guardedValue = map['apt']; if (guardedValue == null) return null; return pulumi.Input.fromValue(OsPolicyAssignmentOsPolicyResourceGroupResourceRepositoryApt.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      goo: (() { final guardedValue = map['goo']; if (guardedValue == null) return null; return pulumi.Input.fromValue(OsPolicyAssignmentOsPolicyResourceGroupResourceRepositoryGoo.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      yum: (() { final guardedValue = map['yum']; if (guardedValue == null) return null; return pulumi.Input.fromValue(OsPolicyAssignmentOsPolicyResourceGroupResourceRepositoryYum.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      zypper: (() { final guardedValue = map['zypper']; if (guardedValue == null) return null; return pulumi.Input.fromValue(OsPolicyAssignmentOsPolicyResourceGroupResourceRepositoryZypper.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

