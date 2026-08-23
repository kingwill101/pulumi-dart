// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_nfs_access_point_access_policy.dart';

/// Result data returned by getNfsAccessPoint.
class GetNfsAccessPointResult {
  final List<GetNfsAccessPointAccessPolicy> accessPolicies;
  final String createdAt;
  final String? id;
  final bool isDefault;
  final String? name;
  final String path;
  final String? shareId;
  final String status;
  final String updatedAt;
  final String vpcId;

  /// Creates a new [GetNfsAccessPointResult].
  /// [accessPolicies] Required.
  /// [createdAt] Required.
  /// [id] Optional.
  /// [isDefault] Required.
  /// [name] Optional.
  /// [path] Required.
  /// [shareId] Optional.
  /// [status] Required.
  /// [updatedAt] Required.
  /// [vpcId] Required.
  const GetNfsAccessPointResult({
    required this.accessPolicies,
    required this.createdAt,
    this.id,
    required this.isDefault,
    this.name,
    required this.path,
    this.shareId,
    required this.status,
    required this.updatedAt,
    required this.vpcId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessPolicies': pulumi.Input.encodeList<GetNfsAccessPointAccessPolicy, Map<String, dynamic>>(accessPolicies, (value) => value.toMap()),
      'createdAt': createdAt,
      'id': ?id,
      'isDefault': isDefault,
      'name': ?name,
      'path': path,
      'shareId': ?shareId,
      'status': status,
      'updatedAt': updatedAt,
      'vpcId': vpcId,
    };
  }

  factory GetNfsAccessPointResult.fromMap(Map<String, dynamic> map) {
    return GetNfsAccessPointResult(
      accessPolicies: pulumi.Input.decodeList<GetNfsAccessPointAccessPolicy>(map['accessPolicies']!, (value) => GetNfsAccessPointAccessPolicy.fromMap((value as Map).cast<String, dynamic>())),
      createdAt: map['createdAt'] as String,
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      isDefault: map['isDefault'] as bool,
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      path: map['path'] as String,
      shareId: (() { final guardedValue = map['shareId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      status: map['status'] as String,
      updatedAt: map['updatedAt'] as String,
      vpcId: map['vpcId'] as String,
    );
  }
}
