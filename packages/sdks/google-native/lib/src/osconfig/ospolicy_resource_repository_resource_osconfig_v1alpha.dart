// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ospolicy_resource_repository_resource_apt_repository_osconfig_v1alpha.dart';
import 'ospolicy_resource_repository_resource_goo_repository_osconfig_v1alpha.dart';
import 'ospolicy_resource_repository_resource_yum_repository_osconfig_v1alpha.dart';
import 'ospolicy_resource_repository_resource_zypper_repository_osconfig_v1alpha.dart';

/// A resource that manages a package repository.
class OSPolicyResourceRepositoryResourceOsconfigV1alpha {
  /// An Apt Repository.
  final pulumi.Input<OSPolicyResourceRepositoryResourceAptRepositoryOsconfigV1alpha>? apt;
  /// A Goo Repository.
  final pulumi.Input<OSPolicyResourceRepositoryResourceGooRepositoryOsconfigV1alpha>? goo;
  /// A Yum Repository.
  final pulumi.Input<OSPolicyResourceRepositoryResourceYumRepositoryOsconfigV1alpha>? yum;
  /// A Zypper Repository.
  final pulumi.Input<OSPolicyResourceRepositoryResourceZypperRepositoryOsconfigV1alpha>? zypper;

  /// Creates a new [OSPolicyResourceRepositoryResourceOsconfigV1alpha].
  /// [apt] An Apt Repository.
  /// [goo] A Goo Repository.
  /// [yum] A Yum Repository.
  /// [zypper] A Zypper Repository.
  OSPolicyResourceRepositoryResourceOsconfigV1alpha({
    this.apt,
    this.goo,
    this.yum,
    this.zypper,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apt': ?pulumi.Input.mapOptionalInputValue<OSPolicyResourceRepositoryResourceAptRepositoryOsconfigV1alpha, Map<String, dynamic>>(apt, (value) => value.toMap()),
      'goo': ?pulumi.Input.mapOptionalInputValue<OSPolicyResourceRepositoryResourceGooRepositoryOsconfigV1alpha, Map<String, dynamic>>(goo, (value) => value.toMap()),
      'yum': ?pulumi.Input.mapOptionalInputValue<OSPolicyResourceRepositoryResourceYumRepositoryOsconfigV1alpha, Map<String, dynamic>>(yum, (value) => value.toMap()),
      'zypper': ?pulumi.Input.mapOptionalInputValue<OSPolicyResourceRepositoryResourceZypperRepositoryOsconfigV1alpha, Map<String, dynamic>>(zypper, (value) => value.toMap()),
    };
  }

  factory OSPolicyResourceRepositoryResourceOsconfigV1alpha.fromMap(Map<String, dynamic> map) {
    return OSPolicyResourceRepositoryResourceOsconfigV1alpha(
      apt: (() { final guardedValue = map['apt']; if (guardedValue == null) return null; return pulumi.Input.fromValue(OSPolicyResourceRepositoryResourceAptRepositoryOsconfigV1alpha.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      goo: (() { final guardedValue = map['goo']; if (guardedValue == null) return null; return pulumi.Input.fromValue(OSPolicyResourceRepositoryResourceGooRepositoryOsconfigV1alpha.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      yum: (() { final guardedValue = map['yum']; if (guardedValue == null) return null; return pulumi.Input.fromValue(OSPolicyResourceRepositoryResourceYumRepositoryOsconfigV1alpha.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      zypper: (() { final guardedValue = map['zypper']; if (guardedValue == null) return null; return pulumi.Input.fromValue(OSPolicyResourceRepositoryResourceZypperRepositoryOsconfigV1alpha.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

