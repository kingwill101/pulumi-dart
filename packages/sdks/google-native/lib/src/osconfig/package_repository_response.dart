// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'apt_repository_response.dart';
import 'goo_repository_response.dart';
import 'yum_repository_response.dart';
import 'zypper_repository_response.dart';

/// A package repository.
class PackageRepositoryResponse {
  /// An Apt Repository.
  final pulumi.Input<AptRepositoryResponse> apt;
  /// A Goo Repository.
  final pulumi.Input<GooRepositoryResponse> goo;
  /// A Yum Repository.
  final pulumi.Input<YumRepositoryResponse> yum;
  /// A Zypper Repository.
  final pulumi.Input<ZypperRepositoryResponse> zypper;

  /// Creates a new [PackageRepositoryResponse].
  /// [apt] An Apt Repository.
  /// [goo] A Goo Repository.
  /// [yum] A Yum Repository.
  /// [zypper] A Zypper Repository.
  const PackageRepositoryResponse({
    required this.apt,
    required this.goo,
    required this.yum,
    required this.zypper,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apt': pulumi.Input.mapInputValue<AptRepositoryResponse, Map<String, dynamic>>(apt, (value) => value.toMap()),
      'goo': pulumi.Input.mapInputValue<GooRepositoryResponse, Map<String, dynamic>>(goo, (value) => value.toMap()),
      'yum': pulumi.Input.mapInputValue<YumRepositoryResponse, Map<String, dynamic>>(yum, (value) => value.toMap()),
      'zypper': pulumi.Input.mapInputValue<ZypperRepositoryResponse, Map<String, dynamic>>(zypper, (value) => value.toMap()),
    };
  }

  factory PackageRepositoryResponse.fromMap(Map<String, dynamic> map) {
    return PackageRepositoryResponse(
      apt: pulumi.Input.fromValue(AptRepositoryResponse.fromMap((map['apt']! as Map).cast<String, dynamic>())),
      goo: pulumi.Input.fromValue(GooRepositoryResponse.fromMap((map['goo']! as Map).cast<String, dynamic>())),
      yum: pulumi.Input.fromValue(YumRepositoryResponse.fromMap((map['yum']! as Map).cast<String, dynamic>())),
      zypper: pulumi.Input.fromValue(ZypperRepositoryResponse.fromMap((map['zypper']! as Map).cast<String, dynamic>())),
    );
  }
}

