// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ospolicy_resource_repository_resource_apt_repository_response_osconfig_v1alpha.dart';
import 'ospolicy_resource_repository_resource_goo_repository_response_osconfig_v1alpha.dart';
import 'ospolicy_resource_repository_resource_yum_repository_response_osconfig_v1alpha.dart';
import 'ospolicy_resource_repository_resource_zypper_repository_response_osconfig_v1alpha.dart';

/// A resource that manages a package repository.
class OSPolicyResourceRepositoryResourceResponseOsconfigV1alpha {
  /// An Apt Repository.
  final pulumi.Input<OSPolicyResourceRepositoryResourceAptRepositoryResponseOsconfigV1alpha> apt;
  /// A Goo Repository.
  final pulumi.Input<OSPolicyResourceRepositoryResourceGooRepositoryResponseOsconfigV1alpha> goo;
  /// A Yum Repository.
  final pulumi.Input<OSPolicyResourceRepositoryResourceYumRepositoryResponseOsconfigV1alpha> yum;
  /// A Zypper Repository.
  final pulumi.Input<OSPolicyResourceRepositoryResourceZypperRepositoryResponseOsconfigV1alpha> zypper;

  /// Creates a new [OSPolicyResourceRepositoryResourceResponseOsconfigV1alpha].
  /// [apt] An Apt Repository.
  /// [goo] A Goo Repository.
  /// [yum] A Yum Repository.
  /// [zypper] A Zypper Repository.
  const OSPolicyResourceRepositoryResourceResponseOsconfigV1alpha({
    required this.apt,
    required this.goo,
    required this.yum,
    required this.zypper,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apt': pulumi.Input.mapInputValue<OSPolicyResourceRepositoryResourceAptRepositoryResponseOsconfigV1alpha, Map<String, dynamic>>(apt, (value) => value.toMap()),
      'goo': pulumi.Input.mapInputValue<OSPolicyResourceRepositoryResourceGooRepositoryResponseOsconfigV1alpha, Map<String, dynamic>>(goo, (value) => value.toMap()),
      'yum': pulumi.Input.mapInputValue<OSPolicyResourceRepositoryResourceYumRepositoryResponseOsconfigV1alpha, Map<String, dynamic>>(yum, (value) => value.toMap()),
      'zypper': pulumi.Input.mapInputValue<OSPolicyResourceRepositoryResourceZypperRepositoryResponseOsconfigV1alpha, Map<String, dynamic>>(zypper, (value) => value.toMap()),
    };
  }

  factory OSPolicyResourceRepositoryResourceResponseOsconfigV1alpha.fromMap(Map<String, dynamic> map) {
    return OSPolicyResourceRepositoryResourceResponseOsconfigV1alpha(
      apt: pulumi.Input.fromValue(OSPolicyResourceRepositoryResourceAptRepositoryResponseOsconfigV1alpha.fromMap((map['apt']! as Map).cast<String, dynamic>())),
      goo: pulumi.Input.fromValue(OSPolicyResourceRepositoryResourceGooRepositoryResponseOsconfigV1alpha.fromMap((map['goo']! as Map).cast<String, dynamic>())),
      yum: pulumi.Input.fromValue(OSPolicyResourceRepositoryResourceYumRepositoryResponseOsconfigV1alpha.fromMap((map['yum']! as Map).cast<String, dynamic>())),
      zypper: pulumi.Input.fromValue(OSPolicyResourceRepositoryResourceZypperRepositoryResponseOsconfigV1alpha.fromMap((map['zypper']! as Map).cast<String, dynamic>())),
    );
  }
}
