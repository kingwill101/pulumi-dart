// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'apt_repository.dart';
import 'goo_repository.dart';
import 'yum_repository.dart';
import 'zypper_repository.dart';

/// A package repository.
class PackageRepository {
  /// An Apt Repository.
  final pulumi.Input<AptRepository>? apt;
  /// A Goo Repository.
  final pulumi.Input<GooRepository>? goo;
  /// A Yum Repository.
  final pulumi.Input<YumRepository>? yum;
  /// A Zypper Repository.
  final pulumi.Input<ZypperRepository>? zypper;

  /// Creates a new [PackageRepository].
  /// [apt] An Apt Repository.
  /// [goo] A Goo Repository.
  /// [yum] A Yum Repository.
  /// [zypper] A Zypper Repository.
  PackageRepository({
    this.apt,
    this.goo,
    this.yum,
    this.zypper,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apt': ?pulumi.Input.mapOptionalInputValue<AptRepository, Map<String, dynamic>>(apt, (value) => value.toMap()),
      'goo': ?pulumi.Input.mapOptionalInputValue<GooRepository, Map<String, dynamic>>(goo, (value) => value.toMap()),
      'yum': ?pulumi.Input.mapOptionalInputValue<YumRepository, Map<String, dynamic>>(yum, (value) => value.toMap()),
      'zypper': ?pulumi.Input.mapOptionalInputValue<ZypperRepository, Map<String, dynamic>>(zypper, (value) => value.toMap()),
    };
  }

  factory PackageRepository.fromMap(Map<String, dynamic> map) {
    return PackageRepository(
      apt: map['apt'] == null ? null : (AptRepository.fromMap((map['apt']! as Map).cast<String, dynamic>())).input(),
      goo: map['goo'] == null ? null : (GooRepository.fromMap((map['goo']! as Map).cast<String, dynamic>())).input(),
      yum: map['yum'] == null ? null : (YumRepository.fromMap((map['yum']! as Map).cast<String, dynamic>())).input(),
      zypper: map['zypper'] == null ? null : (ZypperRepository.fromMap((map['zypper']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

