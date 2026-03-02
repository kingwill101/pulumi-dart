// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'guest_policies_package_repository_apt.dart';
import 'guest_policies_package_repository_goo.dart';
import 'guest_policies_package_repository_yum.dart';
import 'guest_policies_package_repository_zypper.dart';

class GuestPoliciesPackageRepository {
  /// An Apt Repository.
  /// Structure is documented below.
  final pulumi.Input<GuestPoliciesPackageRepositoryApt>? apt;
  /// A Goo Repository.
  /// Structure is documented below.
  final pulumi.Input<GuestPoliciesPackageRepositoryGoo>? goo;
  /// A Yum Repository.
  /// Structure is documented below.
  final pulumi.Input<GuestPoliciesPackageRepositoryYum>? yum;
  /// A Zypper Repository.
  /// Structure is documented below.
  final pulumi.Input<GuestPoliciesPackageRepositoryZypper>? zypper;

  /// Creates a new [GuestPoliciesPackageRepository].
  /// [apt] An Apt Repository.
  /// [goo] A Goo Repository.
  /// [yum] A Yum Repository.
  /// [zypper] A Zypper Repository.
  GuestPoliciesPackageRepository({
    this.apt,
    this.goo,
    this.yum,
    this.zypper,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apt': ?pulumi.Input.mapOptionalInputValue<GuestPoliciesPackageRepositoryApt, Map<String, dynamic>>(apt, (value) => value.toMap()),
      'goo': ?pulumi.Input.mapOptionalInputValue<GuestPoliciesPackageRepositoryGoo, Map<String, dynamic>>(goo, (value) => value.toMap()),
      'yum': ?pulumi.Input.mapOptionalInputValue<GuestPoliciesPackageRepositoryYum, Map<String, dynamic>>(yum, (value) => value.toMap()),
      'zypper': ?pulumi.Input.mapOptionalInputValue<GuestPoliciesPackageRepositoryZypper, Map<String, dynamic>>(zypper, (value) => value.toMap()),
    };
  }

  factory GuestPoliciesPackageRepository.fromMap(Map<String, dynamic> map) {
    return GuestPoliciesPackageRepository(
      apt: map['apt'] == null ? null : (GuestPoliciesPackageRepositoryApt.fromMap((map['apt']! as Map).cast<String, dynamic>())).input(),
      goo: map['goo'] == null ? null : (GuestPoliciesPackageRepositoryGoo.fromMap((map['goo']! as Map).cast<String, dynamic>())).input(),
      yum: map['yum'] == null ? null : (GuestPoliciesPackageRepositoryYum.fromMap((map['yum']! as Map).cast<String, dynamic>())).input(),
      zypper: map['zypper'] == null ? null : (GuestPoliciesPackageRepositoryZypper.fromMap((map['zypper']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

