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
  const PackageRepository({
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
      apt: (() { final guardedValue = map['apt']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AptRepository.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      goo: (() { final guardedValue = map['goo']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GooRepository.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      yum: (() { final guardedValue = map['yum']; if (guardedValue == null) return null; return pulumi.Input.fromValue(YumRepository.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      zypper: (() { final guardedValue = map['zypper']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ZypperRepository.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
