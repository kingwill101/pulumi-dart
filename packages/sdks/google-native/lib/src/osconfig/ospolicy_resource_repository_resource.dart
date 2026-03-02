// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ospolicy_resource_repository_resource_apt_repository.dart';
import 'ospolicy_resource_repository_resource_goo_repository.dart';
import 'ospolicy_resource_repository_resource_yum_repository.dart';
import 'ospolicy_resource_repository_resource_zypper_repository.dart';

/// A resource that manages a package repository.
class OSPolicyResourceRepositoryResource {
  /// An Apt Repository.
  final pulumi.Input<OSPolicyResourceRepositoryResourceAptRepository>? apt;
  /// A Goo Repository.
  final pulumi.Input<OSPolicyResourceRepositoryResourceGooRepository>? goo;
  /// A Yum Repository.
  final pulumi.Input<OSPolicyResourceRepositoryResourceYumRepository>? yum;
  /// A Zypper Repository.
  final pulumi.Input<OSPolicyResourceRepositoryResourceZypperRepository>? zypper;

  /// Creates a new [OSPolicyResourceRepositoryResource].
  /// [apt] An Apt Repository.
  /// [goo] A Goo Repository.
  /// [yum] A Yum Repository.
  /// [zypper] A Zypper Repository.
  OSPolicyResourceRepositoryResource({
    this.apt,
    this.goo,
    this.yum,
    this.zypper,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apt': ?pulumi.Input.mapOptionalInputValue<OSPolicyResourceRepositoryResourceAptRepository, Map<String, dynamic>>(apt, (value) => value.toMap()),
      'goo': ?pulumi.Input.mapOptionalInputValue<OSPolicyResourceRepositoryResourceGooRepository, Map<String, dynamic>>(goo, (value) => value.toMap()),
      'yum': ?pulumi.Input.mapOptionalInputValue<OSPolicyResourceRepositoryResourceYumRepository, Map<String, dynamic>>(yum, (value) => value.toMap()),
      'zypper': ?pulumi.Input.mapOptionalInputValue<OSPolicyResourceRepositoryResourceZypperRepository, Map<String, dynamic>>(zypper, (value) => value.toMap()),
    };
  }

  factory OSPolicyResourceRepositoryResource.fromMap(Map<String, dynamic> map) {
    return OSPolicyResourceRepositoryResource(
      apt: map['apt'] == null ? null : (OSPolicyResourceRepositoryResourceAptRepository.fromMap((map['apt']! as Map).cast<String, dynamic>())).input(),
      goo: map['goo'] == null ? null : (OSPolicyResourceRepositoryResourceGooRepository.fromMap((map['goo']! as Map).cast<String, dynamic>())).input(),
      yum: map['yum'] == null ? null : (OSPolicyResourceRepositoryResourceYumRepository.fromMap((map['yum']! as Map).cast<String, dynamic>())).input(),
      zypper: map['zypper'] == null ? null : (OSPolicyResourceRepositoryResourceZypperRepository.fromMap((map['zypper']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

