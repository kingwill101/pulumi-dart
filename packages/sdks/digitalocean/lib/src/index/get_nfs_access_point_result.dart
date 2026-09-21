// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_nfs_access_point_access_policy.dart';

/// Result data returned by getNfsAccessPoint.
class GetNfsAccessPointResult {
  final List<GetNfsAccessPointAccessPolicy>? accessPolicies;
  final String? createdAt;
  final String? id;
  final bool? isDefault;
  final String? name;
  final String? path;
  final String? shareId;
  final String? status;
  final String? updatedAt;
  final String? vpcId;

  /// Creates a new [GetNfsAccessPointResult].
  /// [accessPolicies] Optional.
  /// [createdAt] Optional.
  /// [id] Optional.
  /// [isDefault] Optional.
  /// [name] Optional.
  /// [path] Optional.
  /// [shareId] Optional.
  /// [status] Optional.
  /// [updatedAt] Optional.
  /// [vpcId] Optional.
  const GetNfsAccessPointResult({
    this.accessPolicies,
    this.createdAt,
    this.id,
    this.isDefault,
    this.name,
    this.path,
    this.shareId,
    this.status,
    this.updatedAt,
    this.vpcId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessPolicies': ?(() { final guardedValue = accessPolicies; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetNfsAccessPointAccessPolicy, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'createdAt': ?createdAt,
      'id': ?id,
      'isDefault': ?isDefault,
      'name': ?name,
      'path': ?path,
      'shareId': ?shareId,
      'status': ?status,
      'updatedAt': ?updatedAt,
      'vpcId': ?vpcId,
    };
  }

  factory GetNfsAccessPointResult.fromMap(Map<String, dynamic> map) {
    return GetNfsAccessPointResult(
      accessPolicies: (() { final guardedValue = map['accessPolicies']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetNfsAccessPointAccessPolicy>(guardedValue, (value) => GetNfsAccessPointAccessPolicy.fromMap((value as Map).cast<String, dynamic>())); })(),
      createdAt: (() { final guardedValue = map['createdAt']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      isDefault: (() { final guardedValue = map['isDefault']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      path: (() { final guardedValue = map['path']; if (guardedValue == null) return null; return guardedValue as String; })(),
      shareId: (() { final guardedValue = map['shareId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return guardedValue as String; })(),
      updatedAt: (() { final guardedValue = map['updatedAt']; if (guardedValue == null) return null; return guardedValue as String; })(),
      vpcId: (() { final guardedValue = map['vpcId']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
