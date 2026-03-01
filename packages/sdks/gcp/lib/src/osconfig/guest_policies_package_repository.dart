// ignore_for_file: unused_element, unnecessary_cast

import 'guest_policies_package_repository_apt.dart';
import 'guest_policies_package_repository_goo.dart';
import 'guest_policies_package_repository_yum.dart';
import 'guest_policies_package_repository_zypper.dart';

class GuestPoliciesPackageRepository {
  /// An Apt Repository.
  /// Structure is documented below.
  final GuestPoliciesPackageRepositoryApt? apt;
  /// A Goo Repository.
  /// Structure is documented below.
  final GuestPoliciesPackageRepositoryGoo? goo;
  /// A Yum Repository.
  /// Structure is documented below.
  final GuestPoliciesPackageRepositoryYum? yum;
  /// A Zypper Repository.
  /// Structure is documented below.
  final GuestPoliciesPackageRepositoryZypper? zypper;

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
      'apt': ?apt == null ? null : apt!.toMap(),
      'goo': ?goo == null ? null : goo!.toMap(),
      'yum': ?yum == null ? null : yum!.toMap(),
      'zypper': ?zypper == null ? null : zypper!.toMap(),
    };
  }

  factory GuestPoliciesPackageRepository.fromMap(Map<String, dynamic> map) {
    return GuestPoliciesPackageRepository(
      apt: map['apt'] == null ? null : GuestPoliciesPackageRepositoryApt.fromMap((map['apt'] as Map).cast<String, dynamic>()),
      goo: map['goo'] == null ? null : GuestPoliciesPackageRepositoryGoo.fromMap((map['goo'] as Map).cast<String, dynamic>()),
      yum: map['yum'] == null ? null : GuestPoliciesPackageRepositoryYum.fromMap((map['yum'] as Map).cast<String, dynamic>()),
      zypper: map['zypper'] == null ? null : GuestPoliciesPackageRepositoryZypper.fromMap((map['zypper'] as Map).cast<String, dynamic>()),
    );
  }
}

