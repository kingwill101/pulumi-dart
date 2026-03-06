// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ospolicy_resource_repository_resource_apt_repository_response.dart';
import 'ospolicy_resource_repository_resource_goo_repository_response.dart';
import 'ospolicy_resource_repository_resource_yum_repository_response.dart';
import 'ospolicy_resource_repository_resource_zypper_repository_response.dart';

/// A resource that manages a package repository.
class OSPolicyResourceRepositoryResourceResponse {
  /// An Apt Repository.
  final pulumi.Input<OSPolicyResourceRepositoryResourceAptRepositoryResponse> apt;
  /// A Goo Repository.
  final pulumi.Input<OSPolicyResourceRepositoryResourceGooRepositoryResponse> goo;
  /// A Yum Repository.
  final pulumi.Input<OSPolicyResourceRepositoryResourceYumRepositoryResponse> yum;
  /// A Zypper Repository.
  final pulumi.Input<OSPolicyResourceRepositoryResourceZypperRepositoryResponse> zypper;

  /// Creates a new [OSPolicyResourceRepositoryResourceResponse].
  /// [apt] An Apt Repository.
  /// [goo] A Goo Repository.
  /// [yum] A Yum Repository.
  /// [zypper] A Zypper Repository.
  const OSPolicyResourceRepositoryResourceResponse({
    required this.apt,
    required this.goo,
    required this.yum,
    required this.zypper,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apt': pulumi.Input.mapInputValue<OSPolicyResourceRepositoryResourceAptRepositoryResponse, Map<String, dynamic>>(apt, (value) => value.toMap()),
      'goo': pulumi.Input.mapInputValue<OSPolicyResourceRepositoryResourceGooRepositoryResponse, Map<String, dynamic>>(goo, (value) => value.toMap()),
      'yum': pulumi.Input.mapInputValue<OSPolicyResourceRepositoryResourceYumRepositoryResponse, Map<String, dynamic>>(yum, (value) => value.toMap()),
      'zypper': pulumi.Input.mapInputValue<OSPolicyResourceRepositoryResourceZypperRepositoryResponse, Map<String, dynamic>>(zypper, (value) => value.toMap()),
    };
  }

  factory OSPolicyResourceRepositoryResourceResponse.fromMap(Map<String, dynamic> map) {
    return OSPolicyResourceRepositoryResourceResponse(
      apt: pulumi.Input.fromValue(OSPolicyResourceRepositoryResourceAptRepositoryResponse.fromMap((map['apt']! as Map).cast<String, dynamic>())),
      goo: pulumi.Input.fromValue(OSPolicyResourceRepositoryResourceGooRepositoryResponse.fromMap((map['goo']! as Map).cast<String, dynamic>())),
      yum: pulumi.Input.fromValue(OSPolicyResourceRepositoryResourceYumRepositoryResponse.fromMap((map['yum']! as Map).cast<String, dynamic>())),
      zypper: pulumi.Input.fromValue(OSPolicyResourceRepositoryResourceZypperRepositoryResponse.fromMap((map['zypper']! as Map).cast<String, dynamic>())),
    );
  }
}

