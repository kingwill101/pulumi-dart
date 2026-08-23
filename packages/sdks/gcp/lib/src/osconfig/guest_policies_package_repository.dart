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
  const GuestPoliciesPackageRepository({
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
      apt: (() { final guardedValue = map['apt']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GuestPoliciesPackageRepositoryApt.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      goo: (() { final guardedValue = map['goo']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GuestPoliciesPackageRepositoryGoo.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      yum: (() { final guardedValue = map['yum']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GuestPoliciesPackageRepositoryYum.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      zypper: (() { final guardedValue = map['zypper']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GuestPoliciesPackageRepositoryZypper.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
